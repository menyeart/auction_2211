require './lib/item'

describe 'item' do
  it "exists" do
    item = Item.new('Chalkware Piggy Bank')
    expect(item).to be_an_instance_of(Item)
  end



end