require 'spec_helper'

describe UsZip::InfoZipResponse do

  let(:params) do
    {get_info_by_zip_response:
      {get_info_by_zip_result:
        {new_data_set:
          {table:
            {city: "Beverly Hills", state: "CA", zip: "90210", area_code: "310", time_zone:"P"},
            :@xmlns=>""}
          },
        :@xmlns=>"http://www.webserviceX.NET"
      }
    }
  end

  describe 'attributes' do
    subject { described_class.new(params).location}

    its(:city) { should == "Beverly Hills"}
    its(:state) { should == 'CA'}
    its(:zip) { should == '90210'}
    its(:area_code) { should == '310'}
    its(:time_zone) { should == 'P'}
  end

end
