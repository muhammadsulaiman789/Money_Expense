
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:money_expense/ui/widget/modal_item.dart';

class InsertExpense extends StatefulWidget {
  @override
  _InsertExpenseState createState() => _InsertExpenseState();
}

class _InsertExpenseState extends State<InsertExpense> {
  var Date;
  final formKey = GlobalKey<FormState>();
  DateTime selectedDateStart = DateTime.now();

  TextEditingController controllernamapengeluaran = new TextEditingController();
  TextEditingController controllerkategori = new TextEditingController();
  TextEditingController controllertanggal = new TextEditingController();
  TextEditingController controllernominal = new TextEditingController();

  _selectDateStart(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDateStart,
        firstDate: new DateTime.now().add(Duration(days: -365)),
        lastDate: new DateTime.now().add(Duration(days: 365)));
    if (picked != null && picked != selectedDateStart)
      setState(() {
        selectedDateStart = picked;
        Date = new DateFormat('yMMMMEEEEd', 'id').format(picked);
        var date =
            "${picked.toLocal().year}/${picked.toLocal().month}/${picked.toLocal().day}";
        controllertanggal.text = Date;
      });
  }

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('id');
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: formKey,
          child: ListView(
            children: <Widget>[
              new Container(
                width: 200,
                padding: new EdgeInsets.all(10.0),
                child: new Column(
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.only(top: 15.0),
                    ),
                    ListTile(
                        title: new Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: const Color(0xff4F4F4F),
                          ),
                        ),
                        SizedBox(width: 30.0),
                        Center(
                            child: Text(
                          "Tambah Pengeluaran Baru",
                          style: TextStyle(
                              fontSize: 18.0,
                              color: const Color(0xff333333),
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        )),
                      ],
                    )),
                    SizedBox(height: 45.0),
                    Container(
                        width: 335.0,
                        child: new TextFormField(
                          controller: controllernamapengeluaran,
                          style: TextStyle(
                              fontSize: 14.0,
                              color: const Color(0xff333333),
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.w400),
                          decoration: new InputDecoration(
                              hintText: 'Nama Pengeluaran',
                              hintStyle: TextStyle(
                                  fontSize: 14.0,
                                  color: const Color(0xff828282),
                                  fontFamily: 'SourceSansPro',
                                  fontWeight: FontWeight.w400),
                              hoverColor: const Color(0xffE0E0E0),
                              border: new OutlineInputBorder(
                                  borderRadius:
                                      new BorderRadius.circular(6.0))),
                        )),
                    SizedBox(height: 20.0),
                    Container(
                        width: 335.0,
                        child: GestureDetector(
                            onTap: () => _settingModalBottomSheet(context),
                            child: AbsorbPointer(
                                child: new TextFormField(
                              controller: controllerkategori,
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: const Color(0xff333333),
                                  fontFamily: 'SourceSansPro',
                                  fontWeight: FontWeight.w400),
                              autofocus: false,
                              decoration: new InputDecoration(
                                hoverColor: const Color(0xffE0E0E0),
                                border: new OutlineInputBorder(
                                    borderRadius:
                                        new BorderRadius.circular(6.0)),
                                labelText: "Pilih Kategori",
                                suffixIcon: new SvgPicture.asset(
                                  'assets/icon/arrow.svg',
                                  fit: BoxFit.scaleDown,
                                ),
                                labelStyle: TextStyle(
                                    fontSize: 14.0,
                                    color: const Color(0xff828282),
                                    fontFamily: 'SourceSansPro',
                                    fontWeight: FontWeight.w400),
                              ),
                            )))),
                    SizedBox(height: 20.0),
                    Container(
                        width: 335.0,
                        child: GestureDetector(
                            onTap: () => _selectDateStart(context),
                            child: AbsorbPointer(
                                child: new TextFormField(
                              controller: controllertanggal,
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: const Color(0xff333333),
                                  fontFamily: 'SourceSansPro',
                                  fontWeight: FontWeight.w400),
                              autofocus: false,
                              decoration: new InputDecoration(
                                hoverColor: const Color(0xffE0E0E0),
                                border: new OutlineInputBorder(
                                    borderRadius:
                                        new BorderRadius.circular(6.0)),
                                labelText: "Tanggal Pengeluaran",
                                suffixIcon: new SvgPicture.asset(
                                    'assets/icon/Vector.svg',
                                    fit: BoxFit.scaleDown),
                                labelStyle: TextStyle(
                                    fontSize: 14.0,
                                    color: const Color(0xff828282),
                                    fontFamily: 'SourceSansPro',
                                    fontWeight: FontWeight.w400),
                              ),
                              keyboardType: TextInputType.datetime,
                            )))),
                    SizedBox(height: 20.0),
                    Container(
                        width: 335.0,
                        child: new TextFormField(
                          controller: controllernominal,
                          style: TextStyle(
                              fontSize: 14.0,
                              color: const Color(0xff333333),
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.w400),
                          decoration: new InputDecoration(
                              hintText: 'Nominal',
                              hintStyle: TextStyle(
                                  fontSize: 14.0,
                                  color: const Color(0xff828282),
                                  fontFamily: 'SourceSansPro',
                                  fontWeight: FontWeight.w400),
                              hoverColor: const Color(0xffE0E0E0),
                              border: new OutlineInputBorder(
                                  borderRadius:
                                      new BorderRadius.circular(6.0))),
                        )),
                    SizedBox(height: 32.0),
                    new SizedBox(
                      width: 335,
                      height: 50,
                      child: new RaisedButton(
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(6.0)),
                        color: const Color(0xff0A97B0),
                        onPressed: () {},
                        child: new Text(
                          "Simpan",
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
              ),
            ),
            child: Wrap(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: 16.0,
                        ),
                        Center(
                            child: Text(
                          "Pilih Kategori",
                          style: TextStyle(
                              fontSize: 14.0,
                              color: const Color(0xff4F4F4F),
                              fontFamily: 'OpenSans',
                              fontWeight: FontWeight.w600),
                        )),
                      ],
                    ),
                    Center(
                      child: IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(Icons.close),
                          iconSize: 20.0,
                          color: Colors.black),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 80.0)),
                Container(
                  //   constraints: BoxConstraints( maxWidth: double.infinity),
                  height: 320.0,
                  width: double.infinity,

                  child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    children: [
                      ModalItem(
                          title: 'Makanan',
                          icon: new SvgPicture.asset(
                            'assets/icon/food.svg',
                            fit: BoxFit.scaleDown,
                          ),
                          colorBox: const Color(0xffF2C94C),
                          onChange: () {}),
                      ModalItem(
                        title: 'Internet',
                        icon: new SvgPicture.asset(
                          'assets/icon/signal.svg',
                          fit: BoxFit.scaleDown,
                        ),
                        colorBox: const Color(0xff56CCF2),
                        onChange: () {},
                      ),
                      ModalItem(
                        title: 'Edukasi',
                        icon: new SvgPicture.asset(
                          'assets/icon/education.svg',
                          fit: BoxFit.scaleDown,
                        ),
                        colorBox: const Color(0xffF2994A),
                        onChange: () {},
                      ),
                      ModalItem(
                        title: 'Hadiah',
                        icon: new SvgPicture.asset(
                          'assets/icon/gift.svg',
                          fit: BoxFit.scaleDown,
                        ),
                        colorBox: const Color(0xffEB5757),
                        onChange: () {},
                      ),
                      ModalItem(
                        title: 'Transportasi',
                        icon: new SvgPicture.asset(
                          'assets/icon/car.svg',
                          fit: BoxFit.scaleDown,
                        ),
                        colorBox: const Color(0xff9B51E0),
                        onChange: () {},
                      ),
                      ModalItem(
                        title: 'Belanja',
                        icon: new SvgPicture.asset(
                          'assets/icon/shopping.svg',
                          fit: BoxFit.scaleDown,
                        ),
                        colorBox: const Color(0xff27AE60),
                        onChange: () {},
                      ),
                      ModalItem(
                        title: 'Alat Rumah',
                        icon: new SvgPicture.asset(
                          'assets/icon/home.svg',
                          fit: BoxFit.scaleDown,
                        ),
                        colorBox: const Color(0xffBB6BD9),
                        onChange: () {},
                      ),
                      ModalItem(
                        title: 'Olahraga',
                        icon: new SvgPicture.asset(
                          'assets/icon/sports.svg',
                          fit: BoxFit.scaleDown,
                        ),
                        colorBox: const Color(0xff2D9CDB),
                        onChange: () {},
                      ),
                      ModalItem(
                        title: 'Hiburan',
                        icon: new SvgPicture.asset(
                          'assets/icon/entertainment.svg',
                          fit: BoxFit.scaleDown,
                        ),
                        colorBox: const Color(0xff2F80ED),
                        onChange: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
