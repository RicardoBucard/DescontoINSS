Rails.application.routes.draw do
  resources :proponentes
  root to: "proponentes#index"
end
