import 'package:flutter/material.dart';

import '../../models/transaction_model.dart';
import '../dashboard_delivery/controller.dart';
import '../notifications/controller.dart';
import 'view.dart';

class ContractDetailsScreen extends StatefulWidget {
  const ContractDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ContractDetailsScreen> createState() => ContractDetailsController();
}

class ContractDetailsController extends State<ContractDetailsScreen> {
  pop() {
    print('object');
    Navigator.pop(context);
  }

  final List<Transaction> transaction = [
    Transaction(
      truckNumber: "KAN - 345SY",
      product: Product.COCOA,
      amount: 33.4,
      buyer: "AFTL_Saminaka",
      dateTime: DateTime(2020),
      seller: "Animal Care",
      transactionId: "OTC-363-22573378487015320",
    ),
    Transaction(
      truckNumber: "KAN - 345SY",
      amount: 33.4,
      product: Product.GOLD,
      buyer: "AFTL_Saminaka",
      dateTime: DateTime(2020),
      seller: "Animal Care",
      transactionId: "OTC-363-22573378487015320",
      isAfexDelivery: true,
    ),
    Transaction(
      truckNumber: "KAN - 345SY",
      amount: 33.4,
      product: Product.MAZ,
      buyer: "AFTL_Saminaka",
      dateTime: DateTime(2020),
      seller: "Animal Care",
      transactionId: "OTC-363-22573378487015320",
      isAfexDelivery: true,
    ),
    Transaction(
      truckNumber: "KAN - 345SY",
      product: Product.COCOA,
      amount: 33.4,
      buyer: "AFTL_Saminaka",
      dateTime: DateTime(2020),
      seller: "Animal Care",
      transactionId: "OTC-363-22573378487015320",
    ),
    Transaction(
      truckNumber: "KAN - 345SY",
      amount: 33.4,
      product: Product.GOLD,
      buyer: "AFTL_Saminaka",
      dateTime: DateTime(2020),
      seller: "Animal Care",
      transactionId: "OTC-363-22573378487015320",
      isAfexDelivery: true,
    ),
    Transaction(
      truckNumber: "KAN - 345SY",
      amount: 33.4,
      product: Product.MAZ,
      buyer: "AFTL_Saminaka",
      dateTime: DateTime(2020),
      seller: "Animal Care",
      transactionId: "OTC-363-22573378487015320",
      isAfexDelivery: true,
    ),
    Transaction(
      truckNumber: "KAN - 345SY",
      product: Product.COCOA,
      amount: 33.4,
      buyer: "AFTL_Saminaka",
      dateTime: DateTime(2020),
      seller: "Animal Care",
      transactionId: "OTC-363-22573378487015320",
    ),
    Transaction(
      truckNumber: "KAN - 345SY",
      amount: 33.4,
      product: Product.GOLD,
      buyer: "AFTL_Saminaka",
      dateTime: DateTime(2020),
      seller: "Animal Care",
      transactionId: "OTC-363-22573378487015320",
      isAfexDelivery: true,
    ),
    Transaction(
      truckNumber: "KAN - 345SY",
      amount: 33.4,
      product: Product.MAZ,
      buyer: "AFTL_Saminaka",
      dateTime: DateTime(2020),
      seller: "Animal Care",
      transactionId: "OTC-363-22573378487015320",
      isAfexDelivery: true,
    ),
  ];

  navigateToDelivery() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const DashboardDeliveryScreen(),
      ),
    );
  }

  navigateToNotification() {
    print('object');
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const NotificationsScreen(),
      ),
    );
  }

  navigateToHistory() {
    print('object');
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ContractDetailsScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ContractDetailsView(this);
  }
}
