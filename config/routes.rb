Rails.application.routes.draw do

  if Rails.env == "development"
    resources :rivalries
    resources :people
  else
    resources :rivalries , defaults: { format: :json }
    resources :people, defaults: { format: :json }
  end

  root 'dashboards#index', defaults: { format: :json }
end
