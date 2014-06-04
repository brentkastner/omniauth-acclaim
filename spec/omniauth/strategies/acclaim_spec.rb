require 'spec_helper'

describe "OmniAuth::Strategies::Acclaim" do
  subject do
    OmniAuth::Strategies::Acclaim.new(nil, @options || {})
  end

  it 'should add a camelization for itself' do
    OmniAuth::Utils.camelize('acclaim').should == 'Acclaim'
  end

  context 'client options' do
    it 'has correct Acclaim site' do
      subject.options.client_options.site.should eq('https://api.youracclaim.com')
    end

    it 'has correct authorize url' do
      subject.options.client_options.authorize_path.should eq('/oauth/authorize')
    end
  end
end