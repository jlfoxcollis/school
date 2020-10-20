require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/student'
require './lib/course'

class CourseTest < MiniTest::Test

  def test_the_course
    course = Course.new("Calculus", 2)
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})


    assert_equal "Calculus", course.name
    assert_equal 2, course.capacity
    assert_equal [], course.students
    assert_equal false, course.full?

    course.enroll(student1)
    course.enroll(student2)

    assert_equal ["Morgan", "Jordan"], course.students.map {|student| student.student[:name]}
    assert_equal true, course.full?

  end


end
