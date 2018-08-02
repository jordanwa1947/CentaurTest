class Hobbit
  attr_accessor :name, :disposition, :age, :adult, :old, :has_ring, :is_short
  def initialize(name, disposition = "homebody")
  @name = name
  @disposition = disposition
  @age = 0
  @adult = false
  @old = false
  @is_short = true
    if name == "Frodo"
      @has_ring = true
    else
      @has_ring = false
    end
  end

  def celebrate_birthday
    @age += 1
    @adult = true if @age == 33
    @old = true if @age == 101
  end
end
