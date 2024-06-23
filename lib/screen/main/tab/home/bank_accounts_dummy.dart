import 'package:fast_app_base/screen/main/tab/home/banks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShinhan1 = BankAccount(bankShinhan, 3000000, accountTypeName: '신한 주거래 우대통장(저축예금)');
final bankAccountShinhan2 = BankAccount(bankShinhan, 30000700, accountTypeName: '저축예금');
final bankAccountShinhan3 = BankAccount(bankShinhan, 300000220, accountTypeName: '저축예금');

final bankAccountToss = BankAccount(bankTtoss, 123331112);
final bankAccountKakao = BankAccount(bankKakao, 2333222, accountTypeName: '입출금통장');

main() {
  // print(bankAccounts[0].accountTypeName);

  // for(final item in bankAccounts) {
  //   print(item.accountTypeName);
  // }

  final shinhanBank = bankMap["shinhan1"];
  print(shinhanBank == bankAccountShinhan1);

  for(final entry in bankMap.entries) {
    print(entry.key + ":" + (entry.value.accountTypeName ?? entry.value.bank.name));
  }

  //Set 과 List 모두 contains 라는 메서드를 가지고 있다. 차이점은 시간복잡도. set의 경우 바로 해당 파라미터를 서치하지만 리스트는 모든 요소를 한바퀴 돌며 서치한다.
  //List의 경우 중복 요소 허용이지만 set,map 은 중복을 허용하지 않기 때문에 파라미터로 바로 서치 가능하다.
  //O(1)
  print(bankSet.contains(bankAccountShinhan1));

  //O(n)
  print(bankAccounts.contains(bankAccountShinhan1));

  bankAccounts.toSet();
  bankSet.toList();

}

//List
final List<BankAccount> bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao,
];


// Map
final Map<String, BankAccount> bankMap = {
  "shinhan1": bankAccountShinhan1,
  "shinhan2": bankAccountShinhan2,
};

// Set
final Set<BankAccount> bankSet = {
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao,
};