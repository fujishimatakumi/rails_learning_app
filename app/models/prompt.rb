class Prompt < ApplicationRecord
	has_many :general_setting_prompt_relations
	has_many :general_settings, through: :general_setting_prompt_relations

	has_many :prompt_category_relations
	has_many :categories, through: :prompt_category_relations

	has_many :prompt_tag_relations
	has_many :tags, through: :prompt_tag_relations
end
