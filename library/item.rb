# GitHUb /wdi-october-2016
class Item

  attr_reader :title

  @@num_total       = 0
  @@num_checked_out = 0 # => class variable

  # Create 'Class Method', Reader (class attr_reader)
    def self.num_total
      @@num_total
    end

    def self.num_checked_out
      @@num_checked_out
    end

# Create instence variables
  def initialize(title) # => plain variable
    @title = title # => instence variable
    @checked_out = false
    @@num_total += 1
  end

  def checked_out
    if @checked_out
      puts 'Item is out!'
    else
      @checked_out = true
      @@num_checked_out += 1
    end
  end

  def chcked_in
    if @checked_in
      puts 'Item is already in!'
    else
      @checked_in = false
      @@num_checked_in -= 1
    end
  end
end
