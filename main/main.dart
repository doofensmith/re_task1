// @dart=2.9

import 'dart:io';

import '../dummy/dummy_data.dart';
import '../model/account.dart';
import '../model/item.dart';
import '../program/program.dart';
import '../view/menu.dart';

main(List<String> args) {
  //Objek akun
  Account account;
  //objek my item / cart
  List<Item> myCart = [];
  Program program = Program(account, myCart);
  program.createAccount();
  program.startProgram();
}
