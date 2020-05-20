require_relative 'key'

class AnagramComputer

    attr_reader :word_list, :result, :anagrams_list, :cipher_list

    def initialize(file)
        @cipher_list = []
        @result = []
        @anagrams_list = []
        read_word_list(file)
    end

    def word_count
        @word_list.length
    end

    def compute
        create_cipher_list
        find_anagrams
        return_anagrams
    end

    def longest_anagrams
        longest_word_length = length_of_longest_anagram
        @anagrams_list.select { |anagrams| anagrams.first.gsub(/\W+/, '').length == longest_word_length }.map.to_a
    end

    def length_of_longest_anagram
        longest_word_length = 0
        @anagrams_list.each {|anagrams| longest_word_length = anagrams.first.length if anagrams.first.length > longest_word_length }
        return longest_word_length
    end

    private

    def read_word_list(file)
        @word_list = File.read(file).split
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
      @cipher_list.each_with_index do |cipher, cipher_index|
        matches = []
        
        @cipher_list.last(@cipher_list.length-cipher_index).each_with_index do |comparator, comparator_index|
          matches << (cipher_index + comparator_index) if comparator == cipher
        end
        
        @result << matches if matches.length > 1
      end
    end

    def return_anagrams
      @result.each do |cipher_array|
        @anagrams_list << cipher_array.map {|word_index| @word_list[word_index]}
      end
    end
    
end