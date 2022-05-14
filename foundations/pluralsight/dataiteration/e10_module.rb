module Printable
    def print(item)
        "#{item} has been successfully added"
    end
end

class Terminal
    include Printable
    attr_reader :name
    def initialize(name)
        @name = name
    end
end

terminal = Terminal.new("Term")
p terminal.print("page")

#version 2
module Printable
    def self.included(klass)
        attr_accessor :print_count
    end

    def print(item)
        @print_count ||= 0
        @print_count += 1
        "#{item} has been successfully added. Print count: #{@print_count}"
    end
end

class Terminal
    include Printable
    attr_reader :name
    def initialize(name)
        @name = name
    end
end

terminal1 = Terminal.new("Terminal1")
p terminal1.print("page")
p terminal1.print("picture")

terminal2 = Terminal.new("Terminal2")
p terminal2.print("page")
p terminal2.print("picture")
