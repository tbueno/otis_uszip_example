module UsZip
  class InfoStateResponse < Otis::Model
    root_key to: [:get_info_by_state_result, :new_data_set, :table],
             as: 'locations'
    attribute :locations, Array[Location]
  end
end