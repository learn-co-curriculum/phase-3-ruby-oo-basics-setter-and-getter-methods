require 'pry'

class Dog
  attr_accessor :name, :breed
 def name=(name)
    @name = name
  end

  def breed=(breed)
    @breed = breed
  end
end

fido = Dog.new
fido.name=("Fido")
fido.breed=("Beagle")
