import 'package:flutter/material.dart';

class space {
  int id;
  String name;
  String imageUrl;
  int price;
  String city;
  String country;
  int rating;
  String address;
  String phone;
  String map_url;
  List photos;
  int number_of_kitchens;
  int number_of_bedrooms;
  int number_of_cupboards;
  String image_url;

  space({
    this.id,
    this.name,
    this.imageUrl,
    this.price,
    this.city,
    this.country,
    this.rating,
    this.address,
    this.phone,
    this.map_url,
    this.photos,
    this.number_of_kitchens,
    this.number_of_bedrooms,
    this.number_of_cupboards,
    this.image_url,
  });

  space.fromJson(json) {
    id = json['id'];
    name = json['name'];
    imageUrl = json['imageUrl'];
    price = json['price'];
    city = json['city'];
    country = json['country'];
    rating = json['rating'];
    address = json['address'];
    phone = json['phone'];
    map_url = json['map_url'];
    photos = json['photos'];
    number_of_kitchens = json['number_of_kitchens'];
    number_of_bedrooms = json['number_of_bedrooms'];
    number_of_cupboards = json['number_of_cupboards'];
    image_url = json['image_url'];
  }
}
