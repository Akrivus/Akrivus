def render_svelte_app env
  path = Rails.root.join('public/index.html')
  $svelte = File.read(path) if $svelte.nil?
  return [200, {}, $svelte]
end

Rails.application.routes.draw do
  resources :personas
  
  get 'admin' => 'trestle/dashboard#index'
  get 'health' => 'rails/health#show', as: :rails_health_check

  root to: -> (env) { render_svelte_app(env) }
end
