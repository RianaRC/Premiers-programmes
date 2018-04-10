def chiffre_de_cesar(str, dec)
    s1 = str.split(" ")
    for i in 0...(s1.length) do
        s2 = s1[i]
        for y in 0...(s2.length) do
            a = s2[y].ord
            if a >= 65 && a <= 90
                a += dec
                if a > 90
                    a -= 26
                end
                s2[y] = a.chr
            elsif a > 96 && a < 123
                a += dec
                if a > 122
                    a -= 26
                end
                s2[y] = a.chr
            end
        end
        s1[i] = s2
    end
    s1.join(" ")
end

puts chiffre_de_cesar("What a String!", 5)