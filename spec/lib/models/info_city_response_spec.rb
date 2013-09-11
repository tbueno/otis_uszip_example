require 'spec_helper'

describe UsZip::InfoCityResponse do

  let(:params) do
    {get_info_by_city_result:
      {new_data_set:
        {table: [{city:"Beverly Hills", state: "CA", zip: "90209", area_code: "310", time_zone:"P"},
                 {:city=>"Beverly Hills", :state=>"CA", :zip=>"90210", :area_code=>"310", :time_zone=>"P"}],
         :@xmlns=>""}
      },
      :@xmlns=>"http://www.webserviceX.NET"
    }


  end

  describe 'attributes' do
    subject { described_class.new(params).locations.first}

    its(:city) { should == "Beverly Hills"}
    its(:state) { should == 'CA'}
    its(:zip) { should == '90209'}
    its(:area_code) { should == '310'}
    its(:time_zone) { should == 'P'}
  end

end
