require('pry')


def scrabble_points(string)
  scrabble_letters = Hash.new()
  scrabble_letters.store("a", 1)
  scrabble_letters.store("e",1)
  scrabble_letters.store("i",1)
  scrabble_letters.store("o",1)
  scrabble_letters.store("u",1)
  scrabble_letters.store("l",1)
  scrabble_letters.store("n",1)
  scrabble_letters.store("r",1)
  scrabble_letters.store("s",1)
  scrabble_letters.store("t",1)
  scrabble_letters.store("d",2)
  scrabble_letters.store("g",2)
  scrabble_letters.store("b",3)
  scrabble_letters.store("c",3)
  scrabble_letters.store("m",3)
  scrabble_letters.store("p",3)
  scrabble_letters.store("f",4)
  scrabble_letters.store("h",4)
  scrabble_letters.store("v",4)
  scrabble_letters.store("w",4)
  scrabble_letters.store("y",4)
  scrabble_letters.store("k",5)
  scrabble_letters.store("j",8)
  scrabble_letters.store("x",8)
  scrabble_letters.store("q",10)
  scrabble_letters.store("z",10)

  points = 0

  if(string.length > 7)
    return false
  elsif(string.length == 7)
    points += 50
    string.each_char do |letter|
        points += scrabble_letters.fetch(letter)
      end
  else
    string.each_char do |letter|
        points += scrabble_letters.fetch(letter)
      end
  end
  points
end
