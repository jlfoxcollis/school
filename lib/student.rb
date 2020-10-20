class Student
  attr_reader :student, :scores

  def initialize(student)
    @student = student
    @scores = []
  end

  def log_score(score)
    @scores << score
  end

  def grade
    (scores.sum.to_f / scores.count).round(1)
  end

end
