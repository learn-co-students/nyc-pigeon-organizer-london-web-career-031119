def nyc_pigeon_organizer(data)
  new = {}
  arr = []
data.each do |color, purplehash|
purplehash.each do |purplekey, theoarray|
theoarray.each do |names|
new[names] = {}
end
end
end
data.each do |color, purplehash|
purplehash.each do |purplekey, theoarray|
theoarray.each do |names|
   new[names][color] = []
 end
 end
 end
 data.each do |color, purplehash|
 purplehash.each do |purplekey, theoarray|
 theoarray.each do |names|
  new[names][color] << purplekey.to_s
end
end
end
p new
end

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

nyc_pigeon_organizer(pigeon_data)
