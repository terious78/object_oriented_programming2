# Exercise 1

# 4. Both the instructor and the student have names.
#    We know that instructors and students are both people.
#    Create a parent 'Person class' that
#    contains the attribute name and
#    an initializer to set the name.
class Person

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  # 5. 'instructor' and 'student' should also be able
  #    to do a greeting,
  #    like "Hi, my name is #{name}".
  #    Where's the best place to put this common method?
    def greeting
      "Hi, my name is #{@name}."
    end
end

# 1. Let's start by creating two classes:
#    called 'Student' and 'Instructor'.

# 2. 'Student class' has a method called 'learn'
#    that outputs "I get it!".
class Student < Person

  def learn
    "I get it!"
  end

end

# 3. 'Instructor class' has a method called
#    'teach' that outputs
#    "Everything in Ruby is an Object!".
class Instructor < Person

  def teach
    "Everything in Ruby is an Object!"
  end

end

# 6. Create an instance of 'Instructor'
#    whose name is "Chris" and call his greeting.
chris = Instructor.new('Chris')

# 7. Create an instance of 'Student'
#    whose name is "Cristina" and call her greeting.
cristina = Student.new('Cristina')

# 8. Call 'teach method' on your instructor instance
#    and 'learn method' on your student.
#    Next, call 'teach method' on your student instance.
#    What happens? Why doesn't that work?
#    Leave a comment in your program explaining why.
puts chris.teach
puts cristina.learn

chris.learn # => undefined method 'teach' for
#             <Student:0x007fda809e7ea8 @name="Cristina">
cristina.teach # => Undefined method 'learn' for
#             <Instructor:0x007fda809fc240 @name="Chris">
