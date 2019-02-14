class Timer
  #write your code here
  def initialize
    @timer = 0
  end

  def seconds=(number)
    @timer = number
  end

  def seconds
    @timer
  end

  def padded number
    if number >=0 && number <= 9
      number = "0" + number.to_s
    else
      number = number.to_s
    end
    number
  end

  def time_string
    @time = "hh:mm:ss"
    @array = @time.split(":")
    @time = []
    i = 0

    while i < @array.length
      if @timer >= 0 && @timer <= 9
        if @array[i] == "hh" || @array[i] == "mm"
          @time.push("00")
        elsif @array[i] == "ss"
          @time.push(padded(@timer))
        end

      elsif @timer >= 10 && @timer <= 59
        if @array[i] == "hh" || @array[i] == "mm"
          @time.push("00")
        elsif @array[i] == "ss"
          @time.push(padded(@timer))
        end

      elsif @timer >= 60 && @timer <= 3599
        if @array[i] == "hh"
          @time.push("00")
        elsif @array[i] == "mm"
          minute = @timer / 60
          @time.push(padded(minute))
        elsif @array[i] == "ss"
          second = @timer % 60
          @time.push(padded(second))
        end
      
      elsif @timer >= 3600
        if @array[i] == "hh"
          hour = @timer / 60 / 60
          hour = "0" + hour.to_s
          @time.push(hour)
        elsif @array[i] == "mm"
          minute = (@timer % 3600)/60
          @time.push(padded(minute))
        elsif @array[i] == "ss"
          second = @timer % 60
          @time.push(padded(second))
        end
      end
      i += 1
    end
    @time = @time.join(":")
  end

end