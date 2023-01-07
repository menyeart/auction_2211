require './lib/item'
require './lib/attendee'
require './lib/auction'

describe 'auction' do
  it "exists" do
    auction = Auction.new
    expect(auction).to be_an_instance_of(Auction)
  end

  it "starts with an empty list of items" do
    auction = Auction.new
    expect(auction.items).to eq([])
  end


end

