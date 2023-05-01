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

  def square(number)
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

  def test_subtract
    calculator = Calculator.new
    assert_equal 2, calculator.subtract(5, 3)
  end

  def test_multiply
    calculator = Calculator.new
    assert_equal 20, calculator.multiply(4, 5)
  end

  def test_divide
    calculator = Calculator.new
    assert_equal 20, calculator.divide(100, 5)
  end

  def test_square
    calculator = Calculator.new
    assert_equal 25, calculator.square(5)
  end

  def test_multiply_with_zero
    calculator = Calculator.new
    assert_equal 0, calculator.multiply(0, 550)
  end
  
end