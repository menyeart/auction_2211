class Attendee
  attr_reader

  def initialize(attributes)
    @name = attributes[:name]
    @budget = attributes[:budget]
  end


end