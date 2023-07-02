class PromptCategoryRelation < ApplicationRecord
  belongs_to :prompt
  belongs_to :category
end
