require 'spec_helper'

describe "OmniAuth::Strategies::Acclaim" do
  subject do
    OmniAuth::Strategies::Acclaim.new(nil, @options || {})
  end

  it 'should add a camelization for itself' do
    OmniAuth::Utils.camelize('acclaim').should == 'Acclaim'
  end

  context 'client options' do
    it 'has correct LinkedIn site' do
      subject.options.client_options.site.should eq('https://api.youracclaim.com')
    end

    it 'has correct request token path' do
      subject.options.client_options.request_token_path.should eq('/oauth/requestToken')
    end

    it 'has correct access token path' do
      subject.options.client_options.access_token_path.should eq('/oauth/accessToken')
    end

    it 'has correct authorize url' do
      subject.options.client_options.authorize_url.should eq('https://www.youracclaim.com/oauth/authenticate')
    end
  end
end