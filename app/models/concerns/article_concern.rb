module ArticleConcern

  extend ActiveSupport::Concern #this line shows us we're creating a concern

  included do
    # associations
    belongs_to :user
    has_many :attachments, as: :attachable, dependent: :destroy
    accepts_nested_attributes_for :attachments
  end
end