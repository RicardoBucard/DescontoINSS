Rails.application.routes.draw do
  devise_for :admins
  resources :funcionarios do 
    collection do
      get 'relatorio_salarial'
    end
  end
  resources :proponentes
  root to: "proponentes#index"

  post 'calc/desconto/', to: "calc#desconto"
end
