class MeasuresController < ApplicationController
    def index
        @measures = Measure.all
        @measures_co2 = Measure.filter_by_measure_type("CO2")
        @measures_tmp = Measure.filter_by_measure_type("TMP")
        @measures_voct = Measure.filter_by_measure_type("VOCT")
        @measures_hum = Measure.filter_by_measure_type("HUM")
    end
end