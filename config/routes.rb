Rails.application.routes.draw do
  resources :funcionarios
  resources :proponentes
  root to: "proponentes#index"

  post 'calc/desconto/', to: "calc#desconto" 
end
