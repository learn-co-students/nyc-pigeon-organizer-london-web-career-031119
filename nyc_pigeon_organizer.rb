require "pry"

def nyc_pigeon_organizer(data)
organized_list = {} 
  data.each do |attributes, hash| 
    hash.each do |specs, array|
      array.each do |name|
        if !organized_list.has_key?(name)
        organized_list[name] = {} 
        end 

        if !organized_list[name].has_key?(attributes)
        organized_list[name][attributes] = []
        end
        
        if !organized_list[name][attributes].include?(specs)
        organized_list[name][attributes] << specs.to_s 
        end
      end
    end
  end
  organized_list
end
