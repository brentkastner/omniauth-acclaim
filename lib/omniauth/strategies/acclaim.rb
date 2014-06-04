require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Acclaim < OmniAuth::Strategies::OAuth2
      option :name, "acclaim"

      option :client_options, {
          :site => 'https://api.youracclaim.com',
          :authorize_path => '/oauth/authorize'
      }

      uid { raw_info['id'] }

      info do
        {
            :email => raw_info['email']
        }
      end

      extra do
        {
            'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get('v1/users/self.json').parsed
      end


    end
  end
end

OmniAuth.config.add_camelization 'acclaim', 'Acclaim'