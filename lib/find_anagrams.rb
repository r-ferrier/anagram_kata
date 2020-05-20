require_relative 'anagram_computer'

class FindAnagrams

    def initialize
        @anagram_computer = AnagramComputer.new("../test_wordlist.txt")
        @anagram_computer.compute
    end

    def introduction
        puts "\nHello, I am the anagram computer."
    end

    def print_formatted_anagrams
        puts "\nI found the following anagrams for you:"
        @anagram_computer.anagrams_list.each do |line|
            puts line.join(", ")
        end
    end

    def print_longest_anagram
        puts "\nThe longest anagrams I could find have #{@anagram_computer.length_of_longest_anagram} letters. They are:"
        @anagram_computer.longest_anagrams.each do |line|
            puts line.join(", ")
        end
    end


    find_anagrams = FindAnagrams.new
    find_anagrams.introduction
    find_anagrams.print_formatted_anagrams
    find_anagrams.print_longest_anagram
    puts ""

end