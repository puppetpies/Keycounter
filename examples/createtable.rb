
require 'keycounter'

class Keycounter

  def simplecreatetable(tablename)
    sql = "CREATE TABLE #{tablename} (\n"
    sql << "guid char(36),\n"
    instance_variables.each {|n|
      t = n.to_s.gsub("@", "")
      sql << "#{t} string,\n"
    }
    sql = sql[0..sql.size - 2]
    sql << "\n);\n"
    puts "\e[4;36mCreate table:\e[0m\ \n #{sql}"
  end
  
end

@k = Keycounter.new
@k.keycount("firstname")
@k.keycount("lastname")
@k.keycount_compile

@k.simplecreatetable("mytable")


