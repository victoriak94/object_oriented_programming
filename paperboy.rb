
#Every day, each paperboy is given a house number to start at and a house number to finish at. They get paid $0.25 for every paper they deliver and $0.50 for every paper over their quota. If at the end of the day they haven't met their quota, they lose $2.

# The minimum number of papers to deliver is 50. The quota is calculated as half of your experience added to the minimum. So the first time a paperboy makes a delivery, the quota is 50. The next time, the quote is 50 plus half the number of papers that the paperboy has delivered in the past. In this way the quota should increase after every delivery the paperboy makes.

class Paperboy

  def initialize(name)
    @name = name
    @experience = 0 # number of papers they've delivered
    @earnings = 0 # amount of money they've earned
    @quota = 50
  end

  def quota
    @quota + @experience / 2
    #should calculate and return the paperboy's quota for his next delivery
  end

  def deliver(start_address, end_address)
    @experience = start_address - end_address
    if @experience > @quota
      @earnings += @quota * 0.25
      @earnings += (@experience - @quota) * 0.5
    elsif @experience < @quota
      @earnings += @experience * 0.25
      @earnings -= 2
    end
    #takes two house numbers and returns amont of money earned on this deliery as a floating point number.
    #should also update paperboy's experience
    #assume start_address is always smaller number than end_address
  end

  def report
    return "I'm #{@name} and I delivered #{@experience} papers and earned #{@earnings} so far!"
    #returns a string about paperboy's performance
    #e.g. "I'm Tommy, I've delivered 90 papers and I've earned $38.25 so far!"
  end
end

victoria = Paperboy.new("Victoria")
puts victoria.deliver(25,76)
puts victoria.report
