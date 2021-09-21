import '../model/item.dart';

class DummyData {
  //list dummy data barang
  List<Item> dummyItemData() {
    //menggunakan model item
    //contoh dengan 5 barang
    //barang 1
    Item item1 = Item("I01", "Buku", 20000);

    //barang 2
    Item item2 = Item("I02", "Lampu", 12000);

    //barang 3
    Item item3 = Item("I03", "Bumbu", 30000);

    //barang 4
    Item item4 = Item("I04", "Lele", 45000);

    //barang 5
    Item item5 = Item("I05", "Lilin", 10000);

    //list item
    List<Item> listItem = [];
    listItem.add(item1);
    listItem.add(item2);
    listItem.add(item3);
    listItem.add(item4);
    listItem.add(item5);

    //return list
    return listItem;
  }
}
