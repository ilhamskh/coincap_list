import 'package:coincap_list/src/modules/assets_list/data/data_source/remote/i_assets_remote_data_source.dart';
import 'package:coincap_list/src/modules/assets_list/data/dtos/asset_dto.dart';
import 'package:coincap_list/src/modules/assets_list/data/dtos/asset_query_params.dart';
import 'package:dio/dio.dart';

final class AssetsRemoteDataSource implements IAssetsRemoteDataSource {
  final Dio _dio;
  AssetsRemoteDataSource(this._dio);

  @override
  Future<List<AssetDto>> getAssets({AssetQueryParams? params}) async {
    final res = await _dio.get('/assets', queryParameters: params?.toMap());
    return (res.data['data'] as List)
        .map((json) => AssetDto.fromJson(json))
        .toList();
  }
}
