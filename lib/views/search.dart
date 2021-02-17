import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:wallpapers/data/data.dart';
import 'package:wallpapers/model/wallpaper_model.dart';
import 'package:wallpapers/widget/widget.dart';
import 'package:http/http.dart' as http;

class Search extends StatefulWidget {
  final String searchQuery;
  Search({this.searchQuery});
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<WallpaperModel> Wallpapers = new List();
   TextEditingController searchController = new TextEditingController();
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
    getSearchWallpaper(widget.searchQuery);
    super.initState();
    searchController.text =widget.searchQuery;
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
              Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                         
                          controller: searchController,
                           style: TextStyle(color:Colors.black,fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            
                              hintText: 'Search Wallpaper',
                              border: InputBorder.none),
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                          getSearchWallpaper(searchController.text);
                          },
                          child: Container(child: Icon(Icons.search))),
                    ],
                  ),
                ),
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