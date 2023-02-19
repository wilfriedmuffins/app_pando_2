class Measure < ApplicationRecord
    scope :filter_by_measure_type, -> (measure_type) { where("measure_type like ?", "#{measure_type}%")}

    def self.ransackable_attributes(auth_object = nil)
        ["brand", 
        "created_at", 
        "date", 
        "establishment_address", 
        "establishment_city", 
        "establishment_id", 
        "establishment_latitude", 
        "establishment_longitude", 
        "establishment_name", 
        "establishment_postcode", 
        "id", 
        "measure_float", 
        "measure_type", 
        "room_name", 
        "serial_number", 
        "updated_at"]
    end
end
