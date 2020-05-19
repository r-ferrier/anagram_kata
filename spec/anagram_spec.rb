require 'anagram_computer.rb'

RSpec.describe AnagramComputer do

    it 'creates an anagram computer class' do
      anagram_computer = AnagramComputer.new
      expect(anagram_computer).to be_kind_of(AnagramComputer)
    end    

    it 'has a list of words' do
      ac = AnagramComputer.new
      expect(ac.word_list).to be_kind_of(Array) 
    end

    it 'reads words from a text file' do
      ac = AnagramComputer.new
      word_list = File.read("./wordlist.txt").split
      
      expect(ac.word_list).to eq(word_list)
    end

end