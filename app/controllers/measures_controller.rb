class MeasuresController < ApplicationController
    def index
            @query = Measure.ransack(params[:q])
            @measures = @query.result(distinct: true)
         
            @measures_co2 = @measures.filter_by_measure_type("CO2")
            @measures_tmp = @measures.filter_by_measure_type("TMP")
            @measures_voct = @measures.filter_by_measure_type("VOCT")
            @measures_hum = @measures.filter_by_measure_type("HUM")
    
            # @measures = Measure.all
            # @measures_co2 = @measures.filter_by_measure_type("CO2")
            # @measures_tmp = @measures.filter_by_measure_type("TMP")
            # @measures_voct = @measures.filter_by_measure_type("VOCT")
            # @measures_hum = @measures.filter_by_measure_type("HUM")

    end
end