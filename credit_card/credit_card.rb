class CreditCard
  attr_accessor :opening_date, :balance, :apr, :credit_limit, :charges, :payments

  def initialize(date, apr, credit_limit) #creates the basic for an account
    @credit_limit = credit_limit
    @opening_date = date
    @apr = apr
  end

  def swipe(charge) #this is for a charge
    #keeps track of number of swipes/charges
    #updates balance
    #this may need to be its own object with a date, previous balance and new balance
  end

  def payment(amount) #this is for a payment
    #tracks payment
    #updates balance
  end

  def daily_interest #uses balance and apr to track current daily interest
    #this is not applied to the balance until day 30
    # there is no daily interest on day 1
  end

  def monthly_interest#applies the total balance
    #basically, this will be the daily interested calculated on the balance
    #remember: daily interest is tracked, but not applied
  end

end
