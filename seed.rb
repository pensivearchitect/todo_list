require 'faker'
prng = Random.new

200.times do
  Task.create(title: Faker::HarryPotter.quote, priority: prng.rand(10))
end
