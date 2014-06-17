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

  context '#uid' do
    before :each do
      subject.stub(:raw_info) { { 'data' => { 'id' => '123'} } }
    end

    it 'returns the id from raw_info' do
      subject.uid.should eq('123')
    end
  end

  context 'returns info hash conformant with omniauth auth hash schema' do
    before :each do
      subject.stub(:raw_info) { { 'data' => {} } }
    end

    context 'and therefore has all the necessary fields' do
      it {subject.info.should have_key :email}
      it {subject.info.should have_key :first_name}
      it {subject.info.should have_key :last_name}
    end
  end
end