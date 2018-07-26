Rails.application.routes.draw do
  root 'application#index'
  resources :tasks, constraints: ->(req) { req.format == :json }
  scope 'api' do
    scope 'v1' do
      resources :tasks, :chunks
    end
  end
end
