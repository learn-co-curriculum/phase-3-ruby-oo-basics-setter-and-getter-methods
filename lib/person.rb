require 'pry'

class Person
  attr_accessor :name, :job
  def name=(name)
    @name = name
  end

  def job=(job)
    @job = job
  end
end

beyonce = Person.new
beyonce.name=("Beyonce")
beyonce.job=("Singer")
