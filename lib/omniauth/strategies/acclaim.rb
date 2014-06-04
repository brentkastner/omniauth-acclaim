require 'omniauth/strategies/oauth'

module OmniAuth
  module Strategies
    class Acclaim < OmniAuth::Strategies::OAuth
      option :name, "acclaim"

      option :client_options, {
          :site => 'https://api.youracclaim.com',
          :request_token_path => '/oauth/token',
          :access_token_path => '/oauth/token',
          :authorize_url => 'https://www.youracclaim.com/oauth/authorize'
      }
    end
  end
end

OmniAuth.config.add_camelization 'acclaim', 'Acclaim'