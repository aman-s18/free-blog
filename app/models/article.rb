class Article < ApplicationRecord
  include ArticleConcern
  self.inheritance_column = :_type_disabled
end
