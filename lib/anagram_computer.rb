class AnagramComputer

    def initialize
        @key = Key.new
        @key_list = []
    end

    def word_list
      File.read("./wordlist.txt").split
    end

    def word_count
        word_list.length
    end

    def create_key(input)
        
        output = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

        input.chars do |ch|
            position_in_alphabet = ch.upcase.ord - 65
            output[position_in_alphabet] += 1
        end

        return output

    end
end