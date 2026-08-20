import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
import 'package:project/bloc/product_bloc.dart';
import 'package:project/bloc/product_event.dart';
import 'package:project/bloc/product_state.dart';
import 'package:project/controller/controllmode.dart';
import 'package:project/util/app_text.dart';
import 'package:project/view/home/product_detail_screen.drt.dart';
import 'package:provider/provider.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  void initState(){
    super.initState();
    context.read<ProductBloc>().add(LoadProduct());
  }
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controllmode>(context);

    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text(
          "Shop Sport",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          Switch(
            value: controller.isDark,
            onChanged: (value) {
            controller.changeTheme();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ========== Location Bar ==========
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.blue,
                          size: 24,
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Send to",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Cambodia Amazing",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "change",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ========== Image Slideshow ==========
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: ImageSlideshow(
                  width: double.infinity,
                  height: 200,
                  initialPage: 0,
                  indicatorColor: Colors.blue,
                  indicatorBackgroundColor: Colors.grey,
                  autoPlayInterval: 3000,
                  isLoop: true,
                  children: [
                    Image.asset('assets/image/worl.jpg', fit: BoxFit.cover),
                    Image.asset(
                      "assets/image/world cup.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset('assets/image/lejend.jpg', fit: BoxFit.cover),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            // ========== Popular Brand Title ==========
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AppText(
                    text: "Popular brand",
                    fontWeight: FontWeight.bold,
                    size: 22,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See all",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),

            // ========== Category Chips (driven by Bloc state) ==========
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
              child: SizedBox(
                height: 50,
                child: BlocBuilder<ProductBloc, ProductState>(
                  builder: (context, state) {
                  if (state.category.length <= 1) {
                    return const Center(child: CircularProgressIndicator());
                    }
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: state.category.length,
                      itemBuilder: (context, index) {
                        final category = state.category[index];
                        final isSelected =
                        category == (state.categories ?? "All");
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: GestureDetector(
                            onTap: () {
                              context.read<ProductBloc>().add(
                                FilterCategoryEvent(category: category),
                              );
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              height: 50,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 18,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: isSelected
                                    ? Colors.blue
                                    : Colors.grey[200],
                                border: Border.all(
                                  color: isSelected
                                      ? Colors.blue
                                      : Colors.grey.shade300,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  category,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: isSelected
                                        ? Colors.white
                                        : Colors.black87,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),

            // ========== Product Grid (driven by Bloc state) ==========
            BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                if (state.allProduct.isEmpty) {
                  return const Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
                final filteredProducts = state.filtercategory ?? state.allProduct;
                if (filteredProducts.isEmpty) {
                  return const Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Center(
                      child: Text(
                        "No products found in this category",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  );
                }

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: filteredProducts.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          childAspectRatio: 0.72,
                        ),
                    itemBuilder: (context, index) {
                      final product = filteredProducts[index];

                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[50],
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.blueGrey.shade100),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            // Image + Discount badge
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.vertical(
                                    top: Radius.circular(12),
                                  ),
                                  child: Image.asset(
                                    product.image,
                                    height: 160,
                                    width: double.infinity,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Positioned(
                                  top: 8,
                                  left: 8,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 3,
                                      horizontal: 8,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: AppText(
                                      text: "${product.discount}%",
                                      colors: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      size: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // Product Info
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.name,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 16,
                                      ),
                                      const SizedBox(width: 4),
                                      AppText(
                                        text: product.rate.toString(),
                                        colors: Colors.grey,
                                        size: 13,
                                      ),
                                      const SizedBox(width: 6),
                                      AppText(
                                        text: "View(${product.view})",
                                        size: 13,
                                        colors: Colors.grey,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 6),
                                  Row(
                                    children: [
                                      Text(
                                        "\$${product.oldprice.toStringAsFixed(2)}",
                                        style: const TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Colors.grey,
                                          fontSize: 12,
                                        ),
                                      ),
                                      const SizedBox(width: 6),
                                      Text(
                                        "\$${product.discount.toStringAsFixed(2)}",
                                        style: const TextStyle(
                                          color: Colors.blueAccent,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                      const Spacer(),
                                      GestureDetector(
                                        onTap: () {
                                          Get.to(
                                            () => ProductDetailScreen(
                                              product: product,
                                            ),
                                          );
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.all(6),
                                          decoration: const BoxDecoration(
                                            color: Colors.blue,
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 18,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              },
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}