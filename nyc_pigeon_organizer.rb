def nyc_pigeon_organizer(data)

  new_hash = {}

  data.each { |trait, subtraits_hash|
    subtraits_hash.each { |subtrait, names_arr|
      names_arr.each { |name|
        if !new_hash.member?(name)
          new_hash[name] = {}
        end
      }
    }

    new_hash.each { |name, traits_hash|
      new_hash[name][trait] = []
    }
  }

  new_hash.each { |name, traits_hash|
    data.each { |trait, subtraits_hash|
      subtraits_hash.each { |subtrait, names_arr|
        if names_arr.include?(name)
          traits_hash[trait] << subtrait.to_s
        end
      }
    }
  }

  new_hash
end
