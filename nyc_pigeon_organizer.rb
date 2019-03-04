def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each do |col_gen_li, hash|
    hash.each do |attribute, array|
      array.each do |name|
        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end

        if !new_hash[name].has_key?(col_gen_li)
          new_hash[name][col_gen_li] = []
        end

        if !new_hash[name][col_gen_li].include?(attribute)
          new_hash[name][col_gen_li] << attribute.to_s
        end
      end
    end
  end
  new_hash
end
