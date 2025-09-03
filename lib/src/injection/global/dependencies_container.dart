import 'package:coincap_list/src/modules/assets_list/data/data_source/remote/i_assets_remote_data_source.dart';
import 'package:coincap_list/src/modules/assets_list/domain/repository/i_assets_repository.dart';
import 'package:dio/dio.dart';

base class DependenciesContainer {
  const DependenciesContainer({
    required this.dioClient,
    required this.assetsRemoteDataSource,
    required this.assetsRepository,
  });

  final Dio dioClient;
  final IAssetsRemoteDataSource assetsRemoteDataSource;
  final IAssetsRepository assetsRepository;
}
