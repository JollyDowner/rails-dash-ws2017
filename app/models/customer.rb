class Customer < ApplicationRecord
  has_many :orders
    
    
    
    
    def compute_all_orders
        total_price =0;
        orders.each do |order|
            total_price+=order.compute_total
        end
        
        return total_price
        
    end
    
    
end
