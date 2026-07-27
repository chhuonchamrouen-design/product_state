import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  final List banner = [
    "assets/image/baner.jpg",
    "assets/image/banner1.jpg",
    "assets/image/banner2.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: SafeArea(
        top: false,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 12),
                    _buildLocationBar(),
                    const SizedBox(height: 16),
                    _buildBanner(),
                    const SizedBox(height: 24),
                    const Text(
                      'Popular Brand',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                  ],
                ),
              ),
            ),
            // SliverToBoxAdapter(child: _buildBrandRow()),
            // const SliverToBoxAdapter(child: SizedBox(height: 20)),
            // SliverPadding(
            //   padding: const EdgeInsets.symmetric(horizontal: 16),
            //   sliver: _buildProductGrid(),
            // ),
            const SliverToBoxAdapter(child: SizedBox(height: 24)),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.all(10),
        child: Image.asset(
          'assets/images/logo.png',
          errorBuilder: (_, __, ___) =>
              const Icon(Icons.storefront, color: Colors.deepOrange),
        ),
      ),
      title: const Text(
        'SHOPPING',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
          letterSpacing: 0.5,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search, color: Colors.black),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.shopping_cart_outlined, color: Colors.black),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildLocationBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.location_on, color: Colors.blueAccent),
          ),
          const SizedBox(width: 10),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Send To',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                Text(
                  'Phnom Penh, Cambodia',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF6C7CF2),
              foregroundColor: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            child: const Text('Change'),
          ),
        ],
      ),
    );
  }

  Widget _buildBanner() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: ImageSlideshow(
        indicatorColor: Colors.transparent,
        indicatorBackgroundColor: Colors.transparent,
        onPageChanged: (value) {
          debugPrint('Page changed: $value');
        },
        autoPlayInterval: 3000,
        isLoop: true,
        children: banner
            .map((path) => Image.asset(path, fit: BoxFit.cover))
            .toList(),
      ),
    );
  }
}
//   Widget _buildBrandRow() {
//     return SizedBox(
//       height: 76,
//       child: ListView.separated(
//         scrollDirection: Axis.horizontal,
//         padding: const EdgeInsets.symmetric(horizontal: 16),
//         itemCount: HomePage._brands.length,
//         separatorBuilder: (_, __) => const SizedBox(width: 14),
//         itemBuilder: (context, index) {
//           final brand = HomePage._brands[index];
//           return Column(
//             children: [
//               CircleAvatar(
//                 radius: 28,
//                 backgroundColor: Colors.grey.shade200,
//                 backgroundImage: brand.logoUrl != null
//                     ? NetworkImage(brand.logoUrl!)
//                     : null,
//                 child: brand.logoUrl == null
//                     ? Text(
//                         brand.name,
//                         style: const TextStyle(
//                           fontSize: 9,
//                           fontWeight: FontWeight.bold,
//                         ),
//                         textAlign: TextAlign.center,
//                       )
//                     : null,
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildProductGrid() {
//     return SliverGrid(
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         mainAxisSpacing: 16,
//         crossAxisSpacing: 14,
//         childAspectRatio: 0.66,
//       ),
//       delegate: SliverChildBuilderDelegate(
//         (context, index) => _ProductCard(product: HomePage._products[index]),
//         childCount: HomePage._products.length,
//       ),
//     );
//   }
// }

// class _ProductCard extends StatelessWidget {
//   const _ProductCard({required this.product});

//   final _Product product;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Expanded(
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(14),
//             child: Container(
//               color: Colors.grey.shade200,
//               child: Image.network(
//                 product.imageUrl,
//                 fit: BoxFit.cover,
//                 width: double.infinity,
//                 errorBuilder: (_, __, ___) =>
//                     const Icon(Icons.image_not_supported, color: Colors.grey),
//               ),
//             ),
//           ),
//         ),
//         const SizedBox(height: 8),
//         Text(
//           product.name,
//           style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
//           maxLines: 1,
//           overflow: TextOverflow.ellipsis,
//         ),
//         const SizedBox(height: 4),
//         Row(
//           children: [
//             const Icon(Icons.star, size: 14, color: Colors.amber),
//             const SizedBox(width: 2),
//             Text(
//               product.rating.toString(),
//               style: const TextStyle(fontSize: 12, color: Colors.grey),
//             ),
//             const SizedBox(width: 8),
//             Text(
//               'View(${product.views})',
//               style: const TextStyle(fontSize: 12, color: Colors.grey),
//             ),
//           ],
//         ),
//         const SizedBox(height: 4),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               '\$${product.price.toStringAsFixed(2)}',
//               style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
//             ),
//             InkWell(
//               onTap: () {},
//               borderRadius: BorderRadius.circular(20),
//               child: Container(
//                 padding: const EdgeInsets.all(6),
//                 decoration: const BoxDecoration(
//                   color: Color(0xFF6C7CF2),
//                   shape: BoxShape.circle,
//                 ),
//                 child: const Icon(Icons.add, color: Colors.white, size: 16),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

// class _Brand {
//   const _Brand(this.name, this.logoUrl);
//   final String name;
//   final String? logoUrl;
// }

// class _Product {
//   const _Product({
//     required this.name,
//     required this.price,
//     required this.rating,
//     required this.views,
//     required this.imageUrl,
//   });

//   final String name;
//   final double price;
//   final double rating;
//   final int views;
//   final String imageUrl;
// }