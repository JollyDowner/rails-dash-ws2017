class Order < ApplicationRecord
  belongs_to :customer
  has_many :line_items
  has_many :pumpkins, through: :line_items
  # has_many(:pumpkins, {through: :line_items})
    
    
    
    def compute_total
        price=0
        line_items.each do |line_item|
            price+=line_item.pumpkin.price*line_item.amount
        end
        return price
             
        
        
    end
    
end
