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

  it "can add items to the items list" do
    auction = Auction.new
    item1 = Item.new('Chalkware Piggy Bank')
    item2 = Item.new('Bamboo Picture Frame')
    expect(auction.items).to eq([])
    auction.add_item(item1)
    auction.add_item(item2)
    expect(auction.items).to eq([item1, item2])
  end

  it "can list the names of items in the item list" do
    auction = Auction.new
    item1 = Item.new('Chalkware Piggy Bank')
    item2 = Item.new('Bamboo Picture Frame')
    auction.add_item(item1)
    auction.add_item(item2)
    expect(auction.item_names).to eq(["Chalkware Piggy Bank", "Bamboo Picture Frame"])
  end



end

