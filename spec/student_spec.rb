require './lib/student'

RSpec.describe Student do
  student = Student.new({name: "Morgan", age: 21})

  it 'exist' do
    student = Student.new({name: "Morgan", age: 21})

    expect(student).to be_a(Student)
  end

  it 'has a name' do
    student = Student.new({name: "Morgan", age: 21})

    expect(student.name).to eq("Morgan")
  end

  it 'has test scores' do
    student = Student.new({name: "Morgan", age: 21})

    student.log_score(89)
    student.log_score(78)

    expect(student.scores).to eq([89, 78])
  end

  it 'has an average' do
    student = Student.new({name: "Morgan", age: 21})

    student.log_score(89)
    student.log_score(78)
    expect(student.grade).to eq(83.5)
  end
end
