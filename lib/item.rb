class Item
  attr_reader :name, :bids, :closed

  def initialize(name)
    @name = name
    @bids = Hash.new(0)
    @closed = false
  end

  def add_bid(attendee, price)
    @bids[attendee] = price if @closed == false
  end

  def current_high_bid
    @bids.max_by{|k,v| v}[1]
  end

  def close_bidding
    @closed = true
  end


end