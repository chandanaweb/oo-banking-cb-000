class Transfer
 attr_accessor :sender, :receiver , :status, :amount
 @@accounts = []
 def initialize(sender, receiver,amount =50, status ="pending")
   @sender = BankAccount.new(sender)
   @receiver = BankAccount.new(receiver)
   @status = status
   @amount = amount
   @@accounts << self
 end
 def valid?
   sender = BankAccount.new(@sender)
   sender.valid?
   #receiver = BankAccount.new(@receiver)
   #receiver.valid?
  # @@accounts.each do|account|
    # return true
   #end
 end
 def execute_transaction
  sender = BankAccount.new(@sender)
  sender.balance = self.amount
 end
end
