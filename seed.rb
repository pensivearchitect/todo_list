prng = Random.new

20.times do
  task = Task.create(title: 'a task', priority: prng.rand(10))
  # next if task.id == 1
  # task.tasks << Task.find(task.id - 1)
end
