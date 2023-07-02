class NegativePrompt < ApplicationRecord
	has_many :general_setting_negative_prompt_relations
	has_many :general_settings, through: :general_setting_negative_prompt_relations

	has_many :negative_prompt_category_relations
	has_many :categories, through: :negative_prompt_category_relations

	has_many :negative_prompt_tag_relations
	has_many :tags, through: :negative_prompt_tag_relations
end
