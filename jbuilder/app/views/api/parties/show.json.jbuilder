json.extract! @party, :name, :location 

json.guests do
  json.array! @party.guests do |guest|
    json.extract! guest, :name
    json.gifts do 
      json.array! guest.gifts do |gift|
        json.extract! gift, :title, :description
      end
    end
  end
end



