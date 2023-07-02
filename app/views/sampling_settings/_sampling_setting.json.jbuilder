json.extract! sampling_setting, :id, :general_setting_id, :method_id, :step, :height, :width, :batch_count, :batch_size, :cfg_scale, :seed, :script_id, :face_recover_flg, :generate_tiling_flg, :high_quality_setting_id, :created_at, :updated_at
json.url sampling_setting_url(sampling_setting, format: :json)
