require 'anagram_computer.rb'
require 'key.rb'

RSpec.describe AnagramComputer do

    before (:each) do
        file = "./wordlist.txt"
        @anagram_computer = AnagramComputer.new(file)
    end

    def word_list
        File.read("./wordlist.txt").split
    end

    it 'creates an anagram computer class' do
      expect(@anagram_computer).to be_kind_of(AnagramComputer)
    end    

    it 'has a list of words' do
      expect(@anagram_computer.word_list).to be_kind_of(Array) 
    end

    it 'reads words from a text file' do
      expect(@anagram_computer.word_list).to eq(word_list)
    end

    it 'counts how many words are in a text file' do
      expect(@anagram_computer.word_count).to eq(word_list.length)
    end

    it 'adds key ciphers to an array containing all ciphers' do
      word = "testabc"
      @anagram_computer.add_cipher_for(word)
      key = Key.new(word)
    
      expect(@anagram_computer.cipher_list.last).to eq(key.cipher)
    end

    it 'adds every word from a file to the list of ciphers' do
      word_list = @anagram_computer.word_list
      cipher_list = @anagram_computer.cipher_list
      last_cipher = cipher_list.last
      key_from_last_word = Key.new("tie")

      expect(cipher_list.length).to eq(word_list.length)
      expect(most_recent_cipher).to eq(key_from_last_word.cipher)

    end



end