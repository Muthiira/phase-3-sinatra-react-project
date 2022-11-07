puts "🌱 Seeding spices..."

# Seed your database here
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
Project.destroy_all
Dev.destroy_all
Language.destroy_all

puts "creating devs..."

5.times do
	Dev.create(name: Faker::Name.name, image_url: Faker::Alphanumeric.alpha(number: 10), github_url: Faker::Alphanumeric.alpha(number: 10), age: rand(20..60))
   end

puts "done creating devs!"

puts "creating projects..."

35.times do
	Project.create(project_description: Faker::Lorem.sentence)
   end

puts "done creating projects!"

puts "Creating reviews..."

2.times do 
	Dev.all.each do |dev|
		Language.create(
			language: Faker::Lorem.word,
			experience: rand(1..9),
			dev_id: dev.id,
			project_id: Project.all.pluck(:id).sample
		  )
	end
end


puts "✅ Done seeding!"
