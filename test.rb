require 'minitest/autorun'
class BugTest < Minitest::Test
  def test_association_stuff
    task = Task.create!
    dependency = Task.create!
    task.tasks << dependency
    assert_equal 1, task.tasks.first.id
  end
end
