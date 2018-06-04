require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = Hash.new(Hash.new([]))
  data.each do |attribute, att_info|
    att_info.each do |type, pigeons|
      pigeons.each do |pigeon|
        pigeon_list[pigeon][attribute] << type
      end
    end
  end
  pigeon_list
end