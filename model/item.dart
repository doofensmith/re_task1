// @dart=2.9

class Item {
  String _itemId;
  String _itemName;
  int _itemPrice;

  //constructor
  Item(String itemId, String itemName, int itemPrice) {
    this._itemId = itemId;
    this._itemName = itemName;
    this._itemPrice = itemPrice;
  }

  //getter n setter
  String getItemId() {
    return this._itemId;
  }

  void setItemId(String itemId) {
    this._itemId = itemId;
  }

  String getItemName() {
    return this._itemName;
  }

  void setItemName(String itemName) {
    this._itemName = itemName;
  }

  int getItemPrice() {
    return this._itemPrice;
  }

  void setItemPrice(int itemPrice) {
    this._itemPrice = itemPrice;
  }
}
