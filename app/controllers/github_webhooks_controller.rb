class GithubWebhooksController < ActionController::Base
  include GithubWebhook::Processor

  def github_push(payload)
    system('git pull && bundle')
    $RESTART = Thread.new do
      sleep 30
      exec("passenger-config restart-app /var/www/app")
    end
  end

  private

  def webhook_secret(payload)
    ENV['GITHUB_WEBHOOK_SECRET']
  end
end