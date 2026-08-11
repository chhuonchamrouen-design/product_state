import 'package:project/model/product_model.dart';

class ProductController {
  final List<ProductModel> products = [
    ProductModel(
      code: 1001,
      name: "Spain jersey",
      category: "T-Shirt",
      oldprice: 15.0,
      discount: 10,
      image: "assets/image/spainred.jpg",
      quantity: 1,
      rate: "4.5",
      view: "1.2K",
      size: ["S", "M", "L", "XL"],
      color: ["red", "white"],
      description:
          ("Show your support for La Roja with this red official Spain jersey, the classic home colour. "
          "Made from high-quality breathable fabric that keeps you cool during matches. "
          "The bold red finish carries the Spanish football federation crest with pride. "
          "Perfect for match days, training sessions, or casual wear to show your national pride."),
    ),
    ProductModel(
      code: 1002,
      name: "Portugal jersey",
      category: "T-Shirt",
      oldprice: 20.0,
      discount: 15,
      image: ("assets/image/portugal.jpg"),
      quantity: 1,
      rate: "4.7",
      view: "2.1K",
      size: ["M", "L", "XL", "XXL"],
      color: ["red", "black"],
      description:
          ("Show your support for La Roja with this red official Spain jersey, the classic home colour. "
          "Made from high-quality breathable fabric that keeps you cool during matches. "
          "The bold red finish carries the Spanish football federation crest with pride. "
          "Perfect for match days, training sessions, or casual wear to show your national pride."),
    ),

    ProductModel(
      code: 1003,
      name: "Norway jersey",
      category: "T-Shirt",
      oldprice: 35.0,
      discount: 20,
      image: ("assets/image/Norway.jpg"),
      quantity: 1,
      rate: "4.8",
      view: "3.4K",
      size: ["S", "M", "L", "XL"],
      color: ["Red", "Black"],
      description:
          ("Show your support for La Roja with this red official Spain jersey, the classic home colour. "
          "Made from high-quality breathable fabric that keeps you cool during matches. "
          "The bold red finish carries the Spanish football federation crest with pride. "
          "Perfect for match days, training sessions, or casual wear to show your national pride."),
    ),
    ProductModel(
      code: 1004,
      name: "Korea",
      category: "T-Shirt",
      oldprice: 40.0,
      discount: 12,
      image: (" assets/image/korea.jpg"),
      quantity: 1,
      rate: "4.6",
      view: "1.8K",
      size: ["S", "M", "L", "34"],
      color: ["Red", "White"],
      description:
          ("Show your support for La Roja with this red official Spain jersey, the classic home colour. "
          "Made from high-quality breathable fabric that keeps you cool during matches. "
          "The bold red finish carries the Spanish football federation crest with pride. "
          "Perfect for match days, training sessions, or casual wear to show your national pride."),
    ),
    ProductModel(
      code: 1005,
      name: "England jersey",
      category: "T-Shirt",
      oldprice: 60.0,
      discount: 25,
      image: "assets/image/England.jpg",
      quantity: 1,
      rate: "4.9",
      view: "4.5K",
      size: ["M", "L", "XL", "XXL"],
      color: ["white", "Red"],
      description:
          ("Show your support for La Roja with this red official Spain jersey, the classic home colour. "
          "Made from high-quality breathable fabric that keeps you cool during matches. "
          "The bold red finish carries the Spanish football federation crest with pride. "
          "Perfect for match days, training sessions, or casual wear to show your national pride."),
    ),
    ProductModel(
      code: 1006,
      name: "Croatia",
      category: "T-Shirt",
      oldprice: 28.0,
      discount: 10,
      image: ("assets/image/Croatia.jpg"),
      quantity: 1,
      rate: "4.4",
      view: "980",
      size: ["S", "M", "L", "XL"],
      color: ["Red", "Blue", "Black"],
      description:
          ("Show your support for La Roja with this red official Spain jersey, the classic home colour. "
          "Made from high-quality breathable fabric that keeps you cool during matches. "
          "The bold red finish carries the Spanish football federation crest with pride. "
          "Perfect for match days, training sessions, or casual wear to show your national pride."),
    ),
    ProductModel(
      code: 1007,
      name: "France jersey",
      category: "Hoodiee",
      oldprice: 22.0,
      discount: 15,
      image: ("assets/image/france.jpg"),
      quantity: 1,
      rate: "4.3",
      view: "870",
      size: ["S", "M", "L", "XL"],
      color: ["Blue", "Grey"],
      description:
          ("Show your support for La Roja with this red official Spain jersey, the classic home colour. "
          "Made from high-quality breathable fabric that keeps you cool during matches. "
          "The bold red finish carries the Spanish football federation crest with pride. "
          "Perfect for match days, training sessions, or casual wear to show your national pride."),
    ),
    ProductModel(
      code: 1008,
      name: "Brazil jersey",
      category: "Pant",
      oldprice: 45.0,
      discount: 20,
      image: ("assets/image/Brazil.jpg"),
      quantity: 1,
      rate: "4.8",
      view: "3.2K",
      size: ["S", "M", "L", "XL"],
      color: ["Blue", "Yellow"],
      description:
          ("Show your support for La Roja with this red official Spain jersey, the classic home colour. "
          "Made from high-quality breathable fabric that keeps you cool during matches. "
          "The bold red finish carries the Spanish football federation crest with pride. "
          "Perfect for match days, training sessions, or casual wear to show your national pride."),
    ),
    ProductModel(
      code: 1009,
      name: "Argentina jersey",
      category: "T-Shirt",
      oldprice: 38.0,
      discount: 18,
      image: ("assets/image/argentina.jpg"),
      quantity: 1,
      rate: "4.6",
      view: "1.5K",
      size: ["M", "L", "XL"],
      color: ["Sky Blue", "Blue"],
      description:
          ("Show your support for La Roja with this red official Spain jersey, the classic home colour. "
          "Made from high-quality breathable fabric that keeps you cool during matches. "
          "The bold red finish carries the Spanish football federation crest with pride. "
          "Perfect for match days, training sessions, or casual wear to show your national pride."),
    ),
    ProductModel(
      code: 1010,
      name: "Japan jersey",
      category: "Long Shirt",
      oldprice: 25.0,
      discount: 10,
      image: ("assets/image/japen.jpg"),
      quantity: 1,
      rate: "4.7",
      view: "2.7K",
      size: ["S", "M", "L", "XL"],
      color: ["Blue", "White"],
      description:
          ("Show your support for La Roja with this red official Spain jersey, the classic home colour. "
          "Made from high-quality breathable fabric that keeps you cool during matches. "
          "The bold red finish carries the Spanish football federation crest with pride. "
          "Perfect for match days, training sessions, or casual wear to show your national pride."),
    ),
  ];
}
