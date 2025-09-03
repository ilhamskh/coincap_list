import 'package:coincap_list/src/injection/composition_root.dart';
import 'package:coincap_list/src/injection/widget/dependencies_scope.dart';
import 'package:coincap_list/src/modules/assets_list/presentation/bloc/assets_cubit.dart';
import 'package:coincap_list/src/modules/assets_list/presentation/pages/assets_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoincapListApp extends StatelessWidget {
  const CoincapListApp({super.key, required this.result});

  final CompositionResult result;

  @override
  Widget build(BuildContext context) {
    return DependenciesScope(
      dependencies: result.dependencies,
      child: MaterialApp(
        title: 'CoinCap App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: BlocProvider(
          create: (context) => AssetsCubit(
            assetsRepository: DependenciesScope.of(context).assetsRepository,
          ),
          child: const AssetsPage(),
        ),
      ),
    );
  }
}
