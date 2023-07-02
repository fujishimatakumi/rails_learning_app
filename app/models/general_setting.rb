class GeneralSetting < ApplicationRecord
	has_many :general_setting_prompt_relations
	has_many :prompts, through: :general_setting_prompt_relations

	has_many :general_setting_negative_prompt_relations
	has_many :negative_prompts, through: :general_setting_negative_prompt_relations

	has_many :generalsetting_lora_relations
	has_many :loras, through: :generalsetting_lora_relations

	has_many :general_setting_lycoris_relations
	has_many :lycorises, through: :general_setting_lycoris_relations

	has_many :general_setting_category_relations
	has_many :categories, through: :general_setting_category_relations

	has_many :general_setting_tag_relations
	has_many :tags, through: :general_setting_tag_relations

	has_one :sampling_setting

	belongs_to :check_point
end
