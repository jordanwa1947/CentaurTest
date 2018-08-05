class Dragon
  attr_accessor :name, :color, :rider, :hungry, :hunger
  # try changing this back to attr_reader
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    # i'd also avoid making this an attribute, but actually a method
    # called def hungry. I'll explain more there
    @hunger = 3
    # try changing this to "meals_count" or something
    # then, check out my notes in `def eat`
  end
  
  def hungry
    return true if @meals_count < 3
    false
  end

  def eat
    # have this += the @meals_count variable by one
    
    if @hunger > 0
       @hunger -= 1
       @hungry = false if @hunger == 0
    else
      @hungry = false
      "Not hungry"
    end
  end
end
