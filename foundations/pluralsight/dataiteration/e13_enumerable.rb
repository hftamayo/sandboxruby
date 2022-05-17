#order in which modules are included
#last module included is evaluated first
#ampliacion del ejemplo 12 utilizando orden de ejecucion

module Printable
    def print(item)
        "#{item} has been successfully printed."
    end
end

class Terminal
    include Printable
    def print(item)
        "#{item} has been successfully printed."
    end
end

terminal = Terminal.new
p terminal.print("screen")