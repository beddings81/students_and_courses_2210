class Student
  attr_reader :scores

  def initialize(name)
    @scores = []
  end

  def student
    student = {name: "Morgan", age: 21}
  end

  def name
    student.values[0]
  end

  def log_score(score)
    @scores << score
  end

  def grade
    scores.sum.to_f / scores.count
  end
end
