module AttachmentConcern

  extend ActiveSupport::Concern #this line shows us we're creating a concern

  included do
    # associations
    belongs_to :attachable, polymorphic: true
  end
end