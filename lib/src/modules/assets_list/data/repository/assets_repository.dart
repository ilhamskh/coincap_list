import 'package:coincap_list/src/modules/assets_list/data/data_source/remote/i_assets_remote_data_source.dart';
import 'package:coincap_list/src/modules/assets_list/data/dtos/asset_query_params.dart';
import 'package:coincap_list/src/modules/assets_list/domain/entities/asset.dart';
import 'package:coincap_list/src/modules/assets_list/domain/repository/i_assets_repository.dart';

final class AssetsRepositoryImpl implements IAssetsRepository {
  final IAssetsRemoteDataSource _remoteDataSource;

  AssetsRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<Asset>> getAssets({AssetQueryParams? params}) async {
    try {
      final assetDtos = await _remoteDataSource.getAssets(params: params);
      return assetDtos.map((dto) => dto.toEntity()).toList();
    } catch (e) {
      throw Exception('Failed to load assets: $e');
    }
  }
}
