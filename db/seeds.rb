User.create!
20.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@test.com"
  password = "password"
  User.create!(name:  "name",
               email: "email",
               password:              "password",
               password_confirmation: "password")
end

# users = User.order(:created_at).take(5)
# 3.times do
#   content = faker::lorem.sentence(5)
#   users.each { |user| user.projects.create!(content: content) }
# end

# 3.times do
#   content = faker::lorem.sentence(1)
#   users.each { |user| user.tasks.create!(content: content) }
# end 
