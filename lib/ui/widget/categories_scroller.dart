import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriesScroller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
          child: Row(
            children: <Widget>[
              new Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 3.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        width: 36.0,
                        height: 36.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xffF2C94C),
                        ),
                        child: new SvgPicture.asset(
                          'assets/icon/food.svg',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "Makanan",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: const Color(0xff828282),
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w400),
                          )),
                      Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "RP. 70.000",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: const Color(0xff333333),
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w700),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20.0),
              new Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 3.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        width: 36.0,
                        height: 36.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xff56CCF2),
                        ),
                        child: new SvgPicture.asset(
                          'assets/icon/signal.svg',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "Internet",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: const Color(0xff828282),
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w400),
                          )),
                      Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "RP. 70.000",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: const Color(0xff333333),
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w700),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20.0),
              new Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 3.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        width: 36.0,
                        height: 36.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xff9B51E0),
                        ),
                        child: new SvgPicture.asset(
                          'assets/icon/car.svg',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "Transportasi",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: const Color(0xff828282),
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w400),
                          )),
                      Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "RP. 70.000",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: const Color(0xff333333),
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w700),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20.0),
              new Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 3.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        width: 36.0,
                        height: 36.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xffF2994A),
                        ),
                        child: new SvgPicture.asset(
                          'assets/icon/education.svg',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "Edukasi",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: const Color(0xff828282),
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w400),
                          )),
                      Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "RP. 70.000",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: const Color(0xff333333),
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w700),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20.0),
              new Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 3.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        width: 36.0,
                        height: 36.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xffEB5757),
                        ),
                        child: new SvgPicture.asset(
                          'assets/icon/gift.svg',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "Hadiah",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: const Color(0xff828282),
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w400),
                          )),
                      Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "RP. 70.000",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: const Color(0xff333333),
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w700),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20.0),
              new Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 3.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        width: 36.0,
                        height: 36.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xff27AE60),
                        ),
                        child: new SvgPicture.asset(
                          'assets/icon/shopping.svg',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "Belanja",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: const Color(0xff828282),
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w400),
                          )),
                      Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "RP. 70.000",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: const Color(0xff333333),
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w700),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20.0),
              new Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 3.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        width: 36.0,
                        height: 36.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xffBB6BD9),
                        ),
                        child: new SvgPicture.asset(
                          'assets/icon/home.svg',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "Alat Rumah",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: const Color(0xff828282),
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w400),
                          )),
                      Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "RP. 70.000",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: const Color(0xff333333),
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w700),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20.0),
              new Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 3.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        width: 36.0,
                        height: 36.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xff2D9CDB),
                        ),
                        child: new SvgPicture.asset(
                          'assets/icon/sports.svg',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "Olahraga",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: const Color(0xff828282),
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w400),
                          )),
                      Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "RP. 70.000",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: const Color(0xff333333),
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w700),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20.0),
              new Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 3.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        width: 36.0,
                        height: 36.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xff2F80ED),
                        ),
                        child: new SvgPicture.asset(
                          'assets/icon/entertainment.svg',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "Hiburan",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: const Color(0xff828282),
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w400),
                          )),
                      Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Text(
                            "RP. 70.000",
                            style: TextStyle(
                                fontSize: 12.0,
                                color: const Color(0xff333333),
                                fontFamily: 'SourceSansPro',
                                fontWeight: FontWeight.w700),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
