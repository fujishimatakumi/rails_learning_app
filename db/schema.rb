# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_07_02_100706) do

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.text "label"
    t.text "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "check_point_category_relations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "check_point_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_check_point_category_relations_on_category_id"
    t.index ["check_point_id"], name: "index_check_point_category_relations_on_check_point_id"
  end

  create_table "check_point_tag_relations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "check_point_id", null: false
    t.bigint "tag_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["check_point_id"], name: "index_check_point_tag_relations_on_check_point_id"
    t.index ["tag_id"], name: "index_check_point_tag_relations_on_tag_id"
  end

  create_table "check_points", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "general_setting_id"
    t.text "name"
    t.text "discription"
    t.text "download_url"
    t.bigint "extention_category_id"
    t.bigint "extention_tag_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "extention_categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.text "label"
    t.text "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "extention_tags", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.text "label"
    t.text "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "general_setteing_category_relations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "general_setting_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_general_setteing_category_relations_on_category_id"
    t.index ["general_setting_id"], name: "index_general_setteing_category_relations_on_general_setting_id"
  end

  create_table "general_setteing_licoris_relations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "general_setting_id", null: false
    t.bigint "lycoris_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["general_setting_id"], name: "index_general_setteing_licoris_relations_on_general_setting_id"
    t.index ["lycoris_id"], name: "index_general_setteing_licoris_relations_on_lycoris_id"
  end

  create_table "general_setteing_lora_relations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "general_setting_id", null: false
    t.bigint "lora_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["general_setting_id"], name: "index_general_setteing_lora_relations_on_general_setting_id"
    t.index ["lora_id"], name: "index_general_setteing_lora_relations_on_lora_id"
  end

  create_table "general_setteing_prompt_relations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "general_setting_id", null: false
    t.bigint "prompt_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["general_setting_id"], name: "index_general_setteing_prompt_relations_on_general_setting_id"
    t.index ["prompt_id"], name: "index_general_setteing_prompt_relations_on_prompt_id"
  end

  create_table "general_settings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "prompt_id"
    t.bigint "negative_prompt_id"
    t.bigint "sampling_setting_id"
    t.bigint "checkpoint_id"
    t.bigint "lora_id"
    t.bigint "lycoris_id"
    t.bigint "category_id"
    t.bigint "tag_id"
    t.text "discription"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gs_negative_prompt_relations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "general_setting_id", null: false
    t.bigint "negative_prompt_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["general_setting_id"], name: "index_gs_negative_prompt_relations_on_general_setting_id"
    t.index ["negative_prompt_id"], name: "index_gs_negative_prompt_relations_on_negative_prompt_id"
  end

  create_table "lora_category_relations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "lora_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_lora_category_relations_on_category_id"
    t.index ["lora_id"], name: "index_lora_category_relations_on_lora_id"
  end

  create_table "lora_tag_relations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "lora_id", null: false
    t.bigint "tag_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lora_id"], name: "index_lora_tag_relations_on_lora_id"
    t.index ["tag_id"], name: "index_lora_tag_relations_on_tag_id"
  end

  create_table "loras", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "general_setting_id"
    t.text "name"
    t.text "discription"
    t.text "download_url"
    t.bigint "extention_category_id"
    t.bigint "extention_tag_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lycoris", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "general_setting_id"
    t.text "name"
    t.text "discription"
    t.text "download_url"
    t.bigint "extention_category_id"
    t.bigint "extention_tag_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lycoris_category_relations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "lycoris_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_lycoris_category_relations_on_category_id"
    t.index ["lycoris_id"], name: "index_lycoris_category_relations_on_lycoris_id"
  end

  create_table "lycoris_tag_relations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "lycoris_id", null: false
    t.bigint "tag_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lycoris_id"], name: "index_lycoris_tag_relations_on_lycoris_id"
    t.index ["tag_id"], name: "index_lycoris_tag_relations_on_tag_id"
  end

  create_table "negative_prompt_category_relations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "negative_prompt_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_negative_prompt_category_relations_on_category_id"
    t.index ["negative_prompt_id"], name: "index_negative_prompt_category_relations_on_negative_prompt_id"
  end

  create_table "negative_prompt_tag_relations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "negative_prompt_id", null: false
    t.bigint "tag_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["negative_prompt_id"], name: "index_negative_prompt_tag_relations_on_negative_prompt_id"
    t.index ["tag_id"], name: "index_negative_prompt_tag_relations_on_tag_id"
  end

  create_table "negative_prompts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "general_setting_id"
    t.text "text"
    t.text "translation_text"
    t.bigint "prompt_category_id"
    t.bigint "prompt_tag_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prompt_categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.text "label"
    t.text "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prompt_category_relations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "prompt_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_prompt_category_relations_on_category_id"
    t.index ["prompt_id"], name: "index_prompt_category_relations_on_prompt_id"
  end

  create_table "prompt_tag_relations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "prompt_id", null: false
    t.bigint "tag_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["prompt_id"], name: "index_prompt_tag_relations_on_prompt_id"
    t.index ["tag_id"], name: "index_prompt_tag_relations_on_tag_id"
  end

  create_table "prompt_tags", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.text "label"
    t.text "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prompts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "general_setting_id"
    t.text "text"
    t.text "translation_text"
    t.bigint "prompt_category_id"
    t.bigint "prompt_tag_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sampling_settings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "general_setting_id"
    t.bigint "method_id"
    t.bigint "step"
    t.integer "height"
    t.integer "width"
    t.integer "batch_count"
    t.integer "batch_size"
    t.text "cfg_scale"
    t.bigint "seed"
    t.bigint "script_id"
    t.boolean "face_recover_flg"
    t.boolean "generate_tiling_flg"
    t.bigint "high_quality_setting_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tags", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.text "label"
    t.text "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "check_point_category_relations", "categories"
  add_foreign_key "check_point_category_relations", "check_points"
  add_foreign_key "check_point_tag_relations", "check_points"
  add_foreign_key "check_point_tag_relations", "tags"
  add_foreign_key "general_setteing_category_relations", "categories"
  add_foreign_key "general_setteing_category_relations", "general_settings"
  add_foreign_key "general_setteing_licoris_relations", "general_settings"
  add_foreign_key "general_setteing_licoris_relations", "lycoris", column: "lycoris_id"
  add_foreign_key "general_setteing_lora_relations", "general_settings"
  add_foreign_key "general_setteing_lora_relations", "loras"
  add_foreign_key "general_setteing_prompt_relations", "general_settings"
  add_foreign_key "general_setteing_prompt_relations", "prompts"
  add_foreign_key "gs_negative_prompt_relations", "general_settings"
  add_foreign_key "gs_negative_prompt_relations", "negative_prompts"
  add_foreign_key "lora_category_relations", "categories"
  add_foreign_key "lora_category_relations", "loras"
  add_foreign_key "lora_tag_relations", "loras"
  add_foreign_key "lora_tag_relations", "tags"
  add_foreign_key "lycoris_category_relations", "categories"
  add_foreign_key "lycoris_category_relations", "lycoris", column: "lycoris_id"
  add_foreign_key "lycoris_tag_relations", "lycoris", column: "lycoris_id"
  add_foreign_key "lycoris_tag_relations", "tags"
  add_foreign_key "negative_prompt_category_relations", "categories"
  add_foreign_key "negative_prompt_category_relations", "negative_prompts"
  add_foreign_key "negative_prompt_tag_relations", "negative_prompts"
  add_foreign_key "negative_prompt_tag_relations", "tags"
  add_foreign_key "prompt_category_relations", "categories"
  add_foreign_key "prompt_category_relations", "prompts"
  add_foreign_key "prompt_tag_relations", "prompts"
  add_foreign_key "prompt_tag_relations", "tags"
end
