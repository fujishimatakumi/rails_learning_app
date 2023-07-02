class CheckPointCategoryRelation < ApplicationRecord
  belongs_to :check_point
  belongs_to :category
end
