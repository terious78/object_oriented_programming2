# Exercise 2

# Basic sales tax = 10%, except books, food and
#                        medical products
# Import duty = 5%, all imported goods with no
#                   exemptions

# Solution should have two classes : 'Item' and 'Receipt'

  class Item

    attr_reader :name
    attr_writer :quantity, :price, :code

    def initialize(quantity, name, price, code)
      @quantity = quantity
      @name     = name
      @price    = price
      @code     = code # => To define goods to get taxes
    end

    def all_goods
      if @code == 0 # => except books, food, and medical
        @quantity * @price * 1
      elsif @code == 1
        @quantity * @price * 1.10 # => all other then excepted
      else
        @quantity * @price * 1.05
      end
    end

  end

  class Receipt < Item

#    puts "Sub Total $#{Item.num_total}"
#    puts "Sales Taxes #{add all goods taxes}"
#    puts "Total #{add all prices after taxes}"

  end
  # Example 1.
  #a1 = Item.new(1, 'Jean', 39.99, 1)
  #a2 = Item.new(1, 'Book', 15.99, 0)
  #a3 = Item.new(1, 'Chocolate Bar', 1.99, 0)

  #bill1 = [a1, a2, a3]

  # Example 2.
  #b1 = Item.new(1, 'Imported - Perfume', 50.99, 2)
  #b2 = Item.new(1, 'Imported - Box of Chocolate', 19.99, 2)

  #bill2 = [b1, b2]
  #
