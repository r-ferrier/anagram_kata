class AnagramComputer

    attr_reader :cipher_list, :word_list, :result

    def initialize(file)
        @cipher_list = []
        @result = []
        read_word_list(file)
    end

    def read_word_list(file)
      @word_list = File.read(file).split
    end

    def word_count
        @word_list.length
    end

    def add_cipher_for(word)
        key = Key.new(word)
        @cipher_list << key.cipher
    end

    def create_cipher_list
        @word_list.each do |word|
          add_cipher_for(word)
        end
    end

    def find_anagrams
      last_index = @cipher_list.length-1

      @cipher_list.each_with_index do |cipher, cipher_index|
       
        @result << [cipher_index]

        @cipher_list.last(last_index-cipher_index).each.with_index(1) do |comparator, comparator_index|
          if comparator == cipher
            @result.last << cipher_index + comparator_index
          end
        end

        @result.pop if @result.last.length < 2
      end
    end
    

end