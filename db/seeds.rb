# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

time = Time.parse("09:00")
for i in (0..31) do
  PartTime.create(start_at: time, duration: 15)
  time = time + 15.minutes
end

('A'..'D').each do |letter|
  partner = Partner.create(name: "合伙人#{letter}")
  partner.meetings.create!(date: Date.current, part_time_id: rand(1..33))
end

"甲、乙、丙、丁、戊、己、庚、辛".split('、').each do |letter|
  Pioneer.create(name: "创业者-#{letter}")
end
