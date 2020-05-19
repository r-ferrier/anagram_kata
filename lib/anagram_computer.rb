class AnagramComputer

    attr_reader :cipher_list, :word_list

    def initialize(file)
        @cipher_list = []
        read_word_list(file)
        create_cipher_list
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
    

end