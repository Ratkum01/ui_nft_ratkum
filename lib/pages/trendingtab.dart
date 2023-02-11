import 'package:flutter/material.dart';

import '../components/nft_card.dart';

class TrendingTab extends StatelessWidget {
  const TrendingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return NftCard(
      image: 'assets/images/nft/mon3.jpg',
    );
  }
}