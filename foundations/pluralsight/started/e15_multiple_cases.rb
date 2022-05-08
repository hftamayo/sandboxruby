case items
when 1
    count = "one"
when 2
    count = "two"
when 3
    count = "three"
else
    count = "a lot"
end

case distance
when (1..3)
    category = "walking distance"
when(4..10)
    category = "short trip"
else
    category = "long trip"
end

