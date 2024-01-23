import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mlingo/configs/app_color.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<bool> selectedRows = List.generate(100, (index) => false);
  List<String> cellValues = [
    'index',
    "Active",
    "Text99999999999input",
    "Text Input",
    "Text Input",
  ];

  List<DataCell> createDataCells(List<String> values) {
    return values.map((value) {
      return DataCell(Text(value), onTap: () {
        Navigator.pop(context);
      });
    }).toList();
  }

  List<String> columnNames = ['Key', 'Status', 'English', 'Hindi', 'German'];

  List<DataColumn> createDataColumns(List<String> names) {
    return names.map((name) {
      return DataColumn(label: Text(name));
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.white,
        body: Padding(
            padding:
                const EdgeInsets.only(left: 17, right: 17, bottom: 10, top: 10),
            child: LayoutBuilder(builder: (context, constraints) {
              return SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              if (constraints.maxWidth > 600)
                                IconButton(
                                    color: AppColor.white,
                                    onPressed: () {},
                                    icon: const Icon(CupertinoIcons.back,
                                        size: 25, color: AppColor.darkBlue)),
                              const Text('Translations',
                                  style: TextStyle(
                                      color: AppColor.darkBlue,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              const Spacer(),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColor.lightBlue,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      minimumSize: const Size(130, 50)),
                                  onPressed: () {},
                                  child: const Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.add,
                                            color: AppColor.white, size: 17),
                                        Text('ADD',
                                            style: TextStyle(
                                                color: AppColor.white,
                                                fontWeight: FontWeight.bold))
                                      ]))
                            ]),
                        const SizedBox(height: 10),
                        Container(
                            width: 2000,
                            decoration: BoxDecoration(
                                color: AppColor.white,
                                border:
                                    Border.all(width: 1, color: Colors.black12),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5))),
                            child: SingleChildScrollView(
                                physics: const BouncingScrollPhysics(),
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8, bottom: 8),
                                    child: DataTable(
                                        dataTextStyle: const TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black54,
                                            fontSize: 13),
                                        headingTextStyle: const TextStyle(
                                            fontFamily: 'Open Sans',
                                            fontWeight: FontWeight.bold,
                                            color: AppColor.darkBlue,
                                            fontSize: 15),
                                        showCheckboxColumn: true,
                                        checkboxHorizontalMargin: 20,
                                        headingRowColor: MaterialStateProperty
                                            .resolveWith<Color>(
                                                (Set<MaterialState> states) {
                                          if (states.contains(
                                              MaterialState.hovered)) {
                                            return Colors.white
                                                .withOpacity(0.5);
                                          }
                                          return AppColor.white;
                                        }),
                                        dividerThickness: 0.5,
                                        columns: createDataColumns(columnNames),
                                        rows: List.generate(10, (index) {
                                          return DataRow(
                                              color: MaterialStateProperty.all<
                                                  Color>(AppColor.white),
                                              onLongPress: () {},
                                              selected: selectedRows[index],
                                              onSelectChanged:
                                                  (bool? selected) {
                                                setState(() {
                                                  selectedRows[index] =
                                                      selected ?? false;
                                                });
                                              },
                                              cells:
                                                  createDataCells(cellValues));
                                        })))))
                      ]));
            })));
  }
}
