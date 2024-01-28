def render_svelte
  path = Rails.root.join('public/index.html')
  $svelte = File.read(path) if $svelte.nil?
  return $svelte
end

Rails.application.routes.draw do
  resources :experiences
  resources :skills
  resources :stories

  get "up" => "rails/health#show", as: :rails_health_check
  get "admin" => "trestle/dashboard#index"

  root to: -> (env) { [200, {}, [render_svelte]] }
end
