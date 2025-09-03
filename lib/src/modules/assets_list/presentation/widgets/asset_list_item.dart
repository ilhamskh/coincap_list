import 'package:coincap_list/src/modules/assets_list/domain/entities/asset.dart';
import 'package:flutter/material.dart';

class AssetListItem extends StatelessWidget {
  const AssetListItem({super.key, required this.boxColor, required this.asset});

  final Color boxColor;
  final Asset asset;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                  color: boxColor,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              const SizedBox(width: 16),
              Text(
                asset.symbol,
                style: const TextStyle(
                  fontSize: 17,
                  height: 24 / 17,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF17171A),
                ),
              ),
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '\$${asset.priceUsd.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 17,
                  height: 24 / 17,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF17171A),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
