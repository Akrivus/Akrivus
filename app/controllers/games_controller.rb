class GamesController < ApplicationController
  before_action :set_game, except: %i[index]
  helper_method :game

  def index
    
  end

  def show
    
  end
  
  def unity_data_gz
    content_type 'application/octet-stream'
    send_file gz_path('data')
  end

  def unity_framework_js_gz
    content_type 'application/javascript'
    send_file gz_path('framework.js')
  end

  def unity_wasm_gz
    content_type 'application/wasm'
    send_file gz_path('wasm')
  end

  private

  def set_game
    @game = Game.find_by_slug(params[:slug])
  end

  def game
    @game
  end

  def gz_path file
    response.headers['Content-Encoding'] = 'gzip'

    Rails.root.join("public/games/#{game.slug}/Build/#{game.slug}.#{file}.gz")
  end
end
