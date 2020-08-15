def caesar_shift(word, key)
    sentence = ""

    word.split("").map do |letter|
        if (letter.is_a? String)
            letter.ord + key
            sentence += (letter.ord + key).chr
        else
            sentence += letter
        end
        if ((letter.ord + key) > 122)
            ((letter.ord + key) - 122) + 96
            sentence += (((x.ord + key) - 122) + 96).chr
        end
    end
    puts sentence
end

puts "Input a word for encryption please: "
word = gets.chomp.downcase.to_s
puts "Input a key please (single-digit preferably): "
key = gets.chomp.to_i

caesar_shift(word, key)