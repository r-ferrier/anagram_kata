class AnagramComputer

    def word_list
      File.read("./wordlist.txt").split
    end
end