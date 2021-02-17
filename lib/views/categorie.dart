import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:wallpapers/data/data.dart';
import 'package:wallpapers/model/wallpaper_model.dart';
import 'package:wallpapers/widget/widget.dart';

class Categories extends StatefulWidget {
  final String categorieName;
  Categories({this.categorieName});
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<WallpaperModel> Wallpapers = new List();
  getSearchWallpaper(String query) async {
    var response = await http.get(
        'https://api.pexels.com/v1/search?query=$query&per_page=80',
        headers: {'Authorization': apiKey});
    Map<String, dynamic> jsonData = jsonDecode(response.body);
    jsonData['photos'].forEach((element) {
      WallpaperModel wallpaperModel = new WallpaperModel();
      wallpaperModel = WallpaperModel.fromMap(element);
      Wallpapers.add(wallpaperModel);
    });

    setState(() {});
  }


  @override
  void initState() {
   getSearchWallpaper(widget.categorieName);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.lightBlue[100],
       appBar: AppBar(
         automaticallyImplyLeading: false,
        backgroundColor: Colors.blueGrey[800],
        title: brandName(),
        elevation: 0.0,
      ),
      body:SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top: 5),
          child: Column(
            children: [
              
                  
                 SizedBox(
                  height: 16,
                ),
                wallpapersList(Wallpapers: Wallpapers, context: context)
            ],
          ),
        ),
      ),
    );
  }
}