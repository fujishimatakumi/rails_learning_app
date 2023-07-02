class Lycoris < ApplicationRecord
	has_many :general_setting_lycoris_relations
	has_many :general_settings, through: :general_setting_lycoris_relations

	has_many :lycoris_category_relations
	has_many :categories, through: :lycoris_category_relations

	has_many :lycoris_tag_relations
	has_many :tags, through: :lycoris_tag_relations
end
