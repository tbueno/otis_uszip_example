require 'spec_helper'

describe UsZip::Location do

  describe 'basic attributes from hash' do
    let(:params) do
      {city: 'Los Angeles', state: 'CA', area_code: '310', time_zone: 'P'}
    end
    subject { described_class.new(params)}

    its(:city)      { should == 'Los Angeles' }
    its(:state)     { should == 'CA'          }
    its(:area_code) { should == '310'         }
    its(:time_zone) { should == 'P'           }
  end

end
