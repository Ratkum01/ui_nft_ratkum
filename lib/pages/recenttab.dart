import 'package:flutter/material.dart';
import 'package:ui_nftapp_ratkum/components/nft_card.dart';

class RecentTab extends StatelessWidget {
  const RecentTab({super.key});

  @override
  Widget build(BuildContext context) {
    return NftCard(
      image: 'assets/images/nft/mon1.jpg',
    );
  }
}
