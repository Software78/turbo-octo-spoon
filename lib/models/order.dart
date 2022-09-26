class OrderModel {
  final double quantity;
  final String ordername;
  final String unique;
  final String seller;
  final String buyer;
  final String time;
  final String date;
  final String deliveryType;
  final double sellerPrice;
  final double buyerPrice;
  final String deliveryVolume;
  OrderModel({
    required this.sellerPrice,
    required this.buyerPrice,
    required this.deliveryVolume,
    required this.quantity,
    required this.ordername,
    required this.unique,
    required this.seller,
    required this.buyer,
    required this.time,
    required this.date,
    required this.deliveryType,
  });
}
