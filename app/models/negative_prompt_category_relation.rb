class NegativePromptCategoryRelation < ApplicationRecord
  belongs_to :negative_prompt
  belongs_to :category
end
