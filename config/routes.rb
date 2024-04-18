def render_svelte_app env
  path = Rails.root.join('public/index.html')
  $svelte = File.read(path) if $svelte.nil?
  return [200, {}, $svelte]
end

Rails.application.routes.draw do
  get 'admin' => 'trestle/dashboard#index'
  get 'health' => 'rails/health#show', as: :rails_health_check

  get 'games' => 'games#index'
  get 'games/:slug' => 'games#show'
  
  get 'games/:slug/Build/:slug.data' => 'games#unity_data_gz'
  get 'games/:slug/Build/:slug.framework.js' => 'games#unity_framework_js_gz'
  get 'games/:slug/Build/:slug.wasm' => 'games#unity_wasm_gz'

  root to: -> (env) { render_svelte_app(env) }
end
