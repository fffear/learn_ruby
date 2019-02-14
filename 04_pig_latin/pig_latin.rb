#write your code here
def translate string
    pig_latin = []
    pig_latin_capitalize = []
    phrase = string.split()
    print phrase
    puts

    phrase.each do |word|
        if /^[AEIOUaeiou]/.match?(word) #["a", "e", "i", "o", "u"].include?(word[0])
            word = word + "ay"
            pig_latin.push(word)
        elsif /^\w?qu/.match?(word) || /^[^AEIOUaeiou]+/.match?(word) 
            prefix = /^\w?qu/.match(word) || /^[^AEIOUaeiou]+/.match(word) 
            prefix_string = prefix.to_s
            word = word.sub(prefix_string, "")
            word = word + prefix_string + "ay"
            if /[^A-Za-z0-9]+/.match?(word)
                punctuation = /[^A-Za-z0-9]+/.match(word)
                punctuation_string = punctuation.to_s
                word = word.sub(punctuation_string, "")
                word = word + punctuation_string
            end
            pig_latin.push(word)
        end  
    end

    pig_latin.each do |word|
        if /[A-Z]/.match?(word)
            word = word.capitalize
            pig_latin_capitalize.push(word)
        else
            pig_latin_capitalize.push(word)
        end
    end

    pig_latin_capitalize.join(" ")
end