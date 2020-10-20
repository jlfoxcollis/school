require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/student'

class StudentTest < MiniTest::Test

  def test_it_exists
    student = Student.new({name: "Morgan", age: 21})

    assert_instance_of Student, student
    assert_equal "Morgan", student.student[:name]
    assert_equal 21, student.student[:age]
    assert_equal [], student.scores

    student.log_score(89)
    student.log_score(78)

    assert_equal [89, 78], student.scores
    assert_equal 83.5, student.grade

  end
end
