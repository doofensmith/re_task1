import '../model/account.dart';
import '../model/item.dart';
import 'menu.dart';

class Messages {
  void appsOpening() {
    print("----------------------------");
    print("Selamat datnag di Oline Shop.");
    print("Untuk memulai berbelanja,"
        "silakan buat akun terlebih dulu.");
    print("----------------------------");
  }

  void startingShop(Account account) {
    print("----------------------------");
    print("Selamat datang ${account.getAccountName()}.");
    print("Gunakan menu untuk mulai berbelanja.");
    print("----------------------------");
  }

  void showReceipt(Account account, List<Item> listItem, int totalPrice) {
    print("----------------------------");
    print("Kwitansi pembelian.");
    print("----------------------------");
    print("Nama pembeli : ${account.getAccountName()}");
    print("Barang yang dibeli");
    Menu menu = Menu();
    menu.showItem(listItem);
    print("----------------------------");
    print("Total bayar : Rp. $totalPrice");
  }
}
