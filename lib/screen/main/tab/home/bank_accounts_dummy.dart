import 'package:fast_app_base/screen/main/tab/home/banks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShingan1 = BankAccount(
    bankShinhan, 3000000, accountTypeName: '신한 주거래 우대통장(저축예금)');
final bankAccountShingan2 = BankAccount(
    bankShinhan, 30000700, accountTypeName: '저축예금');
final bankAccountShingan3 = BankAccount(
    bankShinhan, 300000220, accountTypeName: '저축예금');

final bankAccountToss = BankAccount(bankTtoss, 123331112);
final bankAccountKakao = BankAccount(
    bankKakao, 2333222, accountTypeName: '입출금통장');

main() {
  print(bankAccounts[0].accountTypeName);
}

final List<BankAccount> bankAccounts = [
  bankAccountShingan1,
  bankAccountShingan2,
  bankAccountShingan3,
  bankAccountToss,
  bankAccountKakao,
];


// Map

// Set