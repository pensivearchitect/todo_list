Rails.application.routes.draw do
  root 'application#index'
  resources :tasks, constraints: ->(req) { req.format == :json }
end
