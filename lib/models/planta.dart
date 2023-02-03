class Planta {
   String? title;
   String? image;
   String? country;
   int? price;

  Planta({this.title, this.image, this.country, this.price});

  Planta.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    image = json['image'];
    country = json['country'];
    price = json['price'];
  }
}