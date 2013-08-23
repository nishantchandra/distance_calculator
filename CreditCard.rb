# Validate a Credit Card using Luhn Algorithm

#Starting with the second to last digit, double every other digit until you reach the first digit

#Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart, 10 becomes 1 + 0)

#If the total is a multiple of ten, you have received a valid credit card number!


class CreditCard
   def initialize (card_number)
    unless (card_number.to_s.length == 16 )
        raise ArgumentError.new("Error")
    end
    @card_number = card_number.to_s
    @totalsum = 0
  end
 
  def check_card
    @new_Array = []
    @array = [] 
    @new_Array = @card_number.split(//)
    @new_Array.map! { |x| x.to_i }
    @new_Array.each_with_index { |item,index| 
      if (index % 2 == 0) 
        @array << (2 * item)
      else
        @array << item
      end  
     }  
    
    @array.map! {|x| 
      if (x > 9)
        x = x-9
      else
        x = x
      end  
      }

    @array.each do |x|
      @totalsum = @totalsum + x
      end
   if ( @totalsum % 10 == 0)
       true
    else
      false
    end  
  end 
end

