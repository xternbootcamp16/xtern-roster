Rails.application.routes.draw do
  resources :rivalries, defaults: { format: :json }
  resources :people, defaults: { format: :json }

  root 'people#index', defaults: { format: :json }
end
