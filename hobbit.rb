class Hobbit
  attr_reader :name, 
  # i changed this to an attr_reader, and all worked. 
  # i've found myself rarely needing attr_accessors in the work I do
  # if you use the @ sign before the value, you can overwriter it. 
  # i don't know why. ¯\_(ツ)_/¯ 
              :disposition, 
              :age, 
              :adult, 
              :old, 
              :has_ring, 
              :is_short
  
  def initialize(name, disposition = "homebody")
    @name = name
    @disposition = disposition
    @age = 0
    @adult = false
    @old = false
    @is_short = true
    @has_ring = determine_ring_status
    # the @has_ring attribute calls a custom function
    # a wrote that will determine if it should be true or false.
    # this leads to a bit "cleaner" of an initialize method.
  end
  
  def determine_ring_status
    return true if name == "Frodo"
    # the 'return' statement ENDS the function if "name" is "frodo"
    # if that condition isn't met, it returns the last line of 
    # the method, which is "false". 
    false
  end

  def celebrate_birthday
    @age += 1
    @adult = true if age == 33
    @old = true if age == 101
    # if you're just "reading" an attribute, and you've given it an 
    # attr_reader or attr_accessor, you don't need the @ sign to get the value
    # you _do_ need the @ sign if you want to CHANGE the value
  end
end