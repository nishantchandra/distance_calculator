class CreditCard
   def initialize (card_number)
    unless (card_number.to_s.length == 16 )
        raise ArgumentError.new("Please enter a card number with exactly 16 integars")
    end
    @card_number = card_number.to_s
    @total_sum = 0
  end
 
  def check_card
    @new_Array = []
    @new_Array = @card_number.split(//)
    @new_Array.map! { |x| x.to_i }
    @new_Array.each_with_index.map { |x,y| 
      if (y % 2 == 0) 
        x = 2*x
      else
        x
      end  
     }  
    @new_Array.map! {|x| 
      if (x > 9)
        x = x-9
      else
        x
      end  
      }
  
    @new_Array.each { |x| 
        @total_sum = @total_sum + x
    }  
    @total_sum % 10 == 0
  end 
end