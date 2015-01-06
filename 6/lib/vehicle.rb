class Vehicle
  def initialize(name, price)
    @name = name
    @price = price
  end

  def show_content
    puts "\n#{self.class} Details \nName: #{@name} \nPrice: #{@price}\nDealer: #{@dealer}"
  end

  def change_price(new_price)
    @price  = new_price
  end

end


