class CheckPoint < ApplicationRecord
	has_many :general_settings

	has_many :check_point_category_relations
	has_many :categories, through: :check_point_category_relations

	has_many :check_point_tag_relations
	has_many :tags, through: :check_point_tag_relations
end
