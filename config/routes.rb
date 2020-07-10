Rails.application.routes.draw do
  resource :github_webhooks, only: :create, defaults: { formats: :json }
  get 'home/index'
  root to: 'home#index'
end
