########################################################################
#
# Author: Brian Hood
#
# Description: Keycounter
# 
# A Simple counter using just instance variables 
#
########################################################################
require 'pp'

class Keycounter

  # Create / Add to instance variable
  def keycount(key)
    key.gsub!(" ", "_") # no spaces or case
    begin
      if !instance_variable_get("@#{key}")
        instance_variable_set("@#{key}", 1)
      else
        begin
          instance_variable_set("@#{key}", instance_variable_get("@#{key}") + 1)
        rescue => e
          puts "Cannot set instance variable of this name..."
          pp e
        end
      end
    rescue
      puts "Cannot get instance variable of this name..."
      pp e    
    end
    begin
      return [key, instance_variable_get("@#{key}")]
    rescue => e
      pp e
    end
  end

  # Read a single key
  def keycount_reader(key)
    key.gsub!(" ", "_") # no spaces or case
    valnum = instance_variable_get("@#{key}")
    return valnum
  end

  # Compile in array with the totals of all instance variables
  def keycount_compile
    keycounts = Array.new
    # You can't really inherit this class as the other class may also contain instance variables
    # its not really an exact logic this class only works alone.
    instance_variables.each {|n|
      t = n.to_s.gsub("@", "")
      keycounts << ["#{t}", instance_variable_get("#{n}")]
    }
    return keycounts
  end
  
  def keycount_stats(title="Stats:")
    puts "#{title}: "
    stats = keycount_compile
    pp stats.sort_by { |h| h[1] }
  end

end
