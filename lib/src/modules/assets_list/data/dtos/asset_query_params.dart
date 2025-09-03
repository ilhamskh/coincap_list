import 'package:equatable/equatable.dart';

class AssetQueryParams extends Equatable {
  final int? limit;
  final int? offset;

  const AssetQueryParams({this.limit = 15, this.offset = 0});

  Map<String, dynamic> toMap() {
    return {'limit': limit, 'offset': offset};
  }

  @override
  List<Object?> get props => [limit, offset];
}
