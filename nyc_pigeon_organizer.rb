#def nyc_pigeon_organizer(data)
  # write your code here!
#end

require 'pry'

def nyc_pigeon_organizer(data)
  organized_pigeons = {}
  
  data.each do | color_gender_loc, data_hash |
    data_hash.each do | attribute, array |
      array.each do | name |
        if !organized_pigeons.has_key?(name) 
          organized_pigeons[name] = {}
        end
        if !organized_pigeons[name].has_key?(color_gender_loc)
          organized_pigeons[name][color_gender_loc] = []
        end
        if !organized_pigeons[name][color_gender_loc].include?(attribute)
          organized_pigeons[name][color_gender_loc] << attribute.to_s
        end
      end
    end
  end
  organized_pigeons
end 