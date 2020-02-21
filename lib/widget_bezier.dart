import 'package:flutter/material.dart';

class  BezierWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return ClipPath(
      clipper: ClipHome(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height/2.7,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors:
              [Color(0xFFf9a45f),
                Color(0xFFf86a5c)]
          ),
        ),
      ),
    );
  }
}

class ClipHome extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var lol = ((size.width/2)/2);
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width/4, size.height/2, size.width/2, size.height/2);
    path.quadraticBezierTo(size.width, size.height/2, size.width, 0);
    path.close();
    return path;

  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper !=this;
  }

}