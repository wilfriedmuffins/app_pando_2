
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'csv'

def add_csv_file(data)
    csv_text = File.read(Rails.root.join('lib', 'seeds', data))
    csv = CSV.parse(csv_text, :headers => true, :encoding => 'UTF-8')
    csv.each do |row|
        Measure.create(
            :date => row['@timestamp'],
            :measure_type => row['measure_type'],
            :measure_float => row['measure_float'],
            :room_name => row['room_name'],
            :brand => row['brand'],
            :serial_number => row['serial_number'],
            :establishment_id => row['establishment_id'],
            :establishment_name => row['establishment_name'],
            :establishment_city => row['establishment_city'],
            :establishment_postcode => row['establishment_postcode'],
            :establishment_address => row['establishment_address'],
            :establishment_latitude => row['establishment_latitude'],
            :establishment_longitude => row['establishment_longitude']
        )
    end

    puts "There are now #{Measure.count} rows in the transactions table"
    
end

add_csv_file('20211101_B3D54FD00007B2 (2).csv')
add_csv_file('20211101_B3D54FD000088A (2).csv')
add_csv_file('20211101_B3D54FD000088F (2).csv')