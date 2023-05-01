require "minitest/autorun"

class ChangeMachine
    def change(cents)
        coins = []
        while cents > 0
            if cents >= 10
                coins << 10
                cents -= 10
            elsif cents >= 5
                coins << 5
                cents -= 5
            else
                coins << 1
                cents -= 1
            end
        end
        return coins
    end
end

class TestChangeMachine < Minitest::Test
  def test_one_returns_one_penny
    machine = ChangeMachine.new
    assert_equal [1], machine.change(1)
  end

  def test_two_returns_two_pennies
    machine = ChangeMachine.new
    assert_equal [1, 1], machine.change(2)
  end

  def test_five_returns_one_nickel
    machine = ChangeMachine.new
    assert_equal [5], machine.change(5)
  end

  def test_ten_returns_one_dime
    machine = ChangeMachine.new
    assert_equal [10], machine.change(10)
  end
end