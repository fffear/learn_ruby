#write your code here
def add a, b
    a + b
end

def subtract a, b
    a - b
end

def sum array
    if array.length == 0
        0
    elsif array.length >= 1
        total = 0
        
        array.each do |number|
           total += number
        end

        total
    end
end

def multiply *numbers
    total = 1

    numbers.each do |number|
        total *= number
    end
    total
end

def power a, b
    a ** b
end

def factorial number
    if number == 0 || number == 1
        1
    elsif number >= 2
        total = 1
        until number < 1
            total *= number
            number -= 1
        end
        total
    end
end