import 'package:equatable/equatable.dart';

import '../../domain/entities/asset.dart';

class AssetDto extends Equatable {
  final String id;
  final String symbol;
  final double priceUsd;

  const AssetDto({
    required this.id,
    required this.symbol,
    required this.priceUsd,
  });

  factory AssetDto.fromJson(Map<String, dynamic> j) => AssetDto(
    id: j['id'],
    symbol: j['symbol'],
    priceUsd: double.tryParse(j['priceUsd'] ?? '') ?? 0,
  );

  Asset toEntity() => Asset(id: id, symbol: symbol, priceUsd: priceUsd);

  @override
  List<Object?> get props => [id, symbol, priceUsd];
}
