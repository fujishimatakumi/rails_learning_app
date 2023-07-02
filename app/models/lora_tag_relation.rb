class LoraTagRelation < ApplicationRecord
  belongs_to :lora
  belongs_to :tag
end
