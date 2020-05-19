RSpec.describe Anagram do

    it 'creates an anagram class' do
      anagram = Anagram.new
      expect(anagram).to be_kind_of(Anagram)
    end
    
  end