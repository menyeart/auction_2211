class Auction
  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def item_names
    @items.map { |item| item.name }
  end

  def unpopular_items
    @items.find_all { |item| item.bids == {} }
  end

  def potential_revenue
    total_potential_revenue = 0
    @items.each do |item|
      total_potential_revenue += item.current_high_bid if item.bids != {}
    end
    total_potential_revenue
  end

  def bidders
    (@items - unpopular_items).map { |item| item.bids.keys}.flatten.uniq
  end




end