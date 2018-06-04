require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, att_info|
    att_info.each do |type, pigeons|
      pigeons.each do |pigeon|
        if pigeon_list.include?(pigeon)
          if pigeon_list[pigeon].include?(attribute)
            pigeon_list[pigeon][attribute] << type.to_s
            binding.pry
          else
            pigeon_list[pigeon][attribute] = [type.to_s]
          end
        else
          pigeon_list[pigeon] = {}
        end
      end
    end
  end
  pigeon_list
end