Rails.application.routes.draw do
  mount_ember_app :frontend, to: '/'
  scope 'api' do
    scope 'v1' do
      resources :tasks, :chunks
    end
  end
end
