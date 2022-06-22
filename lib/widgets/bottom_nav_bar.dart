import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget{

  Size size;
  BottomNavBar(this.size);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
        left: 0,
      child: Container(
        width: size.width,
        height: 80,
        color: Colors.white,
        child: Stack(
          children: [
            CustomPaint(
              size: Size(size.width, 80),
              painter: BNBCustomPainter(),
            ),
            Center(
              heightFactor: 0.6,
              child: FloatingActionButton(
                onPressed: (){
                  print("Add");
                },
                backgroundColor: Colors.blue,
                child: Container(
                  width: 60,
                  height: 60,
                  child: Icon(Icons.add_outlined, size: 40,),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(0, 59, 129, 1),
                          Color.fromRGBO(0, 132, 255, 1),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                ),
                elevation: 0.1,
              ),
            ),
            Container(
              width: size.width,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: (){print("Home");}, icon: Image.asset('assets/icons/home.png')),
                  IconButton(onPressed: (){print("Chat");}, icon: Image.asset('assets/icons/chat.png')),
                  Container(width: size.width*0.2,),
                  IconButton(onPressed: (){print("User");}, icon: Image.asset('assets/icons/user.png')),
                  IconButton(onPressed: (){print("Notification");}, icon: Image.asset('assets/icons/notification.png')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}

class BNBCustomPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.white70..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 0);
    path.quadraticBezierTo(size.width*0.2, 0, size.width*0.35, 0);
    path.quadraticBezierTo(size.width*0.4, 0, size.width*0.4, 20);
    path.arcToPoint(Offset(size.width*0.6, 20), radius: Radius.circular(10), clockwise: false);
    path.quadraticBezierTo(size.width*0.6, 0, size.width*0.65, 0);
    path.quadraticBezierTo(size.width*0.8, 0, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawShadow(path, Colors.white, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
  
}