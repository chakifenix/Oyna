import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late OverlayEntry _overlayEntry;
  late OverlayEntry _overlayEntry1;

  @override
  void initState() {
    super.initState();

    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: 0, // Расположение текста на экране
        left: 0,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 96.h,
          color: Colors.white,
        ),
      ),
    );

    _overlayEntry1 = OverlayEntry(
      builder: (context) => Positioned(
        bottom: 0, // Расположение текста на экране
        left: 0,
        child: Container(
          padding: EdgeInsets.only(left: 40.w, right: 40.w),
          width: MediaQuery.of(context).size.width,
          height: 96.h,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                'images/oyna.svg',
                width: 154.w,
                height: 38.h,
              ),
              LeftMenu()
            ],
          ),
        ),
      ),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Overlay.of(context).insert(_overlayEntry);
      Overlay.of(context).insert(_overlayEntry1);
    });
  }

  @override
  void dispose() {
    _overlayEntry.remove();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'images/bg.png',
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 129.h, left: 40.w),
              child: Wrap(
                runSpacing: 36.h,
                spacing: 19.w,
                children: [
                  Container(
                    width: 633.w,
                    height: 432.h,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 307.w,
                    height: 432.h,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 307.w,
                    height: 432.h,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 307.w,
                    height: 307.h,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 307.w,
                    height: 307.h,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 307.w,
                    height: 307.h,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 307.w,
                    height: 307.h,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LeftMenu extends StatelessWidget {
  const LeftMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Menu(
          image: 'images/volumeoff.svg',
          title: 'откл',
        ),
        SizedBox(
          width: 40.w,
        ),
        Menu(
          image: 'images/volumeup.svg',
          title: 'звук',
        ),
        SizedBox(
          width: 40.w,
        ),
        Menu(
          image: 'images/Loading.svg',
          title: 'яркость',
        ),
        SizedBox(
          width: 40.w,
        ),
        Menu(
          image: 'images/moon.svg',
          title: 'сон',
        ),
        SizedBox(
          width: 40.w,
        ),
        Container(
          width: 1.w,
          height: 52.h,
          color: Colors.black,
        ),
        SizedBox(
          width: 40.w,
        ),
        Menu(
          image: 'images/Location.svg',
          title: 'карта',
        ),
        SizedBox(
          width: 40.w,
        ),
        Menu(
          image: 'images/Cloud.svg',
          title: 'погода',
        ),
        SizedBox(
          width: 40.w,
        ),
        Menu(
          image: 'images/frame.svg',
          title: 'водитель',
        ),
      ],
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          image,
          width: 30.w,
          height: 30.h,
        ),
        Text(
          title,
          style: TextStyle(
              decoration: TextDecoration.none,
              fontFamily: 'Exo 2',
              fontSize: 14.sp,
              color: Colors.black),
        )
      ],
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Второй экран'),
      ),
      body: Center(
        child: Text('Добро пожаловать на второй экран!'),
      ),
    );
  }
}
