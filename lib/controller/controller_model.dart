import 'package:project/model/product_model.dart';

class ProductController {
  final List<ProductModel> products = [
    ProductModel(
      code: 1001,
      name: "Spain jersey",
      category: "T-Shirt",
      oldprice: 15.0,
      discount: 10,
      image: ["assets/image/spainred.jpg", "assets/image/spain.jpg"],
      quantity: 1,
      rate: "4.5",
      view: "1.2K",
      size: ["S", "M", "L", "XL"],
      color: ["red", "white"],
      description: [
        "Show your support for La Roja with this red official Spain jersey, the classic home colour. "
            "Made from high-quality breathable fabric that keeps you cool during matches. "
            "The bold red finish carries the Spanish football federation crest with pride. "
            "Perfect for match days, training sessions, or casual wear to show your national pride.",
        "Show your support for La Roja with this crisp white Spain jersey, the sleek away option. "
            "Made from high-quality breathable fabric that keeps you cool during matches. "
            "The clean white base is finished with the Spanish football federation crest. "
            "Perfect for match days, training sessions, or casual wear to show your national pride.",
      ],
    ),
    ProductModel(
      code: 1002,
      name: "Portugal jersey",
      category: "T-Shirt",
      oldprice: 20.0,
      discount: 15,
      image: ["assets/image/portugal.jpg", "assets/image/portugalblack.jpg"],
      quantity: 1,
      rate: "4.7",
      view: "2.1K",
      size: ["M", "L", "XL", "XXL"],
      color: ["red", "black"],
      description: [
        "Celebrate Portugal's football legacy with this authentic red national team jersey. "
            "Crafted from premium lightweight fabric for optimal performance and comfort. "
            "The distinctive red design represents the nation's colours with the Portuguese crest prominently displayed. "
            "Ideal for fans to wear during matches, sports events, or everyday casual occasions.",
        "Celebrate Portugal's football legacy with this sleek black jersey, a modern alternate look. "
            "Crafted from premium lightweight fabric for optimal performance and comfort. "
            "The black finish is set off by the Portuguese crest prominently displayed. "
            "Ideal for fans to wear during matches, sports events, or everyday casual occasions.",
      ],
    ),

    ProductModel(
      code: 1003,
      name: "Norway jersey",
      category: "T-Shirt",
      oldprice: 35.0,
      discount: 20,
      image: ["assets/image/Norway.jpg", "assets/image/norwayblack.jpg"],
      quantity: 1,
      rate: "4.8",
      view: "3.4K",
      size: ["S", "M", "L", "XL"],
      color: ["Red", "Black"],
      description: [
        "Represent Norway with pride wearing this red official national team jersey. "
            "Designed with breathable fabric technology to ensure maximum comfort during intense activities. "
            "The classic red reflects the Norwegian flag, featuring the national team emblem. "
            "Perfect for football fans, sports enthusiasts, and anyone who wants to showcase their Norwegian pride.",
        "Represent Norway with pride wearing this black alternate national team jersey. "
            "Designed with breathable fabric technology to ensure maximum comfort during intense activities. "
            "The sleek black colourway features the national team emblem for a modern edge. "
            "Perfect for football fans, sports enthusiasts, and anyone who wants to showcase their Norwegian pride.",
      ],
    ),
    ProductModel(
      code: 1004,
      name: "Korea",
      category: "T-Shirt",
      oldprice: 40.0,
      discount: 12,
      image: ["assets/image/korea.jpg", "assets/image/koreawhite.jpg"],
      quantity: 1,
      rate: "4.6",
      view: "1.8K",
      size: ["S", "M", "L", "34"],
      color: ["Red", "White"],
      description: [
        "Embrace the vibrant Korean style with this stylish red home jersey. "
            "Made from premium moisture-wicking fabric that keeps you comfortable all day. "
            "The striking red colour symbolizes the nation's passion, paired with the national crest. "
            "Suitable for sports, fashion, or as a collectible item for K-culture enthusiasts.",
        "Embrace the vibrant Korean style with this stylish white away jersey. "
            "Made from premium moisture-wicking fabric that keeps you comfortable all day. "
            "The clean white base is paired with the national crest for a fresh, everyday look. "
            "Suitable for sports, fashion, or as a collectible item for K-culture enthusiasts.",
      ],
    ),
    ProductModel(
      code: 1005,
      name: "England jersey",
      category: "T-Shirt",
      oldprice: 60.0,
      discount: 25,
      image: ["assets/image/England.jpg", "assets/image/englandred.jpg"],
      quantity: 1,
      rate: "4.9",
      view: "4.5K",
      size: ["M", "L", "XL", "XXL"],
      color: ["white", "Red"],
      description: [
        "Show your Three Lions pride with this classic white England national team jersey. "
            "Crafted from high-performance fabric that offers breathability and durability. "
            "The iconic white jersey with red details and the famous Three Lions crest represents English football heritage. "
            "Perfect for match day, training, or casual wear to support your national team.",
        "Show your Three Lions pride with this bold red England away jersey, a nod to the iconic 1966 look. "
            "Crafted from high-performance fabric that offers breathability and durability. "
            "The vibrant red finish carries the famous Three Lions crest for a striking, statement look. "
            "Perfect for match day, training, or casual wear to support your national team.",
      ],
    ),
    ProductModel(
      code: 1006,
      name: "Croatia",
      category: "T-Shirt",
      oldprice: 28.0,
      discount: 10,
      image: [
        "assets/image/Croatia.jpg",
        "assets/image/crotiablue.jpg",
        "assets/image/crotaiblack.jpg",
      ],
      quantity: 1,
      rate: "4.4",
      view: "980",
      size: ["S", "M", "L", "XL"],
      color: ["Red", "Blue", "Black"],
      description: [
        "Celebrate Croatian football excellence with this red-based national team jersey. "
            "Features the recognizable checkerboard pattern that symbolizes Croatian identity and football pride. "
            "Made from lightweight, breathable fabric that ensures comfort during matches or casual wear. "
            "The jersey displays the Croatian football federation crest, making it a must-have for devoted fans.",
        "Celebrate Croatian football excellence with this blue alternate national team jersey. "
            "Features the recognizable checkerboard pattern rendered in a striking blue colourway. "
            "Made from lightweight, breathable fabric that ensures comfort during matches or casual wear. "
            "The jersey displays the Croatian football federation crest, making it a must-have for devoted fans.",
        "Celebrate Croatian football excellence with this black alternate national team jersey. "
            "Features the recognizable checkerboard pattern rendered in a bold black colourway. "
            "Made from lightweight, breathable fabric that ensures comfort during matches or casual wear. "
            "The jersey displays the Croatian football federation crest, making it a must-have for devoted fans.",
      ],
    ),

    ProductModel(
      code: 1007,
      name: "France jersey",
      category: "Hoodiee",
      oldprice: 22.0,
      discount: 15,
      image: ["assets/image/france.jpg", "assets/image/francegrey.jpg"],
      quantity: 1,
      rate: "4.3",
      view: "870",
      size: ["S", "M", "L", "XL"],
      color: ["Blue", "Grey"],
      description: [
        "Wear the colours of the world champions with this classic blue France national team jersey. "
            "The rich blue design represents French elegance and football tradition. "
            "Constructed from quality fabric that offers comfort and performance whether on the pitch or in the stands. "
            "Features the French Football Federation crest and national colours, ideal for fans and collectors alike.",
        "Wear the colours of the world champions with this sleek grey France alternate jersey. "
            "The understated grey tone offers a modern, minimalist take on French football tradition. "
            "Constructed from quality fabric that offers comfort and performance whether on the pitch or in the stands. "
            "Features the French Football Federation crest and national colours, ideal for fans and collectors alike.",
      ],
    ),
    ProductModel(
      code: 1008,
      name: "Brazil jersey",
      category: "Pant",
      oldprice: 45.0,
      discount: 20,
      image: ["assets/image/Brazil.jpg", "assets/image/brazilyellow.jpg"],
      quantity: 1,
      rate: "4.8",
      view: "3.2K",
      size: ["S", "M", "L", "XL"],
      color: ["Blue", "Yellow"],
      description: [
        "Embrace the football passion of Brazil with this blue alternate jersey. "
            "The deep blue tone offers a striking contrast to the classic look while keeping the same champion spirit. "
            "Made from high-quality fabric that provides exceptional comfort and breathability. "
            "Features the Brazilian Football Confederation crest, perfect for fans worldwide to show their support.",
        "Embrace the football passion of Brazil with this legendary yellow jersey. "
            "The iconic canary yellow with green trim represents the five-time world champions' vibrant playing style. "
            "Made from high-quality fabric that provides exceptional comfort and breathability. "
            "Features the Brazilian Football Confederation crest, perfect for fans worldwide to show their support "
            "for the beautiful game Brazilian style.",
      ],
    ),
    ProductModel(
      code: 1009,
      name: "Argentina jersey",
      category: "T-Shirt",
      oldprice: 38.0,
      discount: 18,
      image: ["assets/image/argentina.jpg", "assets/image/argentinablue.jpg"],
      quantity: 1,
      rate: "4.6",
      view: "1.5K",
      size: ["M", "L", "XL"],
      color: ["Sky Blue", "Blue"],
      description: [
        "Honor Argentine football greatness with this sky blue and white striped national team jersey. "
            "The famous sky blue tone represents Albiceleste tradition and excellence. "
            "Crafted from premium performance fabric that ensures comfort during any activity. "
            "Features the Argentine Football Association crest and is a must-have for fans celebrating South American football culture.",
        "Honor Argentine football greatness with this solid blue alternate national team jersey. "
            "The deep blue tone offers a modern twist on Albiceleste tradition. "
            "Crafted from premium performance fabric that ensures comfort during any activity. "
            "Features the Argentine Football Association crest and is a must-have for fans celebrating South American football culture.",
      ],
    ),
    ProductModel(
      code: 1010,
      name: "Japan jersey",
      category: "Long Shirt",
      oldprice: 25.0,
      discount: 10,
      image: ["assets/image/japen.jpg", "assets/image/japenwhite.jpg"],
      quantity: 1,
      rate: "4.7",
      view: "2.7K",
      size: ["S", "M", "L", "XL"],
      color: ["Blue", "White"],
      description: [
        "Show your support for the Samurai Blue with this authentic blue Japan national team jersey. "
            "Featuring a sleek blue design inspired by Japanese tradition and modern football. "
            "Made from innovative fabric that provides breathability and moisture management. "
            "The jersey displays the Japan Football Association crest and demonstrates the precision and elegance of Japanese football style.",
        "Show your support for the Samurai Blue with this crisp white Japan away jersey. "
            "Featuring a clean white design inspired by Japanese tradition and modern football. "
            "Made from innovative fabric that provides breathability and moisture management. "
            "The jersey displays the Japan Football Association crest and demonstrates the precision and elegance of Japanese football style.",
      ],
    ),
  ];
}
