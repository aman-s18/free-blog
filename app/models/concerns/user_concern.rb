module UserConcern
  extend ActiveSupport::Concern #this line shows us we're creating a concern

  included do
    # associations
    has_one :profile, dependent: :destroy
    has_many :articles, dependent: :destroy

    # scopes
    scope :ordered_articles, -> { articles.order(created_at: :desc) }
  end

end