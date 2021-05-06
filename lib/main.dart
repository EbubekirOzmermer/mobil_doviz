import 'package:flutter/material.dart';
import 'kurlar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MobilDöviz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<Currency> getCurrency() async {
    final baseUrl = "https://finans.truncgil.com/today.json";
    final response = await http.get(baseUrl);
    if (response.statusCode != 200) {
      throw Exception("Veri getirelemedi");
    }
    final convertedResponse = utf8.decode(response.body.runes.toList());
    final myjson = json.decode(convertedResponse);
    return Currency.fromJson(myjson);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.grey.shade800,
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Döviz",
              ),
              Tab(text: "Altın"),
            ],
          ),
          title: Row(
            children: [
              Text("MobilDöviz  "),
              Icon(Icons.account_balance_sharp),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FutureBuilder(
              future: getCurrency(),
              builder: (context, AsyncSnapshot<Currency> currency) {
                if (!currency.hasData) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  return ListView(children: [
                    Column(
                      children: [
                        Table(
                          children: [
                            TableRow(children: [
                              TableCell(
                                  child: Container(
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, bottom: 10, top: 10),
                                child: Text('İsim',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              )),
                              TableCell(
                                  child: Container(
                                padding: EdgeInsets.only(
                                    left: 55, right: 0, bottom: 10, top: 10),
                                child: Text('Alış',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              )),
                              TableCell(
                                  child: Container(
                                padding: EdgeInsets.only(
                                    left: 30, right: 30, bottom: 10, top: 10),
                                child: Text('Satış',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              )),
                            ]),
                            TableRow(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    border: Border.all(
                                        color: Colors.grey.shade400)),
                                children: [
                                  TableCell(
                                      child: Container(
                                          padding: EdgeInsets.only(
                                              left: 0,
                                              right: 10,
                                              bottom: 10,
                                              top: 10),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    child: Text(
                                                      "USD",
                                                      style: TextStyle(
                                                          fontSize: 18),
                                                    ),
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    child: Text(
                                                      "ABD Doları",
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ))),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 50,
                                        right: 0,
                                        bottom: 15,
                                        top: 15),
                                    child: Text(
                                      currency.data.usd.al,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 30,
                                        right: 10,
                                        bottom: 10,
                                        top: 15),
                                    child: Text(
                                      currency.data.usd.sat,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                ]),
                            TableRow(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey.shade400)),
                                children: [
                                  TableCell(
                                      child: Container(
                                          padding: EdgeInsets.only(
                                              left: 0,
                                              right: 10,
                                              bottom: 10,
                                              top: 10),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    child: Text(
                                                      "AUD",
                                                      style: TextStyle(
                                                          fontSize: 18),
                                                    ),
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    child: Text(
                                                      "Avustralya Doları",
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ))),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 50,
                                        right: 0,
                                        bottom: 10,
                                        top: 15),
                                    child: Text(
                                      currency.data.aud.al,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 30,
                                        right: 10,
                                        bottom: 10,
                                        top: 15),
                                    child: Text(
                                      currency.data.aud.sat,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                ]),
                            TableRow(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    border: Border.all(
                                        color: Colors.grey.shade400)),
                                children: [
                                  TableCell(
                                      child: Container(
                                          padding: EdgeInsets.only(
                                              left: 0,
                                              right: 10,
                                              bottom: 10,
                                              top: 10),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    child: Text(
                                                      "DKK",
                                                      style: TextStyle(
                                                          fontSize: 18),
                                                    ),
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    child: Text(
                                                      "Danimarka Kronu",
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ))),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 50,
                                        right: 0,
                                        bottom: 10,
                                        top: 15),
                                    child: Text(
                                      currency.data.dkk.al,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 30,
                                        right: 10,
                                        bottom: 10,
                                        top: 15),
                                    child: Text(
                                      currency.data.dkk.sat,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                ]),
                            TableRow(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey.shade400)),
                                children: [
                                  TableCell(
                                      child: Container(
                                          padding: EdgeInsets.only(
                                              left: 0,
                                              right: 10,
                                              bottom: 10,
                                              top: 10),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    child: Text(
                                                      "EUR",
                                                      style: TextStyle(
                                                          fontSize: 18),
                                                    ),
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    child: Text(
                                                      "Euro",
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ))),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 50,
                                        right: 0,
                                        bottom: 10,
                                        top: 15),
                                    child: Text(
                                      currency.data.eur.al,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 30,
                                        right: 10,
                                        bottom: 10,
                                        top: 15),
                                    child: Text(
                                      currency.data.eur.sat,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                ]),
                            TableRow(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    border: Border.all(
                                        color: Colors.grey.shade400)),
                                children: [
                                  TableCell(
                                      child: Container(
                                          padding: EdgeInsets.only(
                                              left: 0,
                                              right: 10,
                                              bottom: 10,
                                              top: 10),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    child: Text(
                                                      "GBP",
                                                      style: TextStyle(
                                                          fontSize: 18),
                                                    ),
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    child: Text(
                                                      "İngiliz Sterlini",
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ))),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 50,
                                        right: 0,
                                        bottom: 10,
                                        top: 15),
                                    child: Text(
                                      currency.data.gbp.al,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 30,
                                        right: 10,
                                        bottom: 10,
                                        top: 15),
                                    child: Text(
                                      currency.data.gbp.sat,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                ]),
                            TableRow(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey.shade400)),
                                children: [
                                  TableCell(
                                      child: Container(
                                          padding: EdgeInsets.only(
                                              left: 0,
                                              right: 10,
                                              bottom: 10,
                                              top: 10),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    child: Text(
                                                      "CHF",
                                                      style: TextStyle(
                                                          fontSize: 18),
                                                    ),
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    child: Text(
                                                      "İsviçre Frangı",
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ))),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 50,
                                        right: 0,
                                        bottom: 10,
                                        top: 15),
                                    child: Text(
                                      currency.data.chf.al,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 30,
                                        right: 10,
                                        bottom: 10,
                                        top: 15),
                                    child: Text(
                                      currency.data.chf.sat,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                ]),
                            TableRow(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    border: Border.all(
                                        color: Colors.grey.shade400)),
                                children: [
                                  TableCell(
                                      child: Container(
                                          padding: EdgeInsets.only(
                                              left: 0,
                                              right: 10,
                                              bottom: 10,
                                              top: 10),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    child: Text(
                                                      "SEK",
                                                      style: TextStyle(
                                                          fontSize: 18),
                                                    ),
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    child: Text(
                                                      "İsveç Kronu",
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ))),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 50,
                                        right: 0,
                                        bottom: 10,
                                        top: 15),
                                    child: Text(
                                      currency.data.sek.al,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 30,
                                        right: 10,
                                        bottom: 10,
                                        top: 15),
                                    child: Text(
                                      currency.data.sek.sat,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                ]),
                            TableRow(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey.shade400)),
                                children: [
                                  TableCell(
                                      child: Container(
                                          padding: EdgeInsets.only(
                                              left: 0,
                                              right: 10,
                                              bottom: 10,
                                              top: 10),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    child: Text(
                                                      "CAD",
                                                      style: TextStyle(
                                                          fontSize: 18),
                                                    ),
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    child: Text(
                                                      "Kanada Doları",
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ))),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 50,
                                        right: 0,
                                        bottom: 10,
                                        top: 15),
                                    child: Text(
                                      currency.data.cad.al,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 30,
                                        right: 10,
                                        bottom: 10,
                                        top: 15),
                                    child: Text(
                                      currency.data.cad.sat,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                ]),
                            TableRow(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    border: Border.all(
                                        color: Colors.grey.shade400)),
                                children: [
                                  TableCell(
                                      child: Container(
                                          padding: EdgeInsets.only(
                                              left: 0,
                                              right: 10,
                                              bottom: 10,
                                              top: 10),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    child: Text(
                                                      "KWD",
                                                      style: TextStyle(
                                                          fontSize: 18),
                                                    ),
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    child: Text(
                                                      "Kuveyt Dinarı",
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ))),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 50,
                                        right: 0,
                                        bottom: 10,
                                        top: 15),
                                    child: Text(
                                      currency.data.kwd.al,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 30,
                                        right: 10,
                                        bottom: 10,
                                        top: 15),
                                    child: Text(
                                      currency.data.kwd.sat,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                ]),
                            TableRow(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey.shade400)),
                                children: [
                                  TableCell(
                                      child: Container(
                                          padding: EdgeInsets.only(
                                              left: 0,
                                              right: 10,
                                              bottom: 10,
                                              top: 10),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    child: Text(
                                                      "NOK",
                                                      style: TextStyle(
                                                          fontSize: 18),
                                                    ),
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    child: Text(
                                                      "Norveç Kronu",
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                    padding: EdgeInsets.only(
                                                        left: 10),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ))),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 50,
                                        right: 0,
                                        bottom: 10,
                                        top: 15),
                                    child: Text(
                                      currency.data.kwd.al,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 30,
                                        right: 10,
                                        bottom: 10,
                                        top: 15),
                                    child: Text(
                                      currency.data.kwd.sat,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                ]),
                          ],
                        ),
                      ],
                    ),
                  ]);
                }
              },
            ),
            FutureBuilder(
              future: getCurrency(),
              builder: (context, AsyncSnapshot<Currency> currency) {
                if (!currency.hasData) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  return ListView(children: [
                    Column(
                      children: [
                        Table(
                          children: [
                            TableRow(children: [
                              TableCell(
                                  child: Container(
                                padding: EdgeInsets.only(
                                    left: 15, right: 10, bottom: 10, top: 10),
                                child: Text(
                                  'İsim',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              )),
                              TableCell(
                                  child: Container(
                                padding: EdgeInsets.only(
                                    left: 55, right: 0, bottom: 10, top: 10),
                                child: Text(
                                  'Alış',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              )),
                              TableCell(
                                  child: Container(
                                padding: EdgeInsets.only(
                                    left: 30, right: 30, bottom: 10, top: 10),
                                child: Text(
                                  'Satış',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              )),
                            ]),
                            TableRow(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    border: Border.all(
                                        color: Colors.grey.shade400)),
                                children: [
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      'Gram Altın',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 50,
                                        right: 0,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      currency.data.gramAltin.al,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 30,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      currency.data.gramAltin.sat,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                ]),
                            TableRow(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey.shade400)),
                                children: [
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 10,
                                        right: 0,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      'Çeyrek Altın',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 50,
                                        right: 0,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      currency.data.ceyrekAltin.al,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 30,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      currency.data.ceyrekAltin.sat,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                ]),
                            TableRow(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    border: Border.all(
                                        color: Colors.grey.shade400)),
                                children: [
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      'Yarım Altın',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 50,
                                        right: 0,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      currency.data.yarimAltin.al,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 30,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      currency.data.yarimAltin.sat,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                ]),
                            TableRow(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey.shade400)),
                                children: [
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      'Tam Altın',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 50,
                                        right: 0,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      currency.data.tamAltin.al,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 30,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      currency.data.tamAltin.sat,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                ]),
                            TableRow(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    border: Border.all(
                                        color: Colors.grey.shade400)),
                                children: [
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 10,
                                        right: 0,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      'Cumhuriyet Altını',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 50,
                                        right: 0,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      currency.data.cumhuriyetAltini.al,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 30,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      currency.data.cumhuriyetAltini.sat,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                ]),
                            TableRow(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey.shade400)),
                                children: [
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 10,
                                        right: 0,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      'Ata Altın',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 50,
                                        right: 0,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      currency.data.ataAltin.al,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 30,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      currency.data.ataAltin.sat,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                ]),
                            TableRow(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    border: Border.all(
                                        color: Colors.grey.shade400)),
                                children: [
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      '14 Ayar Altın',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 50,
                                        right: 0,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      currency.data.the14AyarAltin.al,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 30,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      currency.data.the14AyarAltin.sat,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                ]),
                            TableRow(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey.shade400)),
                                children: [
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      '18 Ayar Altın',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 50,
                                        right: 0,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      currency.data.the18AyarAltin.al,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 30,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      currency.data.the18AyarAltin.sat,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                ]),
                            TableRow(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    border: Border.all(
                                        color: Colors.grey.shade400)),
                                children: [
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      '22 Ayar Bilezik',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 50,
                                        right: 0,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      currency.data.the22AyarBilezik.al,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 30,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      currency.data.the22AyarBilezik.sat,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                ]),
                            TableRow(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey.shade400)),
                                children: [
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      'Gümüş',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 50,
                                        right: 0,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      currency.data.gumus.al,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                  TableCell(
                                      child: Container(
                                    padding: EdgeInsets.only(
                                        left: 30,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Text(
                                      currency.data.gumus.sat,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  )),
                                ])
                          ],
                        ),
                      ],
                    ),
                  ]);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
