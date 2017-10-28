def alphabetize(arr)
  esperanto_alphabet = " abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  dict = {}
  for i in (1..esperanto_alphabet.length)
    dict[esperanto_alphabet[i - 1]] = i
  end

  holder = {}

  arr.each do |word|
    wordstorage = []
    for i in (0..word.length - 1)
      wordstorage << dict[word[i]]
    end
    holder[word] = wordstorage
  end

  arr.sort_by! do |word|
    holder[word]
  end

  arr

end

testarray = ["mi amas vin", "bonan matenon", "pacon", "ĉu vi parolas esperanton"]

puts alphabetize(testarray)
