class NegativePromptTagRelation < ApplicationRecord
  belongs_to :negative_prompt
  belongs_to :tag
end
