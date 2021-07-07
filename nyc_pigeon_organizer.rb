require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |stat_key,stats|
    stats.each do |stat,pigeons|
      pigeons.each do |pigeon|
        pigeon_list[pigeon] ||= {}
        binding.pry
        pigeon_list[pigeon][stat_key] ||= []
        pigeon_list[pigeon][stat_key] << stat.to_s
      end
    end
  end
  pigeon_list
end