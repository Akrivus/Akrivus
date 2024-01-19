def render_svelte_body
  path = Rails.root.join('public/index.html')
  $svelte = File.read(path) if $svelte.nil?
  return $svelte
end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "admin" => "trestle/dashboard#index"

  namespace :api do
    namespace :v1 do
      resources :positions, only: %i[index] do
        get :skills, on: :member
        get :projects, on: :member
      end
      resources :projects, only: %i[index] do
        get :skills, on: :member
      end
      resources :skills, only: %i[index] do
        get :positions, on: :member
        get :projects, on: :member
      end
    end
  end

  root to: -> (env) { [200, {}, [render_svelte_body]] }
end
