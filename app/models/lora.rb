class Lora < ApplicationRecord
	has_many :general_setting_lora_relations
	has_many :general_settings, through: :general_setting_lora_relations

	has_many :lora_category_relations
	has_many :categories, through: :lora_category_relations

	has_many :lora_tag_relations
	has_many :tags, through: :lora_tag_relations
end
