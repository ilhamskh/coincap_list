import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:coincap_list/src/modules/assets_list/domain/entities/asset.dart';

part 'assets_state.freezed.dart';

@freezed
class AssetsState with _$AssetsState {
  const factory AssetsState.initial() = _AssetsInitial;
  const factory AssetsState.loading() = _AssetsLoading;
  const factory AssetsState.loaded(List<Asset> assets) = _AssetsLoaded;
  const factory AssetsState.loadingMore(List<Asset> assets) =
      _AssetsLoadingMore;
  const factory AssetsState.error(String message) = _AssetsError;
}
