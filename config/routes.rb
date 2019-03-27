Rails.application.routes.draw do

  resources :rps_api, only: [:create]
  root to: "static#landing"
end
