require "pry"

def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |key, value|
    value.each do |i, j|
      j.each do |name|
        if !new_hash.key?(name)
          new_hash[name] = {}
        end

        if !new_hash[name].key?(key)
          new_hash[name][key] = []
        end

        if !new_hash[name][key].include?(i)
          new_hash[name][key].push(i.to_s)
        end
      end
    end
  end
  new_hash
end
