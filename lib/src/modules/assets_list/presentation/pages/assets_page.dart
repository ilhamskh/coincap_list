import 'package:coincap_list/src/core/utils/app_color_generator.dart';
import 'package:coincap_list/src/core/utils/debouncer.dart';
import 'package:coincap_list/src/modules/assets_list/presentation/bloc/assets_cubit.dart';
import 'package:coincap_list/src/modules/assets_list/presentation/widgets/asset_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:coincap_list/src/modules/assets_list/presentation/bloc/assets_state.dart';
import 'package:coincap_list/src/modules/assets_list/domain/entities/asset.dart';

class AssetsPage extends StatefulWidget {
  const AssetsPage({super.key});

  @override
  State<AssetsPage> createState() => _AssetsPageState();
}

class _AssetsPageState extends State<AssetsPage> {
  late final ScrollController _scrollController;
  late final Debouncer _debouncer;
  late final AssetsCubit _cubit;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _debouncer = Debouncer(delay: const Duration(milliseconds: 300));
    _cubit = context.read<AssetsCubit>();
    _scrollController.addListener(_onScroll);
    _cubit.loadAssets();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _debouncer.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      _debouncer.call(() {
        _cubit.loadMoreAssets();
      });
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.97);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: BlocBuilder<AssetsCubit, AssetsState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox.shrink(),
              loading: () =>
                  const Center(child: CircularProgressIndicator.adaptive()),
              loaded: (assets) => _buildAssetsListView(),
              loadingMore: (assets) => _buildAssetsListView(),
              error: (message) => _buildErrorWidget(message),
            );
          },
        ),
      ),
    );
  }

  Widget _buildAssetsListView() {
    return StreamBuilder<List<Asset>>(
      stream: _cubit.assetsStream,
      initialData: const [],
      builder: (context, assetsSnapshot) {
        return StreamBuilder<bool>(
          stream: _cubit.isLoadingMoreStream,
          initialData: false,
          builder: (context, loadingSnapshot) {
            final assets = assetsSnapshot.data ?? [];
            final isLoadingMore = loadingSnapshot.data ?? false;

            return ListView.builder(
              controller: _scrollController,
              itemCount: assets.length + (isLoadingMore ? 1 : 0),
              itemBuilder: (context, index) {
                if (index >= assets.length) {
                  _scrollController.animateTo(
                    _scrollController.position.maxScrollExtent + 80,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                  );
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Center(child: CircularProgressIndicator.adaptive()),
                  );
                }

                final asset = assets[index];
                final boxColor = AppColorGenerator.fromIndex(index);

                return AssetListItem(boxColor: boxColor, asset: asset);
              },
            );
          },
        );
      },
    );
  }

  Widget _buildErrorWidget(String message) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Error: $message',
            style: const TextStyle(color: Colors.red),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => _cubit.loadAssets(),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
