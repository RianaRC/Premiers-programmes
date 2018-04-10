def multiply(y)
    a = 1
    b = []
    while a < 999
        a += 1
        if a % y == 0
        b.push(a)
        end
    end
    sum = 0
    b.each do |x|
        sum += x
    end
    sum
end
somme = multiply(3) + multiply(5)
puts "La somme des multiples des 3 et 5 moins de 1000 est #{somme}"