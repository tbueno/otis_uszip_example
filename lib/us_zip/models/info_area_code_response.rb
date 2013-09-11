module UsZip
  class InfoAreaCodeResponse < Otis::Model
    root_key to: [:get_info_by_area_code_result, :new_data_set, :table],
             as: 'locations'
    attribute :locations, Array[Location]
  end
end