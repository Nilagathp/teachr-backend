# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Teacher.create(name: "Ms. Snyder")
Teacher.create(name: "Ms. Abril")
Teacher.create(name: "Mr. Schulman")
Teacher.create(name: "Ms. Kang")
Teacher.create(name: "Ms. Seither")
Teacher.create(name: "Ms. Barlow")
Teacher.create(name: "Mr. Daise")
Teacher.create(name: "Mr. Meister")
Teacher.create(name: "Mr. Crockett")
Teacher.create(name: "Mr. Raber")
Teacher.create(name: "Mr. Cobb")
Teacher.create(name: "Mr. Catherman")

User.create(email: "snyder@flatiron.com", password_digest: BCrypt::Password.create('snyder'), role: "teacher", person_type: "Teacher", person_id: 1)
User.create(email: "abril@flatiron.com", password_digest: BCrypt::Password.create('abril'), role: "teacher", person_type: "Teacher", person_id: 2)
User.create(email: "schulman@flatiron.com", password_digest: BCrypt::Password.create('schulman'), role: "teacher", person_type: "Teacher", person_id: 3)
User.create(email: "kang@flatiron.com", password_digest: BCrypt::Password.create('kang'), role: "teacher", person_type: "Teacher", person_id: 4)
User.create(email: "seither@flatiron.com", password_digest: BCrypt::Password.create('seither'), role: "teacher", person_type: "Teacher", person_id: 5)
User.create(email: "barlow@flatiron.com", password_digest: BCrypt::Password.create('barlow'), role: "teacher", person_type: "Teacher", person_id: 6)
User.create(email: "daise@flatiron.com", password_digest: BCrypt::Password.create('daise'), role: "teacher", person_type: "Teacher", person_id: 7)
User.create(email: "meister@flatiron.com", password_digest: BCrypt::Password.create('meister'), role: "teacher", person_type: "Teacher", person_id: 8)
User.create(email: "crockett@flatiron.com", password_digest: BCrypt::Password.create('crockett'), role: "teacher", person_type: "Teacher", person_id: 9)
User.create(email: "raber@flatiron.com", password_digest: BCrypt::Password.create('raber'), role: "teacher", person_type: "Teacher", person_id: 10)
User.create(email: "cobb@flatiron.com", password_digest: BCrypt::Password.create('cobb'), role: "teacher", person_type: "Teacher", person_id: 11)
User.create(email: "catherman@flatiron.com", password_digest: BCrypt::Password.create('catherman'), role: "teacher", person_type: "Teacher", person_id: 12)

Course.create(name: "Life Science", teacher_id: 1)
Course.create(name: "Physical Science", teacher_id: 1)
Course.create(name: "Earth Science", teacher_id: 5)
Course.create(name: "Life Science", teacher_id: 5)
Course.create(name: "Pre-Algebra", teacher_id: 9)
Course.create(name: "Algebra", teacher_id: 9)
Course.create(name: "Algebra", teacher_id: 10)
Course.create(name: "Geometry", teacher_id: 10)
Course.create(name: "U.S. History", teacher_id: 3)
Course.create(name: "Geography", teacher_id: 3)
Course.create(name: "U.S. History", teacher_id: 6)
Course.create(name: "World Cultures", teacher_id: 4)
Course.create(name: "English Language", teacher_id: 2)
Course.create(name: "English Language", teacher_id: 8)
Course.create(name: "English Literature", teacher_id: 2)
Course.create(name: "English Literature", teacher_id: 8)
Course.create(name: "Band", teacher_id: 7)
Course.create(name: "Music", teacher_id: 7)
Course.create(name: "Art", teacher_id: 6)
Course.create(name: "Computer Science", teacher_id: 11)
Course.create(name: "Chorus", teacher_id: 12)

300.times do |i|
  Student.create(name: Faker::Name.name, grade: [6, 7, 8].sample)
end

def makeUserForStudent(id)
  last_name = Student.find(id).name.split(" ")[1].downcase
  studentEmail = last_name + "@flatiron.com"
  password = last_name
  User.create(email: studentEmail, password_digest: BCrypt::Password.create(password), role: "student", person_type: "Student", person_id: id)
end

Student.all.each{|student| makeUserForStudent(student.id)}

def makeStudentCourses(student_id)
  science_course_id = [1, 2, 3, 4].sample
  math_course_id = [5, 6, 7, 8].sample
  history_course_id = [9, 10, 11, 12].sample
  english_course_id = [13, 14, 15, 16].sample
  other_course_id = [17, 18, 19, 20, 21].sample
  StudentCourse.create(student_id: student_id, course_id: science_course_id)
  StudentCourse.create(student_id: student_id, course_id: math_course_id)
  StudentCourse.create(student_id: student_id, course_id: history_course_id)
  StudentCourse.create(student_id: student_id, course_id: english_course_id)
  StudentCourse.create(student_id: student_id, course_id: other_course_id)
end

Student.all.each{|student|
  makeStudentCourses(student.id)
}

####################SEEDED TO HERE#####################################

# def makeAssignmentsForCourse(course_id)
#   20.times do |i|
#     name = Faker::Lorem.sentence(1, true, 4).chop
#     points = [10, 15, 20, 25, 30].sample
#     category = [0, 1, 2].sample
#     directions = Faker::Lorem.paragraph(1, true, 3)
#     content = 10.times.map { Faker::Lorem.paragraph(8, false, 12) }.join("\n\n")
#     questions = Faker::Lorem.questions(3)
#     Assignment.create(name: name, category: category, points: points, course_id: course_id, directions: directions, content: content, questions: questions)
#   end
# end
#
# Course.all.each{|course| makeAssignmentsForCourse(course.id)}
