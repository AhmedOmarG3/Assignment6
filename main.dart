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
