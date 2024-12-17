class Bankaccount {
  // Attribute to store the account balance
  double? _balance;
  String? _accountNumber;
  String? _holderName;

  // Constructor to initialize the account with a positive balance or set it to 0 if invalid
  Bankaccount(double balance, String name, String number) {
    setHolderName(name);
    setAccountNumber(number);
    setBalance(balance);
  }

  //////       Setters //////////
  void setBalance(double balance) {
    this._balance = balance < 0 ? 0 : balance;
  }

  void setHolderName(String name) {
    this._holderName = name == '' ? 'undefined' : name;
  }

  void setAccountNumber(String number) {
    this._accountNumber = number == '' ? 'undefined' : number;
  }

  ///// Gettters ////

  double getBalance() => // => is Arrow function
      _balance!;

  String getAccountNumber() => _accountNumber!;

  String getHolderName() => _holderName!;

  // Method to deposit money into the account
  void deposit(double amount) {
    // Add the deposit amount to the current balance
    this._balance = this._balance! + amount;
  }

  // Method to withdraw money from the account
  void withdraw(double amount) {
    if (amount <= 0)
      // Ensure the withdrawal amount is greater than 0
      print('Amount must be greater than 0');
    else if (amount <= this._balance!)
      // Deduct the withdrawal amount if sufficient balance is available
      this._balance = this._balance! - amount;
    else
      // Notify the user if there is insufficient balance
      print('Insufficient balance');
  }
// print Account information
  void printAccountInfo() {
    print(
        ' Account Holder Name : ${getHolderName()}\n Account number : ${getAccountNumber()}\n Balance : ${getBalance()}');
  }
}
