import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:mlingo/configs/app_color.dart';
import 'package:mlingo/configs/app_theme.dart';
import 'package:mlingo/data/models/translations/get_all_translations_model.dart';
import 'package:mlingo/utils/formatters.dart';
import 'package:mlingo/widgets/table/table_cells.dart';

class DashboardDataTableMobile extends StatefulWidget {
  final GetAllTranslationsModel getAllTranslationsModel;
  final ScrollController verticalScroll = ScrollController();
  final ScrollController horizontalScroll = ScrollController();

  DashboardDataTableMobile({required this.getAllTranslationsModel, Key? key})
      : super(key: key);

  @override
  DashboardDataTableMobileState createState() =>
      DashboardDataTableMobileState();
}

class DashboardDataTableMobileState extends State<DashboardDataTableMobile> {
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
    return Scrollbar(
      controller: widget.horizontalScroll,
      child: Center(
        child: SingleChildScrollView(
          controller: widget.horizontalScroll,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            width: 500,
            child: DataTable2(
              scrollController: widget.verticalScroll,
              isVerticalScrollBarVisible: true,
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
              headingTextStyle:
                  Theme.of(context).textTheme.tableColumnTextStyle,
              columns: const [
                DataColumn2(label: Text("Key"), fixedWidth: 50),
                DataColumn2(label: Text("Status"), fixedWidth: 50),
                DataColumn2(label: Text("English"))
              ],
              rows: List.generate(widget.getAllTranslationsModel.data.length,
                  (index) {
                return DataRow2.byIndex(
                    index: index,
                    selected: selectedList[index],
                    onSelectChanged: (value) {
                      _onCheckboxChanged(index, value!);
                    },
                    cells: [
                      TableText(
                          text: widget.getAllTranslationsModel.data[index].key),
                      TableStatusChips(
                          status: "Active",
                          color: getColorFromStatus("Active")),
                      TableText(
                          text: widget
                              .getAllTranslationsModel.data[index].english),
                    ]);
              }),
            ),
          ),
        ),
      ),
    );
  }
}
