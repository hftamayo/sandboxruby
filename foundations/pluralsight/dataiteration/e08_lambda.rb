def convert_to_inches(meters)
    if meters.is_a?(Numeric)
        meters * 39.37
    end
end

def convert_to_feet(meters)
    if meters.is_a?(Numeric)
        meters * 3.28
    end
end

def convert_to_yards(meters)
    if meters.is_a?(Numeric)
        meters * 1.09
    end
end

p convert_to_inches(5)
p convert_to_feet(5)
p convert_to_yards(5)

#refactorando

def convert_to_inches(Numeric)
    meters * 39.37 if meters.is_a?(Numeric)
end

def convert_to_feet(meters)
    meters * 3.28 if meters.is_a?(Numeric)
end

def convert_to_yards(meters)
    meters * 1.09 if meters.is_a?(Numeric)
end

#refactorando 2
def convert(meters, unit)
    yield(meters, unit) if meters.is_a?(Numeric)
end

p convert(5, "inches"){|meters| meters * 39.37}
p convert(5, "feet"){|meters| meters * 3.28}
p convert(5, "yards"){|meters| meters * 1.09}

#usando lambdas
to_inches = lambda {|meters| meters * 39.37}
to_feet = lambda {|meters| meters * 3.28}
to_yards = lambda {|meters| meters * 1.09}

def convert(meters, unit_lambda)
    unit_lambda.call(meters) if meters.is_a?(Numeric)
end

p convert(5, to_inches)
p convert(5, to_feet)
p convert(5, to_yards)

#ventaja de usar lambda
p [10, 25, 30].map(&to_inches)