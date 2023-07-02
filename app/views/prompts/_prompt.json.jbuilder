json.extract! prompt, :id, :general_setting_id, :text, :translation_text, :prompt_category_id, :prompt_tag_id, :created_at, :updated_at
json.url prompt_url(prompt, format: :json)
