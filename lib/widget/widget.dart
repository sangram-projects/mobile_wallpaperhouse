import 'package:flutter/material.dart';
import 'package:wallpapers/model/wallpaper_model.dart';
import 'package:wallpapers/views/image_view.dart';

Widget brandName() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Wallpaper',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        'house',
        style: TextStyle(
          color: Colors.blue[400],
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}

Widget wallpapersList({List<WallpaperModel> Wallpapers, context}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: GridView.count(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        crossAxisCount: 2,
        childAspectRatio: 0.6,
        mainAxisSpacing: 6.0,
        crossAxisSpacing: 6.0,
        children: Wallpapers.map((wallpaper) {
          return GridTile(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ImageView(
                      imgUrl: wallpaper.src.portrait,
                    )));
              },
              child: Hero(
                tag:  wallpaper.src.portrait,
                child: Container(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        wallpaper.src.portrait,
                        fit: BoxFit.cover,
                      )),
                ),
              ),
            ),
          );
        }).toList()),
  );
}
