import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

import 'package:mlingo/configs/app_color.dart';
import 'package:mlingo/configs/app_dimensions.dart';
import 'package:mlingo/configs/app_spacing.dart';
import 'package:mlingo/configs/app_theme.dart';
import 'package:mlingo/utils/formatters.dart';
import 'package:mlingo/widgets/primary_button.dart';
import 'package:mlingo/widgets/table/table_cells.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});


  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<bool> selectedList = List.generate(5, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        titleSpacing: spacingHuge,
        title: const Text("Mlingo"),
        titleTextStyle: Theme.of(context).textTheme.mlingoDashboardTextStyle,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            left: spacingHuge, right: spacingHuge, bottom: spacingHuge),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                PrimaryButton(
                  onPressed: () {},
                  buttonTitle: "Add New Key",
                  buttonWidth: 120,
                )
              ],
            ),
            const SizedBox(height: spacingLarge),
            Expanded(
              child: Card(
                shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(kCardRadius))),
                child: Expanded(
                    child: DataTable2(
                  showCheckboxColumn: true,
                  headingCheckboxTheme: CheckboxThemeData(
                      side: const BorderSide(
                          width: 0, color: AppColor.lighterGrey),
                      fillColor: MaterialStateColor.resolveWith((Set states) {
                        if (states.contains(MaterialState.selected)) {
                          return AppColor.mediumOrchid;
                        }
                        return AppColor.white;
                      })),
                  datarowCheckboxTheme: CheckboxThemeData(
                      side: const BorderSide(
                          width: 0, color: AppColor.lighterGrey),
                      fillColor: MaterialStateColor.resolveWith((Set states) {
                        if (states.contains(MaterialState.selected)) {
                          return AppColor.mediumOrchid;
                        }
                        return AppColor.white;
                      })),
                  headingTextStyle:
                      Theme.of(context).textTheme.tableColumnTextStyle,
                  columns: const [
                    DataColumn2(label: Text("Key"), fixedWidth: 200),
                    DataColumn2(label: Text("Status"), fixedWidth: 180),
                    DataColumn2(label: Text("English"))
                  ],
                  rows: List.generate(
                      5,
                      (index) => DataRow2(
                              selected: selectedList[index],
                              onSelectChanged: (value) {
                                setState(() {
                                  selectedList[index] = !selectedList[index];
                                });
                              },
                              cells: [
                                TableText(text: "hello"),
                                TableStatusChips(
                                    status: "Active",
                                    color: getColorFromStatus("Active")),
                                TableText(text: "Hello"),
                              ])),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
