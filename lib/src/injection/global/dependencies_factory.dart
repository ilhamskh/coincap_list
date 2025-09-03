import 'package:coincap_list/src/core/network/dio_client.dart';
import 'package:coincap_list/src/injection/config.dart';
import 'package:coincap_list/src/injection/global/dependencies_container.dart';
import 'package:coincap_list/src/modules/assets_list/data/data_source/remote/assets_remote_data_source.dart';
import 'package:coincap_list/src/modules/assets_list/data/repository/assets_repository.dart';
import 'package:logging/logging.dart';

import '../factories.dart';

class GlobalDependenciesFactory extends Factory<DependenciesContainer> {
  final Config config;

  GlobalDependenciesFactory(this.config);

  @override
  DependenciesContainer create() {
    try {
      final client = DioClient.build(config.baseUrl, apiKey: config.apiKey);
      final assetsRemoteDataSource = AssetsRemoteDataSource(client);
      final assetsRepository = AssetsRepositoryImpl(assetsRemoteDataSource);

      return DependenciesContainer(
        dioClient: client,
        assetsRemoteDataSource: assetsRemoteDataSource,
        assetsRepository: assetsRepository,
      );
    } catch (e, stackTrace) {
      Logger(
        'DependenciesFactory',
      ).severe('Failed to create dependencies', e, stackTrace);
      rethrow;
    }
  }
}
