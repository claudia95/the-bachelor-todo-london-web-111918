def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split.first
    end
  end
  data[season]
end

def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
  counter = 0 
  data.each do |season, array|
    array.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end


def get_average_age_for_season(data, season)
  number_of_contestants = data.fetch(season).size
  total_age = 0
  data[season].each do |contestant|
      total_age += contestant["age"].to_f
    end
    (total_age / number_of_contestants).round 

end 

