class Book 
# write your code here
    def title=(string)
        @book = string
    end

    def title
        @array = @book.split
        @book = []

        i = 0
        while i < @array.length
            if i == 0
                @array[i] = @array[i].capitalize
                @book.push(@array[i])
            elsif i > 0 && ["and", "the", "in", "of", "a", "an"].include?(@array[i])
                @array[i] = @array[i].downcase
                @book.push(@array[i])
            else
                @array[i] = @array[i].capitalize
                @book.push(@array[i])
            end
            i += 1
        end

        @book = @book.join(" ")
    end
end