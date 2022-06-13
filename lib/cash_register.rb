class CashRegister
    attr_accessor :total, :discount, :items, :previous_total
    def initialize employee_discount = 0
        @total = 0
        @discount = employee_discount
        @items =[]
    end

    def add_item item, price, quantity =1
        quantity.times{
            self.items << item
        }
        self.previous_total = self.total
        self.total += price * quantity
    end


    def apply_discount
        if discount == 0
            return "There is no discount to apply."
        end
        self.total -= (self.total * self.discount) /100
        "After the discount, the total comes to $"+self.total.to_s+"."
    end
    def void_last_transaction
        self.total = self.previous_total
    end
end
  