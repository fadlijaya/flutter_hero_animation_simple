import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class HeroAnimation extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    timeDilation = 5.0;

    return Scaffold(
      appBar: AppBar(
        title: Text('Standard Hero Animation'),
      ),
      body: Center(
        child: PhotoHero(
            photo: 'image/flutter.png',
            width: 300.0,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute (builder:(BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: Text('Transition Page'),
                  ),
                  body: Container(
                    color: Colors.black54,
                    padding: EdgeInsets.all(16.0),
                    alignment: Alignment.topLeft,
                    child: PhotoHero(
                      photo: 'image/flutter.png',
                      width: 100.0,
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                );
              }));
            }
        ),
      ),
    );
  }

}

class PhotoHero extends StatelessWidget{

  final String photo;
  final double width;
  final VoidCallback onTap;

  const PhotoHero({this.photo, this.onTap, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Hero(
        tag: photo,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Image.asset(photo, fit: BoxFit.contain,),
          ),
        ),
      ),
    );
  }

}
