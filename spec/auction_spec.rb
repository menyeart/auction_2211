require './lib/item'
require './lib/attendee'
require './lib/auction'

describe 'auction' do
  it "exists" do
    auction = Auction.new
    expect(auction).to be_an_instance_of(Auction)
  end


end

