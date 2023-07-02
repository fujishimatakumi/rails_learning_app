json.extract! general_setting, :id, :prompt_id, :negative_prompt_id, :sampling_setting_id, :checkpoint_id, :lora_id, :lycoris_id, :category_id, :tag_id, :discription, :created_at, :updated_at
json.url general_setting_url(general_setting, format: :json)
