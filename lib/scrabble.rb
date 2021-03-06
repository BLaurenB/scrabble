class Scrabble

  attr_reader :word, :scoring

  def initialize(word)
    @word = word
    @scoring = []
  end


  def score
    #split all the words into characters...=array
    #for each in array, access the value
    #add the values and return the score.
    if @word.length == 1
      @scoring = point_values[@word.upcase]
    elsif @word == nil
      @scoring = 0
    else
      words = []
      words << @word.split("")
      @scoring = @words.map do |letter|
        point_values[letter.upcase]
        @scoring.sum
      end
    end
  end

  def point_values
    {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
  end



end
