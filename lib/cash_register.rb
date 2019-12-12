require 'pry'
class CashRegister
    attr_accessor :discount, :total, :items , :last_item
    
    def initialize(discount = 0)
        @total  = 0
        @discount = discount
        @items = []
    end
    def add_item(title, price,amount = 1)
        self.total +=  amount * price
        self.last_item = amount * price
        amount.times do
        self.items << title
        end
    end
    def apply_discount
        if discount != 0
        self.total *= 1-(self.discount.to_f/100)
        return "After the discount, the total comes to $#{self.total.to_i}."
        else
            "There is no discount to apply."
        end

         #binding.pry
    end
    def void_last_transaction
        self.total -=self.last_item
        if total == 0.to_f
            return 0.to_f
        end
    end




    
        

        
    
end

