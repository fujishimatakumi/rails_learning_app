Rails.application.routes.draw do
  resources :lycoris
  resources :loras
  resources :check_points
  resources :sampling_settings
  resources :categories
  resources :extention_categories
  resources :extention_tags
  resources :tags
  resources :prompt_tags
  resources :prompt_categories
  resources :negative_prompts
  resources :prompts
  resources :general_settings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
