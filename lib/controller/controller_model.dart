import 'package:project/model/product_model.dart';

class ProductController {
  final List<ProductModel> products = [
    ProductModel(
      code: 1001,
      name: "Spain jersey",
      category: "T-Shirt",
      oldprice: 15.0,
      discount: 10,
      image: "assets/image/spain.jpg",
      quantity: 1,
      rate: "4.5",
      view: "1.2K",
      size: ["S", "M", "L", "XL"],
      color: ["Black", "White", "Gray"],
      description:
          "Show your support for La Roja with this official Spain jersey. "
          "Made from high-quality breathable fabric that keeps you cool during matches. "
          "The jersey features the iconic red and yellow colors with the Spanish "
          "football federation crest. Perfect for match days, training sessions, "
          "or casual wear to show your national pride.",
    ),

    ProductModel(
      code: 1002,
      name: "Portugal jersey",
      category: "T-Shirt",
      oldprice: 20.0,
      discount: 15,
      image: "assets/image/portugal.jpg",
      quantity: 1,
      rate: "4.7",
      view: "2.1K",
      size: ["M", "L", "XL", "XXL"],
      color: ["White", "Black", "Beige"],
      description:
          "Celebrate Portugal's football legacy with this authentic national team jersey. "
          "Crafted from premium lightweight fabric for optimal performance and comfort. "
          "The distinctive red and green design represents the nation's colors with the "
          "Portuguese crest prominently displayed. Ideal for fans to wear during matches, "
          "sports events, or everyday casual occasions.",
    ),

    ProductModel(
      code: 1003,
      name: "Norway jersey",
      category: "T-Shirt",
      oldprice: 35.0,
      discount: 20,
      image: "assets/image/Norway.jpg",
      quantity: 1,
      rate: "4.8",
      view: "3.4K",
      size: ["S", "M", "L", "XL"],
      color: ["Gray", "Black", "Navy"],
      description:
          "Represent Norway with pride wearing this official national team jersey. "
          "Designed with breathable fabric technology to ensure maximum comfort during "
          "intense activities. The classic red, white, and blue color scheme reflects "
          "the Norwegian flag, featuring the national team emblem. Perfect for football "
          "fans, sports enthusiasts, and anyone who wants to showcase their Norwegian pride.",
    ),

    ProductModel(
      code: 1004,
      name: "Korea",
      category: "T-Shrit",
      oldprice: 40.0,
      discount: 12,
      image: "assets/image/korea.jpg",
      quantity: 1,
      rate: "4.6",
      view: "1.8K",
      size: ["28", "30", "32", "34", "36"],
      color: ["Blue", "Dark Blue", "Black"],
      description:
          "Embrace the vibrant Korean style with this stylish jersey. "
          "Made from premium moisture-wicking fabric that keeps you comfortable all day. "
          "The design incorporates elements of Korean culture with the national crest "
          "and striking red color that symbolizes the nation's passion. Suitable for "
          "sports, fashion, or as a collectible item for K-culture enthusiasts.",
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
      color: ["Brown", "Black", "Khaki"],
      description:
          "Show your Three Lions pride with this classic England national team jersey. "
          "Crafted from high-performance fabric that offers breathability and durability. "
          "The iconic white jersey with red details and the famous Three Lions crest "
          "represents English football heritage. Perfect for match day, training, "
          "or casual wear to support your national team.",
    ),

    ProductModel(
      code: 1006,
      name: "Croatia",
      category: "T-Shirt",
      oldprice: 28.0,
      discount: 10,
      image: "assets/image/Croatia.jpg",
      quantity: 1,
      rate: "4.4",
      view: "980",
      size: ["S", "M", "L", "XL"],
      color: ["Blue", "White", "Black"],
      description:
          "Celebrate Croatian football excellence with this distinctive national team jersey. "
          "Features the recognizable red and white checkerboard pattern that symbolizes "
          "Croatian identity and football pride. Made from lightweight, breathable fabric "
          "that ensures comfort during matches or casual wear. The jersey displays the "
          "Croatian football federation crest, making it a must-have for devoted fans.",
    ),

    ProductModel(
      code: 1007,
      name: "France jersey",
      category: "Shorts",
      oldprice: 22.0,
      discount: 15,
      image: "assets/image/france.jpg",
      quantity: 1,
      rate: "4.3",
      view: "870",
      size: ["28", "30", "32", "34", "36"],
      color: ["Khaki", "Black", "Navy"],
      description:
          "Wear the colors of the world champions with this France national team jersey. "
          "The classic blue design represents French elegance and football tradition. "
          "Constructed from quality fabric that offers comfort and performance whether "
          "on the pitch or in the stands. Features the French Football Federation crest "
          "and national colors, ideal for fans and collectors alike.",
    ),

    ProductModel(
      code: 1008,
      name: "Brazil jersey",
      category: "T-Shirt",
      oldprice: 45.0,
      discount: 20,
      image: "assets/image/Brazil.jpg",
      quantity: 1,
      rate: "4.8",
      view: "3.2K",
      size: ["S", "M", "L", "XL"],
      color: ["Pink", "White", "Black", "Red"],
      description:
          "Embrace the football passion of Brazil with this legendary yellow jersey. "
          "The iconic canary yellow with green trim represents the five-time world "
          "champions' vibrant playing style. Made from high-quality fabric that provides "
          "exceptional comfort and breathability. Features the Brazilian Football "
          "Confederation crest, perfect for fans worldwide to show their support "
          "for the beautiful game Brazilian style.",
    ),

    ProductModel(
      code: 1009,
      name: "Argentina jersey",
      category: "T-Shirt",
      oldprice: 38.0,
      discount: 18,
      image: "assets/image/argentina.jpg",
      quantity: 1,
      rate: "4.6",
      view: "1.5K",
      size: ["M", "L", "XL"],
      color: ["Cream", "Brown", "Black", "Gray"],
      description:
          "Honor Argentine football greatness with this legendary national team jersey. "
          "The famous sky blue and white striped design represents Albiceleste tradition "
          "and excellence. Crafted from premium performance fabric that ensures comfort "
          "during any activity. Features the Argentine Football Association crest and "
          "is a must-have for fans celebrating South American football culture.",
    ),

    ProductModel(
      code: 1010,
      name: "Japan jersey",
      category: "T-SHirt",
      oldprice: 25.0,
      discount: 10,
      image: "assets/image/japen.jpg",
      quantity: 1,
      rate: "4.7",
      view: "2.7K",
      size: ["S", "M", "L", "XL", "XXL"],
      color: ["Navy Blue", "White", "Black", "Gray"],
      description:
          "Show your support for the Samurai Blue with this authentic Japan national team jersey. "
          "Featuring a sleek blue design inspired by Japanese tradition and modern football. "
          "Made from innovative fabric that provides breathability and moisture management. "
          "The jersey displays the Japan Football Association crest and demonstrates "
          "the precision and elegance of Japanese football style.",
    ),
  ];
}
