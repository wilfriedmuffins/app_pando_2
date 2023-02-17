class CreateMeasures < ActiveRecord::Migration[7.0]
  def change
 create_table :measures do |t|
   t.string :measure_type
   t.integer :measure_float
   t.datetime :date
   t.string :room_name
   t.string :brand 
   t.string :serial_number
   t.integer :establishment_id 
   t.string :establishment_name 
   t.string :establishment_city  
   t.integer :establishment_postcode
   t.string :establishment_address
   t.integer :establishment_latitude 
   t.integer :establishment_longitude 

   t.timestamps
 end
  end
end
