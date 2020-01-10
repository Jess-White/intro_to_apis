require 'http'

response = HTTP.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json")
# pp response.parse
# puts response.body.readpartial
employees = response.parse
employees.each do |employee|
  if employee["annual_salary"].to_i >= 50000
    p employee["annual_salary"]
  else 
    p "too low!"
  end 
end 

employees.each do |employee|
  puts "Name: #{employee["name"]}"
  puts employee["job titles"]
  puts employee["department"]
  p employee
  puts "=" * 30
end 

if employee["salary_or_hourly"] == "Salary"
  puts "Salary: #{employee["annual salary"]}"
else
  puts "Typical Hours: #{employee["typical_hours"]}"
  puts "Hourly Rate: #{{employee["hourly_rate"]}
  rate_per_week = employee["typical_hours"].to_i * * employee["hourly_rate].to_f"
  puts "Estimated Salary: #{ rate_per_week * 50 }"
end 

puts 
puts "=" * 30
puts 