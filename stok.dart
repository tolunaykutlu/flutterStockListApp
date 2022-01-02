import 'package:flutter/material.dart';

class StokPage extends StatefulWidget {
  const StokPage({Key? key}) : super(key: key);

  @override
  _StokPageState createState() => _StokPageState();
}

class _StokPageState extends State<StokPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("STOK SAYFASI"),
        ),
        body: Column(children: [
          _createDataTable(),
          Container(
              margin: EdgeInsets.only(top: 300),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ElevatedButton(
                        onPressed: () {}, child: Text("EKLE        ")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: ElevatedButton(
                        onPressed: () {}, child: Text("SİL            ")),
                  ),
                  ElevatedButton(onPressed: () {}, child: Text("GÜNCELLE"))
                ],
              ))
        ]));
  }
}

DataTable _createDataTable() {
  return DataTable(columns: _createColumns(), rows: _createRows());
}

List<DataColumn> _createColumns() {
  return [
    DataColumn(label: Text('KALİTE/KALINLIK')),
    DataColumn(label: Text('EN')),
    DataColumn(label: Text('KİLO/ADET'))
  ];
}

List<DataRow> _createRows() {
  return [
    DataRow(cells: [
      DataCell(Text('430')),
      DataCell(Text('1250 R')),
      DataCell(Text('1500'))
    ]),
    DataRow(cells: [
      DataCell(Text('304')),
      DataCell(Text('900 R')),
      DataCell(Text('900'))
    ])
  ];
}
