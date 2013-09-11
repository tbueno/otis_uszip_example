module UsZip
  class Location < Otis::Model
    [:city, :state, :zip, :area_code, :time_zone].each {|attr| attribute attr, String }
  end
end