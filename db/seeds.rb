# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Vegetable.destroy_all

csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
filepath    = 'db/saisonnalite_fruits_legumes.csv'

CSV.foreach(filepath, csv_options) do |row|
    Vegetable.create(label: row[0],
      month: Array.new.push(row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8], row[9], row[10], row[11], row[12]))
  end
