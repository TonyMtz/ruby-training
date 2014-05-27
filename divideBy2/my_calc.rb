class MyCalc
  def initialize
  end
  def divideBy2(decimal_number)
    # trick: array.join ignores '0' at beginning
    remstack = []
    buffer = ''

    while decimal_number > 0
      rem = decimal_number % 2
      remstack.unshift(rem)
      decimal_number = decimal_number / 2
    end

    if remstack.first != 0
      remstack.unshift(0)
    end

    remstack.each { |x| buffer << x.to_s }

    return buffer
  end
end

