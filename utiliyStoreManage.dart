import 'dart:io';

class UtilityStore {
  late int customerId;
  late String customerName;
  late var accounts = [];

  // methods => function
  // crud app
  void menu() {
    print("Menu");
    print("**********************Utility Store*****************************");
    print("1:insert");
    print("2:read");
    print("3:update");
    print("4:delete");
    print("5:exit");
  }

  // for user choice
  int choice() {
    menu();
    print("Enter your choice");
    int choice = int.parse(stdin.readLineSync()!);
    return choice;
  }

// inserting data
  void insert() {
    print("Enter your customer id ");
    customerId = int.parse(stdin.readLineSync()!);
    print("Enter your customer name ");
    customerName = stdin.readLineSync()!;
    accounts.add({"id": customerId, "name": customerName});
    print(accounts);
  }

// read data
  void read() {
    print("All data ");
    print("Total data in the list is:\n ${accounts.length}");
    print(accounts);
  }

// update
  void update() {
    print("Enter your id ");
    var userid = int.parse(stdin.readLineSync()!);
    for (var i = 0; i < accounts.length; i++) {
      if (userid == accounts[i]["id"]) {
        print("Enter the name");
        var newName = stdin.readLineSync()!;
        accounts[i]['name'] = newName;
        return print(accounts[i]);
      } else {
        return print("invalid");
      }
    }
  }

  // start program
  void start() {
    do {
      switch (choice()) {
        case 1:
          insert();
          break;
        case 2:
          read();
          break;
        case 3:
          update();
          break;
        default:
          print('fdsasd');
      }
    } while (choice() != 5);
  }
}

// void purChaseItmes() {
//   GST = 17;
//   print(
//       '$customerName has id: $customerId purchase ${itemList[0]} = ${itemPrices[0]}, ${itemList[1]} = ${itemPrices[1]}, ${itemList[2]} = ${itemPrices[2]}, ${itemList[3]} = ${itemPrices[3]}');
//   billing = itemPrices[0] + itemPrices[1] + itemPrices[2] + itemPrices[3];
//   double totalBilling = billing! + GST;
//   print(' Total balance of $totalBilling');
// }

// void salesItems() {
//   saleItems = itemList;

//   print(
//       'The product sales by $SalesmanName and has id is $salesManId and sales $saleItems items');
// }

// void stocksing() {}

// final List<String> itemList;
// final List<double> itemPrices;
// final int salesManId;
// final String SalesmanName;
// List<int> purchaseItems = [];
// List<String> saleItems = [];
// List<String> stock = [];
// double? totleItems;
// double? billing;
// double GST = 0.0;

// UtilityStore({
//   required this.customerId,
//   required this.customerName,
//   required this.itemList,
//   required this.itemPrices,
//   required this.salesManId,
//   required this.SalesmanName,
// });
