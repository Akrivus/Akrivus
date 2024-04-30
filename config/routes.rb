def render_svelte_app env
  path = Rails.root.join('public/index.html')
  $svelte = File.read(path) if $svelte.nil?
  return [200, {}, $svelte]
end

Rails.application.routes.draw do
  resources :personas
  
  get 'admin' => 'trestle/dashboard#index'
  get 'health' => 'rails/health#show', as: :rails_health_check

  get 'games' => 'games#index'
  get 'games/:slug' => 'games#show'
  
  get 'games/:slug/Build/unity.data.gz' => 'games#unity_data_gz'
  get 'games/:slug/Build/unity.framework.js.gz' => 'games#unity_framework_js_gz'
  get 'games/:slug/Build/unity.wasm.gz' => 'games#unity_wasm_gz'

  root to: -> (env) { render_svelte_app(env) }
end
