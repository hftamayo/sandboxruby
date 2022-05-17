#otro ejemplo con enumerable y exec priority

module Printable
    def print(item)
        "#{item} has been successfully printed"
    end
end

class Terminal
    include Printable
    def print(item)
        "#{item} has been successfully printed"
    end
end

class Printer
    include Printable
    def print(item)
        "#{item} has been successfully printed"
    end
end

class InkjetPrinter < Printer
    def print(item)
        "#{item} has been successfully printed"
    end
end

inkjet = InkjetPrinter.new
p InkjetPrinter.ancestors
p inkjet.print("page")