import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_expense/ui/pages/insert_expense.dart';
import 'package:money_expense/ui/widget/categories_scroller.dart';
import 'package:money_expense/ui/widget/today_expense.dart';
import 'package:money_expense/ui/widget/yasterday_expense.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          new Padding(
            padding: EdgeInsets.only(top: 30.0),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Halo, User! ',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.w700),
                  )),
              SizedBox(height: 5.0),
              Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text('Jangan lupa catat keuanganmu setiap hari!',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: const Color(0xff828282),
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.w400))),
            ],
          ),
          SizedBox(height: 20.0),
          Center(child: _countCredit()),
          SizedBox(height: 20.0),
          Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text('Pengeluaran berdasarkan kategori',
                  style: TextStyle(
                      fontSize: 14.0,
                      color: const Color(0xff333333),
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.w700))),
          SizedBox(height: 20.0),
          CategoriesScroller(),
          SizedBox(height: 28.0),
          Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text('Hari ini',
                  style: TextStyle(
                      fontSize: 14.0,
                      color: const Color(0xff333333),
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.w700))),
          SizedBox(height: 20.0),
          TodayExpense(),
          SizedBox(height: 28.0),
          Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text('Kemarin',
                  style: TextStyle(
                      fontSize: 14.0,
                      color: const Color(0xff333333),
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.w700))),
          SizedBox(height: 20.0),
          YasterdayExpense(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff0A97B0),
        onPressed: () {
          Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => InsertExpense(),
          ));
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _countCredit() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 97.0,
          width: 158.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xff0A97B0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 14.0, left: 14.0),
                  child: Text('Pengeluaranmu\nhari ini',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: const Color(0xffFFFFFF),
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.w600))),
              Padding(
                  padding: EdgeInsets.only(top: 14.0, left: 14.0),
                  child: Text('RP. 30.000',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: const Color(0xffFFFFFF),
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.w700))),
            ],
          ),
        ),
        SizedBox(width: 15.0),
        Container(
          height: 97.0,
          width: 158.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xff46B5A7),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 14.0, left: 14.0),
                  child: Text('Pengeluaranmu\nbulan ini',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: const Color(0xffFFFFFF),
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.w600))),
              Padding(
                  padding: EdgeInsets.only(top: 14.0, left: 14.0),
                  child: Text('RP. 335.000',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: const Color(0xffFFFFFF),
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.w700))),
            ],
          ),
        )
      ],
    );
  }
}
