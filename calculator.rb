require "minitest/autorun"

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def sqaure(number)
    return square * square
  end

  def power(number, exponent)
    return number ** exponent
  end
end

class TestCalculator < Minitest::Test
  def test_add
    calculator = Calculator.new
    assert_equal 4, calculator.add(1, 3)
  end

  def test_add_with_negative_numbers
    calculator = Calculator.new
    assert_equal -2, calculator.add(1, -3)
  end
end