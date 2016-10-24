# Vocab words need to know
# Array - Ordered, 0 based integer-indexed colloections of any object.
#       - film = ['title', 'title1', 'title2']
# Hash - Collection of unique keys and their values.
#      - film-title = { 'title' => 'abc',...so on}
# Method - Giving algorithm, and less lines to maintain
#        - First to think is Inputs and outputs
# Class - Contain the functions and
# instance -
# instance variable
# instance method
# reader / getter
# writer / setter
# attr_reader
# attr_writer
# attr_accessor
#
# '.class' on any object, it gives class name
# Everything is object in Ruby
#
# Inheritance chain
#
#state is private until i make to public
class Person # => must start with Uppercase

  attr_reader :year_of_birth # => This is same as Line 16-18
  attr_writer :job_title # => This is same as Line 20-23
  attr_accessor :first_name, :last_name # => Reader & Writer

  def initialize(first_name, last_name, year_of_birth) # => states
    @first_name    = first_name # => instence variable
    @last_name     = last_name # => instence variable
    @year_of_birth = year_of_birth # => instence variable
    @job_title     = 'Baby'
  end

  # Behavior
  def full_name
    "#{@first_name} #{@last_name}"
  end

  def greetings # => instences Method
    "Hi, my name is, #{@full_name}"
  end

end

  class Professor < Person

    def full_name
      "Prof. #{@first_name} #{@last_name}"
# =   "Prof. #{super}"
    end

    def teach(students)
      students.each {|student| student.learn}
    end

  end

  class Student < Person

    attr_reader :knowledge_level # => only instences of students get

    def initialize(first_name, last_name, year_of_birth)
#'super' is method caller
      super(first_name, last_name, year_of_birth) # => run same method in parent class
      @knowledge_level = rand(10) # => gives random #s
    end

    def learn
      @knowledge_level += 1
    end
  end

# Object   | Instence              |  Class
#----------+-----------------------+-----------------
# state    | instence variable (@) |  class variable (@@)
# behavior | instence method       |  class method
#          | (def metho_name)      | (def self.method_name)
