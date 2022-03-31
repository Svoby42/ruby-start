module SavingsAccount
  def self.interest_rate(balance)
    balance = balance.to_f
    if balance < 0
      -3.213
    elsif balance == 0.to_f
      0.5
    elsif balance < 1000 && balance > 0.to_f
      0.5
    elsif balance >= 1000 && balance < 5000
      1.621
    elsif balance >= 5000
      2.475
    end
  end

  def self.annual_balance_update(balance)
    if balance.class == Float
      balance = balance.to_f
    end
    if balance.negative?
      interest = interest_rate(-1).abs
      balance_abs = balance.abs
      -((interest * balance_abs) / 100 + balance_abs)
    else
      ((interest_rate(balance) * balance) / 100) + balance
    end
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    until current_balance >= desired_balance
      current_balance = annual_balance_update(current_balance)
      years += 1
    end
    years
  end
end

puts SavingsAccount.annual_balance_update(-0.123)