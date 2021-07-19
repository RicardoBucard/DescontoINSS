Rails.application.routes.draw do
  resources :proponentes
  root to: "proponentes#index"

  post 'calc/desconto/', to: "calc#desconto" 
end
