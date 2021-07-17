Rails.application.routes.draw do
  resources :proponentes
  root to: "proponentes#index"

  get 'calc/desconto/:salario', to: "calc#desconto" 
end
