class MyCalc

  def triangular(number)
    sum = 0

    while number > 0
      sum += number
      number -= 1
    end

    return sum
  end
end
