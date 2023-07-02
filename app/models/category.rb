class Category < ApplicationRecord
	has_many :general_setting_category_relations
	has_many :general_settings, through: :general_setting_category_relations

	has_many :prompt_category_relations
	has_many :prompts, through: :prompt_category_relations

	has_many :negative_prompt_category_relations
	has_many :negative_prompts, through: :negative_prompt_category_relations

	has_many :check_point_category_relations
	has_many :check_points, through: :check_point_category_relations

	has_many :lora_category_relations
	has_many :loras, through: :lora_category_relations

	has_many :lycoris_category_relations
	has_many :lycorises, through: :lycoris_category_relations
end
