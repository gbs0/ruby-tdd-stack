class LoanChecker
  def can_land_to?(client)
  	!client.debts
  end
end