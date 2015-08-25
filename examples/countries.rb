########################################################################
#
# Author: Brian Hood
#
# Description: Keycounter
# 
# Example data
#
########################################################################

require 'pp'
require File.expand_path(File.join(
          File.dirname(__FILE__),
          "../lib/keycounter.rb"))

k = Keycounter.new
# Will add / make USA a value of 3
k.keycount("USA")
k.keycount("USA")
k.keycount("USA")
# Will add / make UK  4
k.keycount("UK")
k.keycount("UK")
k.keycount("UK")
k.keycount("UK")
k.keycount("UK")

# With a loop

3.times {|n|
  k.keycount("France")
}

# Read a keys count
k.keycount_reader("USA")

# Display all values
pp k.keycount_compile
k.keycount_stats
 
