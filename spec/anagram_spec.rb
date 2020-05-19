require 'anagram_computer.rb'
require 'key.rb'

RSpec.describe AnagramComputer do

    before (:each) do
        @anagram_computer = AnagramComputer.new
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



end