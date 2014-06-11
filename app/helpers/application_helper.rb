module ApplicationHelper
  
 def coin_toss
    toss = {"Yin" => 2, "Yang" => 3}
    Hash[toss.to_a.sample(1)]
 end

 def yin_yang
     line = 3.times.collect {coin_toss}
     yy = 3.times.collect {coin_toss.values[0]}
     yy_value = yy.inject(0, &:+)
     case yy_value
	when 6
           ty = "Changing Yin"
	when 7
	   ty = "Pure Yang"
	when 8
	   ty = "Pure Yin"
	when 9
           ty = "Changing Yang"
     end
     return [line, ty]
 end

 def lines
     @cast_lines = 6.times.collect {yin_yang}
     @cast_lines.freeze
     return
 end
 
 def hex_line_name  
     @cast_lines.collect {|x, y| y}
 end
 
 def hex_value
     @cast_lines.collect {|x, y| x}
 end

 def hexagram a
     odd_even = a.collect { |x| x.split(" ").last}
     case odd_even
     	when ["Yang", "Yang", "Yang", "Yang", "Yang", "Yang"]
	   1
   	when ["Yin", "Yin", "Yin", "Yin", "Yin", "Yin"]
     	   2
	when ["Yang", "Yin", "Yin", "Yin", "Yang", "Yin"]
     	   3
	when ["Yin", "Yang", "Yin", "Yin", "Yin", "Yang"]
           4
	when ["Yang", "Yang", "Yang", "Yin", "Yang", "Yin"]
           5
	when ["Yin", "Yang", "Yin", "Yang", "Yang", "Yang"]
     	   6
	when ["Yin", "Yang", "Yin", "Yin", "Yin", "Yin"]
           7
	when ["Yin", "Yin", "Yin", "Yin", "Yang", "Yin"]
           8
	when ["Yang", "Yang", "Yang", "Yin", "Yang", "Yang"]
     	   9
	when ["Yang", "Yang", "Yin", "Yang", "Yang", "Yang"]
     	   10
	when ["Yang", "Yang", "Yang", "Yin", "Yin", "Yin"]
     	   11
	when ["Yin", "Yin", "Yin", "Yang", "Yang", "Yang"]
     	   12
	when ["Yang", "Yin", "Yang", "Yang", "Yang", "Yang"]
     	   13
	when ["Yang", "Yang", "Yang", "Yang", "Yin", "Yang"]
     	   14
	when ["Yin", "Yin", "Yang", "Yin", "Yin", "Yin"]
     	   15
	when ["Yin", "Yin", "Yin", "Yang", "Yin", "Yin"]
     	   16
	when ["Yang", "Yin", "Yin", "Yang", "Yang", "Yin"]
     	   17
	when ["Yin", "Yang", "Yang", "Yin", "Yin", "Yang"]
     	   18
	when ["Yang", "Yang", "Yin", "Yin", "Yin", "Yin"]
     	   19
	when ["Yin", "Yin", "Yin", "Yin", "Yang", "Yang"]
     	   20
	when ["Yang", "Yin", "Yin", "Yang", "Yin", "Yang"]
      	   21
	when ["Yang", "Yin", "Yang", "Yin", "Yin", "Yang"]
      	   22
	when ["Yin", "Yin", "Yin", "Yin", "Yin", "Yang"]
           23
	when ["Yang", "Yin", "Yin", "Yin", "Yin", "Yin"]
      	   24
	when ["Yang", "Yin", "Yin", "Yang", "Yang", "Yang"]
      	   25
	when ["Yang", "Yang", "Yang", "Yin", "Yin", "Yang"]
      	   26
	when ["Yang", "Yin", "Yin", "Yin", "Yin", "Yang"]
      	   27
	when ["Yin", "Yang", "Yang", "Yang", "Yang", "Yin"]
      	   28
	when ["Yin", "Yang", "Yin", "Yin", "Yang", "Yin"]
           29
	when ["Yang", "Yin", "Yang", "Yang", "Yin", "Yang"]
      	   30
	when ["Yin", "Yin", "Yang", "Yang", "Yang", "Yin"]
      	   31
	when ["Yin", "Yang", "Yang", "Yang", "Yin", "Yin"]
      	   32
	when ["Yin", "Yin", "Yang", "Yang", "Yang", "Yang"]
      	   33
	when ["Yang", "Yang", "Yang", "Yang", "Yin", "Yin"]
      	   34
	when ["Yin", "Yin", "Yin", "Yang", "Yin", "Yang"]
     	   35
	when ["Yang", "Yin", "Yang", "Yin", "Yin", "Yin"]
     	   36
	when ["Yang", "Yin", "Yang", "Yin", "Yang", "Yang"]
     	   37
	when ["Yang", "Yang", "Yin", "Yang", "Yin", "Yang"]
     	   38
	when ["Yin", "Yin", "Yang", "Yin", "Yang", "Yin"]
     	   39
	when ["Yin", "Yang", "Yin", "Yang", "Yin", "Yin"]
     	   40
	when ["Yang", "Yang", "Yin", "Yin", "Yin", "Yang"]
      	   41
	when ["Yang", "Yin", "Yin", "Yin", "Yang", "Yang"]
     	   42
	when ["Yang", "Yang", "Yang", "Yang", "Yang", "Yin"]
     	   43
	when ["Yin", "Yang", "Yang", "Yang", "Yang", "Yang"]
     	   44
	when ["Yin", "Yin", "Yin", "Yang", "Yang", "Yin"]
     	   45
	when ["Yin", "Yang", "Yang", "Yin", "Yin", "Yin"]
	   46
   	when ["Yin", "Yang", "Yin", "Yang", "Yang", "Yin"]
	   47
	when ["Yin", "Yang", "Yang", "Yin", "Yang", "Yin"]
	   48
	when ["Yang", "Yin", "Yang", "Yang", "Yang", "Yin"]
	   49
	when ["Yin", "Yang", "Yang", "Yang", "Yin", "Yang"]
	   50
	when ["Yang", "Yin", "Yin", "Yang", "Yin", "Yin"]
	   51
	when ["Yin", "Yin", "Yang", "Yin", "Yin", "Yang"]
 	   52
	when ["Yin", "Yin", "Yang", "Yin", "Yang", "Yang"] 
	   53
	when ["Yang", "Yang", "Yin", "Yang", "Yin", "Yin"]
	   54
	when ["Yang", "Yin", "Yang", "Yang", "Yin", "Yin"]
	   55
   	when ["Yin", "Yin", "Yang", "Yang", "Yin", "Yang"]
     	   56
	when ["Yin", "Yang", "Yang", "Yin", "Yang", "Yang"]
     	   57
	when ["Yang", "Yang", "Yin", "Yang", "Yang", "Yin"]
     	   58
	when ["Yin", "Yang", "Yin", "Yin", "Yang", "Yang"]
     	   59
	when ["Yang", "Yang", "Yin", "Yin", "Yang", "Yin"]
     	   60
	when ["Yang", "Yang", "Yin", "Yin", "Yang", "Yang"]
     	   61
	when ["Yin", "Yin", "Yang", "Yang", "Yin", "Yin"]
     	   62
	when ["Yang", "Yin", "Yang", "Yin", "Yang", "Yin"]
     	   63
	when ["Yin", "Yang", "Yin", "Yang", "Yin", "Yang"]
     	   64
	end
 end     

 def changing_lines
     change = hex_line_name.collect { |x| x.split(" ").first }
     @change_num = change.count("Changing") 
     hex = hex_line_name.each_with_index.to_a
     if @change_num == 0
	   "No Changing Lines Read Only Cast Hexagram" 
     else	   
	     line_array = change.each_with_index.to_a
	     line_hash = line_array.collect { |x| Hash[*x]}
	     @one = line_hash.collect { |x| x["Changing"] }
	     @one.delete(nil)
	     compare = @one.collect { |x| hex_line_name[x] }
	     case @change_num
		when 1
		  @one
		when 2 
		   if compare[0] == compare[1]
		      compare[1]
		   else
		      "Changing Yin"
		   end   
		when 3
		   compare[1]	
		when 4
		   t_hex = hex.collect { |x| x[1] if x[0].include?("Changing") }
		   p_hex = hex.collect { |x| x[1] if x[0].include?("Pure") }
		   t_hex.delete(nil)
		   p_hex.delete(nil)
		   return p_hex.max
		when 5
		   p_hex = hex.collect { |x| x[1] if x[0].include?("Pure") }
		   p_hex.delete(nil)
		   return p_hex.max
		when 6
		   if hex_line_name == ["Changing Yin", "Changing Yin", "Changing Yin", "Changing Yin", "Changing Yin", "Changing Yin"]	
		      "All lines are Changing Yin. Read both Cast Hexagram and Transformed Hexagram."
		   elsif hex_line_name == ["Changing Yang", "Changing Yang", "Changing Yang", "Changing Yang", "Changing Yang", "Changing Yang"]   
		      "All lines are Changing Yang. Read both Cast Hexagram and Transformed Hexagram."
		   else
		   "Use Transformed Hexagram"
		   end
		end
     end	
 end 

 def transformed_hex
        if @change_num == 0
	   hexagram hex_line_name
	else
	   odd_even = hex_line_name.collect { |x| x.split(" ").last}
	   @one.each do |x|
	   	if odd_even[x] == "Yin"
		   odd_even[x] = "Yang"
		else
		   odd_even[x] = "Yin"
		end
	   end
       	   hexagram odd_even.to_a 
	end
 end
 
def tri_name tri
    case tri
       when ["Yang", "Yang", "Yang"]
          "Ch'ien/Heaven"
       when ["Yang", "Yin", "Yin"]
          "Chen/Thunder"
       when ["Yin", "Yang", "Yin"]
          "K'an/Water"
       when ["Yin", "Yin", "Yang"]
          "Ken/Mountain"
       when ["Yin", "Yin", "Yin"]
          "K'un/Earth"
       when ["Yin", "Yang", "Yang"]
          "Sun/Wind"
       when ["Yang", "Yin", "Yang"]
          "Li/Fire"
       when ["Yang", "Yang", "Yin"]
          "Tui/Lake"
    end
 end

 def trigram
     odd_even = hex_line_name.collect { |x| x.split(" ").last}
     @bott_tri = odd_even[0..2]
     @top_tri = odd_even[3..5]
     return
 end

end
