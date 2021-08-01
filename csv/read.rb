require "csv"
require "pry"

# array = CSV.read("okinawa_area.csv")
# p array
# puts "1行目に対応する配列"
# p array[0]
# puts "2行目に対応する配列"
# p array[1]

list = CSV.read("okinawa_area.csv", headers: true).map do |row|
  { id: row["id"].to_i, country: row["郡"], city: row["市区町村"], area: row["面積"].to_f }
end

p list.find { |data| data[:id] == 6 }

p list.find { |data| data[:city] == "南大東村" }

p list.find_all { |data| data[:area] >= 100 }

p list.find { |data| data[:country] == "中頭郡" }

nakagami_list = list.select { |data| data[:country] == "中頭郡" }
p nakagami_list

p nakagami_list.map { |data| data[:city] }

puts nakagami_list.sum { |data| data[:area] }

