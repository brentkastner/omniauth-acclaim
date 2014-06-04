require 'omniauth/strategies/oauth'

module OmniAuth
  module Strategies
    class Acclaim < OmniAuth::Strategies::OAuth
      option :name, "acclaim"

      option :client_options, {
          :site => 'http://localhost:4000',
          :authorize_url => 'http://localhost:4000/oauth/authorize'
      }

      uid { raw_info['id'] }

      info do
        {
            :name => raw_info['name'],
            :email => raw_info['email']
        }
      end

      extra do
        {
            'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/oauth/me.json').parsed
      end


    end
  end
end

OmniAuth.config.add_camelization 'acclaim', 'Acclaim'