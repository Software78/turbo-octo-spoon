// ignore: constant_identifier_names
enum Product { SSG, MAZ, COCOA, GOLD }


class Transaction {
  final Product product;
  final String truckNumber;
  final double amount;
  final String seller;
  final String buyer;
  final String transactionId;
  final DateTime dateTime;
  bool isAfexDelivery;

  Transaction({
    required this.product,
    required this.truckNumber,
    required this.amount,
    required this.buyer,
    required this.dateTime,
    this.isAfexDelivery = false,
    required this.seller,
    required this.transactionId,
  });
}
