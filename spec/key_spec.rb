require 'key.rb'

RSpec.describe Key do

    before (:each) do
        @key = Key.new
    end

    it 'creates a Key class' do
      expect(@key).to be_kind_of(Key)
    end    

    

end