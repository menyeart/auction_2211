require './lib/item'
require './lib/attendee'

describe 'attendee' do
  it "exists" do
    attendee = Attendee.new(name: 'Megan', budget: '$50')
    expect(attendee).to be_an_instance_of(Attendee)
  end




end
