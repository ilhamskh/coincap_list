import 'package:coincap_list/src/core/utils/debouncer.dart';
import 'package:coincap_list/src/modules/assets_list/data/dtos/asset_query_params.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:coincap_list/src/modules/assets_list/domain/repository/i_assets_repository.dart';
import 'package:coincap_list/src/modules/assets_list/domain/entities/asset.dart';
import 'package:coincap_list/src/modules/assets_list/presentation/bloc/assets_state.dart';

class AssetsCubit extends Cubit<AssetsState> {
  AssetsCubit({required IAssetsRepository assetsRepository})
    : _assetsRepository = assetsRepository,
      super(const AssetsState.initial());

  final IAssetsRepository _assetsRepository;

  final _assetsController = BehaviorSubject<List<Asset>>.seeded([]);
  final _isLoadingController = BehaviorSubject<bool>.seeded(false);
  final _isLoadingMoreController = BehaviorSubject<bool>.seeded(false);
  final _hasMoreDataController = BehaviorSubject<bool>.seeded(true);

  int _currentOffset = 0;
  static const int _limit = 15;
  final _loadMoreDebouncer = Debouncer(
    delay: const Duration(milliseconds: 200),
  );

  Future<void> loadAssets() async {
    if (_isLoadingController.value) return;

    try {
      emit(const AssetsState.loading());
      _isLoadingController.add(true);
      _currentOffset = 0;

      final assets = await _assetsRepository.getAssets(
        params: AssetQueryParams(limit: _limit, offset: _currentOffset),
      );

      _assetsController.add(assets);
      _hasMoreDataController.add(assets.length >= _limit);
      _currentOffset += _limit;

      emit(AssetsState.loaded(assets));
    } catch (e) {
      emit(AssetsState.error('Failed to load assets: $e'));
    } finally {
      _isLoadingController.add(false);
    }
  }

  Future<void> loadMoreAssets() async {
    if (_isLoadingMoreController.value || !_hasMoreDataController.value) return;

    _loadMoreDebouncer(() async {
      if (_isLoadingMoreController.value || !_hasMoreDataController.value) {
        return;
      }

      try {
        final currentAssets = _assetsController.value;
        emit(AssetsState.loadingMore(currentAssets));
        _isLoadingMoreController.add(true);

        final newAssets = await _assetsRepository.getAssets(
          params: AssetQueryParams(limit: _limit, offset: _currentOffset),
        );

        final allAssets = [...currentAssets, ...newAssets];
        _assetsController.add(allAssets);
        _hasMoreDataController.add(newAssets.length >= _limit);
        _currentOffset += _limit;

        emit(AssetsState.loaded(allAssets));
      } catch (e) {
        emit(AssetsState.error('Failed to load more assets: $e'));
      } finally {
        _isLoadingMoreController.add(false);
      }
    });
  }

  void reset() {
    _loadMoreDebouncer.cancel();
    _assetsController.add([]);
    _isLoadingController.add(false);
    _isLoadingMoreController.add(false);
    _hasMoreDataController.add(true);
    _currentOffset = 0;
    emit(const AssetsState.initial());
  }

  @override
  Future<void> close() {
    _loadMoreDebouncer.dispose();
    _assetsController.close();
    _isLoadingController.close();
    _isLoadingMoreController.close();
    _hasMoreDataController.close();
    return super.close();
  }
}

extension AssetsCubitStreamsExtension on AssetsCubit {
  Stream<List<Asset>> get assetsStream => _assetsController.stream;
  Stream<bool> get isLoadingStream => _isLoadingController.stream;
  Stream<bool> get isLoadingMoreStream => _isLoadingMoreController.stream;
  Stream<bool> get hasMoreDataStream => _hasMoreDataController.stream;

  List<Asset> get assets => _assetsController.value;
  bool get isLoading => _isLoadingController.value;
  bool get isLoadingMore => _isLoadingMoreController.value;
  bool get hasMoreData => _hasMoreDataController.value;

  bool get hasAssets => assets.isNotEmpty;
  bool get canLoadMore => hasMoreData && !isLoading && !isLoadingMore;
}
