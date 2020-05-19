class AnagramComputer

    def word_list
      File.read("./wordlist.txt").split
    end

    def word_count
        word_list.length
    end
end