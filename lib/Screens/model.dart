import 'package:flutter/material.dart';

class Newsfeed{
  String? user;
  String? date;
  Image? image;

  Newsfeed({
    this.user, this.date, this.image
});
}

final List<Newsfeed> data = [

  Newsfeed(
    user: 'Nobaab Chowdhury',
    date: '9 December 2022',
    image: Image.asset("images/mozammel.jpg"),
  ),


];



