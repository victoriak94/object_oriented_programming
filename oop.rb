
class BankAccount

def initialize (balance, interest_rate)
  @balance = balance
  @interest_rate = interest_rate
end

#Reader
def balance
  return @balance
end

#Reader
def interest_rate
  return @interest_rate
end

def deposit (amount)
  return @balance += amount
end

def withdraw (amount)
  return @balance -= amount
end

def gain_interest
  return @balance = @balance * @interest_rate
end
end

my_acct=BankAccount.new(1000,2)

puts my_acct.balance
puts my_acct.deposit(20)
puts my_acct.withdraw(10)
puts my_acct.gain_interest
