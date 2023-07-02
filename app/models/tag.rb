class Tag < ApplicationRecord
  has_many :general_setting_tag_relations
	has_many :general_settings, through: :general_setting_tag_relations

	has_many :prompt_tag_relations
	has_many :prompts, through: :prompt_tag_relations

	has_many :negative_prompt_tag_relations
	has_many :negative_prompts, through: :negative_prompt_tag_relations

	has_many :check_point_tag_relations
	has_many :check_points, through: :check_point_tag_relations

	has_many :lora_tag_relations
	has_many :loras, through: :lora_tag_relations

	has_many :lycoris_tag_relations
	has_many :lycorises, through: :lycoris_tag_relations
end
