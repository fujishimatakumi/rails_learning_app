class LoraCategoryRelation < ApplicationRecord
  belongs_to :lora
  belongs_to :category
end
