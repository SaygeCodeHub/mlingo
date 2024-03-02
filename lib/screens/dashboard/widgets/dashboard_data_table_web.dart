import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:mlingo/configs/app_color.dart';
import 'package:mlingo/configs/app_spacing.dart';
import 'package:mlingo/configs/app_theme.dart';
import 'package:mlingo/data/models/translations/get_all_translations_model.dart';
import 'package:mlingo/utils/formatters.dart';
import 'package:mlingo/widgets/table/table_cells.dart';

class DashboardDataTableWeb extends StatefulWidget {
  final GetAllTranslationsModel getAllTranslationsModel;

  const DashboardDataTableWeb({required this.getAllTranslationsModel, Key? key})
      : super(key: key);

  @override
  DashboardDataTableWebState createState() => DashboardDataTableWebState();
}

class DashboardDataTableWebState extends State<DashboardDataTableWeb> {
  late List<bool> selectedList;

  @override
  void initState() {
    super.initState();
    selectedList = List.generate(
        widget.getAllTranslationsModel.data.length, (index) => false);
  }

  void _onCheckboxChanged(int index, bool value) {
    setState(() {
      selectedList[index] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DataTable2(
      showCheckboxColumn: true,
      headingCheckboxTheme: CheckboxThemeData(
          side: const BorderSide(width: 0, color: AppColor.lighterGrey),
          fillColor: MaterialStateColor.resolveWith((Set states) {
            if (states.contains(MaterialState.selected)) {
              return AppColor.mediumOrchid;
            }
            return AppColor.white;
          })),
      datarowCheckboxTheme: CheckboxThemeData(
          side: const BorderSide(width: 0, color: AppColor.lighterGrey),
          fillColor: MaterialStateColor.resolveWith((Set states) {
            if (states.contains(MaterialState.selected)) {
              return AppColor.mediumOrchid;
            }
            return AppColor.white;
          })),
      headingTextStyle: Theme.of(context).textTheme.tableColumnTextStyle,
      columns: const [
        DataColumn2(label: Text("Key"), fixedWidth: spacingXXXHuge),
        DataColumn2(label: Text("Status"), fixedWidth: spacingXXXXHuge),
        DataColumn2(label: Text("English"))
      ],
      rows: List.generate(widget.getAllTranslationsModel.data.length, (index) {
        return DataRow2.byIndex(
            index: index,
            selected: selectedList[index],
            onSelectChanged: (value) {
              _onCheckboxChanged(index, value!);
            },
            cells: [
              TableText(text: widget.getAllTranslationsModel.data[index].key),
              TableStatusChips(
                  status: "Active", color: getColorFromStatus("Active")),
              TableText(
                  text: widget.getAllTranslationsModel.data[index].english),
            ]);
      }),
    );
  }
}
