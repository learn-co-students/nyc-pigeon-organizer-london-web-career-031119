require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |data_type, data_set|
    data_set.each do |data_info, names|
      names.each do |name|
        if pigeon_list.include?(name)
          pigeon_list[name].include?(data_type) ? pigeon_list[name][data_type] << data_info.to_s : pigeon_list[name][data_type] = Array(data_info.to_s)
        else
          pigeon_list[name] = {data_type => Array(data_info.to_s)}
        end
      end
    end
  end
  binding.pry
  pigeon_list
end