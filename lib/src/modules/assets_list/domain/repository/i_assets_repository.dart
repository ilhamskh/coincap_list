import 'package:coincap_list/src/modules/assets_list/data/dtos/asset_query_params.dart';
import 'package:coincap_list/src/modules/assets_list/domain/entities/asset.dart';

abstract interface class IAssetsRepository {
  Future<List<Asset>> getAssets({AssetQueryParams? params});
}
