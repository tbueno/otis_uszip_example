require 'otis'

module UsZip

   require 'us_zip/models/location'
   require 'us_zip/models/info_zip_response'
   require 'us_zip/models/info_city_response'
   require 'us_zip/models/info_state_response'
   require 'us_zip/models/info_area_code_response'

  Map = Otis::Map.new({
    :get_info_by_zip => UsZip::InfoZipResponse,
    :get_info_by_state => UsZip::InfoStateResponse,
    :get_info_by_city => UsZip::InfoCityResponse,
    :get_info_by_area_code => UsZip::InfoAreaCodeResponse
  })


end