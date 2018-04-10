def jean_michel_data(corpus, dictionnaire)
	lettre = corpus.to_s
	tabAssoc = Hash.new(0)
	
	for row in 0..lettre.length-1
		for col in row..lettre.length-1

			each_word = lettre[row..col] 
			if dictionnaire.include?(each_word)
				
				tabAssoc[each_word] += 1
			end 
		end
	end

	return tabAssoc

end

def ask_for_mot
  print "mettez la phrase ou le mot ici: "
  mot = gets.chomp
  return mot
end

def perform
	dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
	mot = ask_for_mot
	puts jean_michel_data(mot, dictionary)
end

perform

