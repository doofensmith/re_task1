// @dart=2.9

import 'dart:io';

import '../dummy/dummy_data.dart';
import '../model/account.dart';
import '../model/item.dart';
import '../view/menu.dart';
import '../view/messages.dart';

class Program {
  Account _account;
  List<Item> _myListItem;
  List<Item> _listDataItem = DummyData().dummyItemData();
  Messages messages = Messages();
  Menu menu = Menu();

  //constructor
  Program(Account account, List<Item> myListItem) {
    this._account = account;
    this._myListItem = myListItem;
  }

  //buat akun
  void createAccount() {
    messages.appsOpening();
    print("----------------------------");
    print("Buat Akun");
    stdout.write("Masukkan nama Anda : ");
    String accountName = stdin.readLineSync();
    this._account = Account("A01", accountName);
    print("----------------------------");
    print("m : Pembuatan akun berhasil.");
    print("----------------------------");
  }

  //start program
  void startProgram() {
    messages.startingShop(this._account);
    menu.showMainMenu();
    stdout.write("Pilih menu [1-5] : ");
    int selectedMenu = int.parse(stdin.readLineSync());
    switch (selectedMenu) {
      case 1:
        addItem();
        startProgram();
        break;
      case 2:
        removeItem();
        startProgram();
        break;
      case 3:
        showMyCart();
        startProgram();
        break;
      case 4:
        checkoutMyCart();
        break;
      case 5:
        print("m : Keluar aplikasi.");
        break;
      default:
        print("m : Menu tidak tersedia.");
        startProgram();
    }
  }

  //tambah barang
  void addItem() {
    print("----------------------------");
    print("Barang di Toko kami.");
    print("----------------------------");
    menu.showItem(_listDataItem);
    print("----------------------------");
    stdout.write("Pilih barang dengan ID : ");
    String itemId = stdin.readLineSync();
    bool itemFound = false;
    for (var i = 0; i < _listDataItem.length; i++) {
      if (itemId.toLowerCase() ==
          _listDataItem.elementAt(i).getItemId().toLowerCase()) {
        itemFound = true;
        _myListItem.add(_listDataItem.elementAt(i));
        print("m : Barang berhasil ditambahkan.");
        break;
      }
    }
    if (!itemFound) {
      print("m : Barang tidak ditemuan.");
    }
    print("----------------------------");
  }

  //hapus barang
  void removeItem() {
    print("----------------------------");
    print("Hapus barang di keranjang anda.");
    print("----------------------------");
    menu.showItem(_myListItem);
    print("----------------------------");
    stdout.write("Pilih barang dengan ID : ");
    String itemId = stdin.readLineSync();
    bool itemFound = false;
    for (var i = 0; i < _myListItem.length; i++) {
      if (itemId.toLowerCase() ==
          _myListItem.elementAt(i).getItemId().toLowerCase()) {
        itemFound = true;
        _myListItem.removeAt(i);
        print("m : Barang berhasil dihapus.");
        break;
      }
    }
    if (!itemFound) {
      print("m : Barang tidak ditemuan.");
    }
    print("----------------------------");
  }

  //tammpilakn keranjang
  void showMyCart() {
    print("----------------------------");
    print("Barang di keranjang anda.");
    print("----------------------------");
    menu.showItem(_myListItem);
    print("----------------------------");
  }

  //menu bayar
  void checkoutMyCart() {
    print("----------------------------");
    print("Barang di keranjang anda.");
    print("----------------------------");
    menu.showItem(_myListItem);
    print("----------------------------");
    int totalPrice = 0;
    for (var i = 0; i < _myListItem.length; i++) {
      totalPrice += _myListItem.elementAt(i).getItemPrice();
    }
    print("Total pembayaran : Rp. $totalPrice");
    print("----------------------------");
    stdout.write("Ingin membayar? [y/n] : ");
    String payOption = stdin.readLineSync();
    if (payOption.toLowerCase() == "y") {
      messages.showReceipt(_account, _myListItem, totalPrice);
      print("Terimakasih telah berbelanja di toko kami.");
    } else {
      startProgram();
    }
  }
}
