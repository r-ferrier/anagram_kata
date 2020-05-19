class AnagramComputer

    attr_reader :cipher_list

    def initialize
        @cipher_list = []
    end

    def word_list
      File.read("./wordlist.txt").split
    end

    def word_count
        word_list.length
    end

    def add_cipher_for(word)
        key = Key.new(word)
        @cipher_list << key.cipher
    end
    





end