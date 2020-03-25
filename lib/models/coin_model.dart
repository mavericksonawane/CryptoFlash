import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart'; // for @required

class Coin extends Equatable{
  final String name; // e.g BTC
  final String fullName; // e.g Bitcoin
  final double price; // e.g $10000

  const Coin({
    @required this.name, 
    @required this.fullName, 
    @required this.price
  });

  @override
  List<Object> get props => [
    name,
    fullName,
    price,
    ];
 
  @override
  String toString() => 
  'Coin { name: $name, fullName: $fullName, price: $price }';

  // factory constructor:
  factory Coin.fromJson(Map<String, dynamic> json) {
    return Coin(
      name: json['CoinInfo']['Name'] as String,
      fullName:json['CoinInfo']['FullName'] as String,
      price: (json['RAW']['INR']['PRICE'] as num).toDouble(),
    );
  }

}