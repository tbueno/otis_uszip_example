require 'spec_helper'

describe 'integration tests' do

  let(:routes) do
    UsZip::Map
  end

  let(:client) { Otis::SoapClient.new(routes, "http://www.webservicex.net/uszip.asmx?WSDL") }

  describe 'get_info_by_zip' do
    it 'gets the location information' do
      response = call 'get_info_by_zip', message: { "USZip" => "90210"}
      response.location.city.should == 'Beverly Hills'
    end
  end

  describe 'get_info_by_city' do
    it 'gets the location information' do
      response = call 'get_info_by_city', message: { "USCity" => "Beverly Hills"}
      response.locations.first.state.should == 'CA'
    end
  end

  describe 'get_info_by_state' do
    it 'gets the location information' do
      response = call 'get_info_by_state', message: { "USState" => "CA"}
      response.locations.first.city.should == 'Wheatland'
    end
  end

  describe 'get_info_by_area_code' do
    it 'gets the location information' do
      response = call 'get_info_by_area_code', message: { "USAreaCode" => "201"}
      response.locations.first.state.should == 'NJ'
    end
  end

  private
  def call(method, params)
    VCR.use_cassette(method) do
      client.send method, params
    end
  end
end
