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
    @array = []
    @zedd = []  
    @new_Array = @card_number.split(//)
    @new_Array.map! { |x| x.to_i }
    @new_Array.each_with_index { |item,index| 
      if (index % 2 == 0) 
        @array << (2 * item)
      else
        item = item
      end  
     }  
    @new_Array.map! {|x| 
      if (x > 9)
        x = x-9
      else
        x = x
      end  
      }
    @array.map! {|x| 
      if (x > 9)
        x = x-9
      else
        x = x
      end  
      }

    @zedd = @new_Array + @array
    @zedd.each do |x|
      @totalsum = @total_sum + x
      end
   if ( @total_sum % 10 == 0)
      true
    else
      false
    end  
  end 
end