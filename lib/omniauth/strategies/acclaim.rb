require 'omniauth/strategies/oauth'

module OmniAuth
  module Strategies
    class Acclaim < OmniAuth::Strategies::OAuth
      option :name, "acclaim"

      option :client_options, {
          :site => 'https://api.youracclaim.com',
          :request_token_path => '/oauth/requestToken',
          :access_token_path => '/oauth/accessToken',
          :authorize_url => 'https://www.youracclaim.com/oauth/authenticate'
      }
    end
  end
end

OmniAuth.config.add_camelization 'acclaim', 'Acclaim'