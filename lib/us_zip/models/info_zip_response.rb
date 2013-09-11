module UsZip
  class InfoZipResponse < Otis::Model
    root_key to: [:get_info_by_zip_result, :new_data_set, :table],
             as: 'location'

    attribute :location, UsZip::Location
  end
end