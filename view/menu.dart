import '../model/item.dart';

class Menu {
  //tampilan main menu
  void showMainMenu() {
    print("1. Tambah Barang");
    print("2. Hapus Barang");
    print("3. Lihat Keranjang");
    print("4. Bayar");
    print("5. Keluar");
  }

  //tampilan menu tambah barang
  void showItem(List<Item> listItem) {
    print("ID Barang\t| Nama Barang\t| Harga");
    for (var i = 0; i < listItem.length; i++) {
      print("-------------------------------------------");
      print("${listItem.elementAt(i).getItemId()}"
          "\t\t  ${listItem.elementAt(i).getItemName()}"
          "\t\t  ${listItem.elementAt(i).getItemPrice()}");
    }
  }
}
