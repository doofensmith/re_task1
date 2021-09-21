// @dart=2.9

class Account {
  String _accountId;
  String _accountName;

  //constructor
  Account(String accountId, String accountName) {
    this._accountId = accountId;
    this._accountName = accountName;
  }

  //getter n setter
  String getAccountId() {
    return this._accountId;
  }

  void setAccountId(String accountId) {
    this._accountId = accountId;
  }

  String getAccountName() {
    return this._accountName;
  }

  void setAccountName(String accountName) {
    this._accountName = accountName;
  }
}
