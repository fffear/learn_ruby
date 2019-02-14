#write your code here
def echo hello
    hello
end

def shout hello
    hello.upcase
end

def repeat hello, number
    ((hello + " ") * number).chop
end

def start_of_word word, number
    word[0..(number - 1)]
end

def first_word string
    array = string.split
    array[0]
end

def titleize title
    array_C = []
    array = title.split
    i = 0
    while i < array.length
        if i == 0
            word = array[i].capitalize
            array_C.push(word)
        elsif i > 0 && ["and", "to", "a", "the", "over"].include?(array[i])
            word = array[i]
            array_C.push(word)
        else
            word = array[i].capitalize
            array_C.push(word)
        end
        i += 1
    end
    title_C = array_C.join(" ")
    title_C
end