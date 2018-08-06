class Centaur
  attr_reader :name, :breed, :actions, :cranky, :standing, :laying
  # ^^ changing this to a reader
  def initialize(name, breed)
    @name = name
    @breed = breed
    @actions = 0
    @cranky = false
    @standing = true
    @laying = false
  end

  def shoot
    if cranky == false && standing == true
      # removing the `@` signs again anywhere 
      # the variable is just being read
      @actions += 1
      @cranky = true if actions >= 3
      "Twang!!!"
      # a method returns the last line of the evaluated statement
      # the tests will pass even with out the `p` statements everywhere. 
      # notice how I've removed the `p` signs in this method.
      # do the same for all the other methods
    else
      "NO!"
    end
  end

  def run
    # figure out how to remove the max number of `@` signs
    # from this method
    if @cranky == false && @standing == true
      @actions += 1
      @cranky = true if @actions >= 3
      p "Clop clop clop clop!!!"
    else
      p "NO!"
    end
  end

  def potion
    # I slimmed this potion down a bit. all the tests still pass.
    return "NO!" if laying
    @cranky = true if actions <= 0
  end
  
  
  # def potion
  #   # remove these @ signs as well
  #   if @standing == true
  #     if @actions > 0
  #     @actions = 0
  #     @cranky = false
  #     else
  #       @cranky = true
  #       p "Feeling sick"
  #     end
  #   else
  #     p "NO!"
  #   end
  # end

  def stand_up
    @standing = true
    @laying = false
  end

  def sleep
    if @standing == true
      p "NO!"
    else
      @actions = 0
      @cranky = false
    end
  end

  def lay_down
    @standing = false
    @laying = true
  end
end
