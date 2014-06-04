require 'omniauth/strategies/oauth'

module OmniAuth
  module Strategies
    class Acclaim < OmniAuth::Strategies::OAuth
      option :name, "acclaim"

      option :client_options, {
          :site => 'https://localhost:4000',
          :request_token_path => '/oauth/token',
          :access_token_path => '/oauth/token',
          :authorize_url => 'https://localhost:4000/oauth/authorize'
      }
    end
  end
end

OmniAuth.config.add_camelization 'acclaim', 'Acclaim'