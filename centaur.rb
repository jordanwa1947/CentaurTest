class Centaur
  attr_accessor :name, :breed, :actions, :cranky, :standing, :laying
  def initialize(name, breed)
    @name = name
    @breed = breed
    @actions = 0
    @cranky = false
    @standing = true
    @laying = false
  end

  def shoot
    if @cranky == false && @standing == true
      @actions += 1
      @cranky = true if @actions >= 3
      p "Twang!!!"
    else
      p "NO!"
    end
  end

  def run
    if @cranky == false && @standing == true
      @actions += 1
      @cranky = true if @actions >= 3
      p "Clop clop clop clop!!!"
    else
      p "NO!"
    end
  end

  def potion
    if @standing == true
      if @actions > 0
      @actions = 0
      @cranky = false
      else
        @cranky = true
        p "Feeling sick"
      end
    else
      p "NO!"
    end
  end

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
