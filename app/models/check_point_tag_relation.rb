class CheckPointTagRelation < ApplicationRecord
  belongs_to :check_point
  belongs_to :tag
end
