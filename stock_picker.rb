def trader_du_dimanche(t)
    a = t[0]
    x = 0
    y = 0
    r = []
    t.each_index do |i|
        if a > (t[i] + i)
            a = t[i]
            x = i
        end
    end
    r = r.push(x)
    b = t[x]
    t.each_index do |j|
        if j == x
            for k in x...t.length do
                t.each_index do |l|
                    if l == k
                        if (b - x) < (t[l] - l)
                            b = t[l]
                            y = l
                        end
                    end
                end
            end
        end
    end
    r = r.push(y)
    r

end

def trader_du_lundi(t)
    t1 = []
    s = 0
    r = []
    t.each do |x|
        x.each_value do |v|
            s += v
        end
        t1.push(s)
    end
    r = trader_du_dimanche(t1)
    r
end

stock_picker = trader_du_dimanche([17,3,6,9,15,8,6,1,10])

puts "[#{stock_picker[0]},#{stock_picker[1]}]"

stock_picker2 = trader_du_lundi([
    { :GOO => 15, :MMM => 14, :ADBE => 12, :EA=> 13, :BA => 8, :KO => 10, :XOM => 20, :GPS => 7, :MCD => 11, :DIS => 15, :CRM => 6, :JNJ => 10 },
    { :GOO => 8, :MMM => 20, :ADBE => 3, :EA=> 10, :BA => 5, :KO => 19, :XOM => 12, :GPS => 6, :MCD => 15, :DIS => 9, :CRM => 10, :JNJ => 17 },
    { :GOO => 3, :MMM => 8, :ADBE => 15, :EA=> 5, :BA => 10, :KO => 5, :XOM => 15, :GPS => 13, :MCD => 10, :DIS => 18, :CRM => 5, :JNJ => 14 },
    { :GOO => 17, :MMM => 3, :ADBE => 6, :EA=> 9, :BA => 15, :KO => 6, :XOM => 8, :GPS => 1, :MCD => 10, :DIS => 15, :CRM => 18, :JNJ => 3 },
    { :GOO => 8, :MMM => 18, :ADBE => 4, :EA=> 6, :BA => 15, :KO => 18, :XOM => 3, :GPS => 12, :MCD => 19, :DIS => 3, :CRM => 7, :JNJ => 9 },
    { :GOO => 10, :MMM => 12, :ADBE => 8, :EA=> 3, :BA => 18, :KO => 20, :XOM => 5, :GPS => 11, :MCD => 3, :DIS => 9, :CRM => 8, :JNJ => 15 },
    { :GOO => 17, :MMM => 14, :ADBE => 2, :EA=> 17, :BA => 7, :KO => 13, :XOM => 1, :GPS => 15, :MCD => 15, :DIS => 10, :CRM => 9, :JNJ => 17 }

])

puts "[#{stock_picker2[0]},#{stock_picker2[1]}]"