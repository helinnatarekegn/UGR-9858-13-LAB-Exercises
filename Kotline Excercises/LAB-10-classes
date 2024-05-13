class BankAccount(private val accountNumber: String, private var balance: Double) {

    fun deposit(amount: Double) {
        if (amount < 0) {
            println("Invalid deposit amount. Amount must be positive.")
            return
        }
        balance += amount
        println("Deposit of $amount successful. New balance: $balance")
    }

    fun withdraw(amount: Double) {
        if (amount < 0) {
            println("Invalid withdrawal amount. Amount must be positive.")
            return
        }
        if (amount > balance) {
            println("Insufficient funds. Withdrawal failed.")
            return
        }
        balance -= amount
        println("Withdrawal of $amount successful. New balance: $balance")
    }

    fun printBalance() {
        println("Current balance: $balance")
    }
}

fun main() {
    
    val account = BankAccount("1000423287105", 1000.0)

    
    account.deposit(500.0) 
    account.deposit(-200.0) 

    
    account.withdraw(200.0) 
    account.withdraw(1500.0) 

    
    account.printBalance() 
}
