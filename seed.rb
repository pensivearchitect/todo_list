require 'faker'
prng = Random.new

200.times do |n|
  task = Task.create priority: prng.rand(10), due_date: Time.zone.today - rand(10_000), completion_time: prng.rand(1000)
  chunk = Chunk.create(title: Faker::HarryPotter.quote)
  task.chunks << chunk
  next if n == 1
  parent = Chunk.order('RANDOM()').limit(1).first
  parent.add_child chunk
  task.save
end
