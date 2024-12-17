# Bank Account System

## Overview
This project implements a simple bank account system using object-oriented programming principles in Dart. The BankAccount class securely manages an account's balance using encapsulation, and provides methods for depositing and withdrawing money.

## Objective
The goal of this system is to demonstrate the use of constructors, encapsulation, and basic methods such as deposit, withdraw, and print account details.

## Features
- *Private Attributes*:
  - _accountNumber (String)
  - _holderName (String)
  - _balance (double)
  
- *Encapsulation*:
  - Use of getter and setter methods to access and modify private attributes.
  - Prevent negative balance values using setter.
  - Allow updating the account holder's name.

- *Methods*:
  - deposit(double amount) to add funds to the account (amount must be positive).
  - withdraw(double amount) to deduct funds from the account (amount must be positive and not exceed the current balance).
  - printAccountInfo() to display account details (account holder's name, account number, and balance).

## Code Structure

### BankAccount.dart

```dart
class Bankaccount {
  double? _balance;
  String? _accountNumber;
  String? _holderName;

  Bankaccount(double balance, String name, String number) {
    setHolderName(name);
    setAccountNumber(number);
    setBalance(balance);
  }

  void setBalance(double balance) {
    this._balance = balance < 0 ? 0 : balance;
  }

  void setHolderName(String name) {
    this._holderName = name == '' ? 'undefined' : name;
  }

  void setAccountNumber(String number) {
    this._accountNumber = number == '' ? 'undefined' : number;
  }

  double getBalance() => _balance!;

  String getAccountNumber() => _accountNumber!;

  String getHolderName() => _holderName!;

  void deposit(double amount) {
    this._balance = this._balance! + amount;
  }

  void withdraw(double amount) {
    if (amount <= 0)
      print('Amount must be greater than 0');
    else if (amount <= this._balance!)
      this._balance = this._balance! - amount;
    else
      print('Insufficient balance');
  }

  void printAccountInfo() {
    print(' Account Holder Name: ${getHolderName()}\n Account number: ${getAccountNumber()}\n Balance: ${getBalance()}');
  }
}

main.dart

import 'BankAccount.dart';

void main() {
  Bankaccount account1 = Bankaccount(500.0, 'Alice Smith', '123456');
  account1.printAccountInfo();
  account1.deposit(200.0);
  print('===============================');
  account1.printAccountInfo();
  print('===============================');
  account1.withdraw(100.0);
  account1.printAccountInfo();
}

How to Run

1. Install Dart SDK.


2. Create a new Dart project or copy the BankAccount.dart and main.dart files into your existing project.


3. Run the main.dart file in your Dart environment.


4. You should see the output demonstrating the deposit, withdrawal, and updated account information.



Example Output

Account Holder Name: Alice Smith
 Account number: 123456
 Balance: 500.0
===============================
 Account Holder Name: Alice Smith
 Account number: 123456
 Balance: 700.0
===============================
 Account Holder Name: Alice Smith
 Account number: 123456
 Balance: 600.0

License

This project is open source and available under the MIT License.

Author

Ahmed Omar
