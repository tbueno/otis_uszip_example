module UsZip
  class InfoCityResponse < Otis::Model
    root_key to: [:get_info_by_city_result, :new_data_set, :table],
             as: 'locations'
    attribute :locations, Array[Location]
  end
end