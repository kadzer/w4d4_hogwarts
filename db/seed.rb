require('pry-byebug')
require_relative('../models/house')
require_relative('../models/student')
require_relative('sql_runner')

house1 = House.new({'name' => 'Gryffindor', 'logo' =>'https://goo.gl/jQfTtM'})
house1.save

house2 = House.new({'name' => 'Hufflepuff', 'logo' =>'https://goo.gl/mtPfac'})
house2.save

house3 = House.new({'name' => 'Ravenclaw', 'logo' =>'https://goo.gl/2XhCmP'})
house3.save

house4 = House.new({'name' => 'Slytherin', 'logo' =>'https://goo.gl/vEe2dE'})
house4.save

student1 = Student.new({'first_name' => 'Harry', 'last_name' => 'Potter', 'house_id' => house1.id, 'age' => 11})
student1.save

binding.pry
nil
