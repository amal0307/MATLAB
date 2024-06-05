%pascals triangle
a = 1
while length(a)<10
    a=[0 a]+[a 0]
    plot(a)
end

