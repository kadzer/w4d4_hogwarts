require('pry-byebug')
require_relative('../models/student')
require_relative('sql_runner')

student1 = Student.new({'first_name' => 'Harry', 'last_name' => 'Potter', 'house' => 'Gryffindor', 'age' => 11})
student1.save()

binding.pry
nil
