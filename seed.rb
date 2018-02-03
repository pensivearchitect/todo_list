prng = Random.new

1000.times do |n|
  task = Task.create(title: 'a task', priority: prng.rand(10))
  next if n == 1
  task.tasks << Task.find(task.id - 1)
end
