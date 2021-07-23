import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TodayExpense extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children:[
        Container(
        height: 67.0,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 3.0,
                spreadRadius: 1.0,
              ),
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                      child: new Container(
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
                  )),
                  SizedBox(
                    width: 16.0,
                  ),
                  Center(
                      child: Text(
                    "Ayam Geprek",
                    style: TextStyle(
                        fontSize: 14.0,
                        color: const Color(0xff333333),
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.w400),
                  )),
                ],
              ),
              Center(
                  child: Text(
                "RP. 17.000",
                style: TextStyle(
                    fontSize: 14.0,
                    color: const Color(0xff333333),
                    fontFamily: 'SourceSansPro',
                    fontWeight: FontWeight.w600),
              )),
            ],
          ),
        )
        )  ,
          Container(
              height: 67.0,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 3.0,
                      spreadRadius: 1.0,
                    ),
                  ]),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Center(
                            child: new Container(
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
                            ),),
                        SizedBox(
                          width: 16.0,
                        ),
                        Center(
                            child: Text(
                              "Gojek",
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: const Color(0xff333333),
                                  fontFamily: 'SourceSansPro',
                                  fontWeight: FontWeight.w400),
                            )),
                      ],
                    ),
                    Center(
                        child: Text(
                          "RP. 15.000",
                          style: TextStyle(
                              fontSize: 14.0,
                              color: const Color(0xff333333),
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.w600),
                        )),
                  ],
                ),
              )
          )
        ]
    );
  }
}
