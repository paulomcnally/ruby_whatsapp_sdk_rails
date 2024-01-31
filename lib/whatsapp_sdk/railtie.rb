# frozen_string_literal: true

module WhatsappSdk
  # WhatsappSdk::Railtie
  class Railtie < Rails::Railtie
    config.whatsapp_sdk = ActiveSupport::OrderedOptions.new

    initializer 'whatsapp_sdk.configure' do
      WhatsappSdk.configure do |config|
        config.access_token = Rails.application.config.whatsapp_sdk.access_token || ENV['META_ACCESS_TOKEN']
        config.api_version = Rails.application.config.whatsapp_sdk.api_version || ENV['META_API_VERSION'] || 'v19.0'
      end
    end
  end
end