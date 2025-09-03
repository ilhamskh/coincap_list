import 'package:equatable/equatable.dart';

class Asset extends Equatable {
  final String id;
  final String symbol;
  final double priceUsd;

  const Asset({required this.id, required this.symbol, required this.priceUsd});

  @override
  List<Object?> get props => [id, symbol, priceUsd];
}
