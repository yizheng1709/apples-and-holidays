require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
      return holiday_hash[:summer][:fourth_of_july][1]
end  
  
  # holiday_hash = 
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, values|
    if season == :winter 
      values.each do |holiday, supplies|
        supplies << supply
      end 
    end 
  end 
end

def add_supply_to_memorial_day(holiday_hash, supply)
      holiday_hash[:spring][:memorial_day] << supply 
end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  return holiday_hash
end


def all_winter_holiday_supplies(holiday_hash)
      holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, data|
    puts "#{season.to_s.capitalize}:"
    data.each do |holiday, supplies|
      puts "  #{holiday.to_s.split("_").map(&:capitalize).join(" ")}: #{supplies.join(", ")}"
    end 
  end 
end 


# iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.



def all_holidays_with_bbq(holiday_hash)
  list = []
  holiday_hash.each do |season, data|
    data.each do |holiday, supplies|
      if supplies.include?("BBQ")
        list << holiday 
      end
    end 
  end
  return list 
end 
