class Measure < ApplicationRecord
    scope :filter_by_measure_type, -> (measure_type) { where("measure_type like ?", "#{measure_type}%")}
end
