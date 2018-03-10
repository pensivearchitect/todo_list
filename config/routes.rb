Rails.application.routes.draw do
  root 'application#index'
  get '/tasks', to: 'tasks#index', constraints: ->(req) { req.format == :json }
end
