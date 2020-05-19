require 'anagram_computer.rb'

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


end