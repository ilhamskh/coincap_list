import 'package:coincap_list/src/modules/assets_list/data/dtos/asset_dto.dart';
import 'package:coincap_list/src/modules/assets_list/data/dtos/asset_query_params.dart';

abstract interface class IAssetsRemoteDataSource {
  Future<List<AssetDto>> getAssets({AssetQueryParams? params});
}
