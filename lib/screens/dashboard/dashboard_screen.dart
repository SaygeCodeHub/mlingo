import 'package:flutter/material.dart';
import 'package:mlingo/configs/app_color.dart';
import 'package:mlingo/configs/new_app_theme.dart';
import 'package:mlingo/utils/constants/string_constants.dart';
import 'package:mlingo/widgets/primary_button.dart';
import '../../configs/app_dimensions.dart';

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
            padding: const EdgeInsets.only(
                left: kDashboardHorizontalPadding,
                right: kDashboardHorizontalPadding,
                bottom: kDashboardVerticalPadding,
                top: kDashboardVerticalPadding),
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
                                Text(StringConstants.kMlingo,
                                    style: Theme.of(context)
                                        .textTheme
                                        .dataTableNameTextStyle
                                        .copyWith(
                                            fontFamily: "Urbanist",
                                            fontWeight: FontWeight.w900)),
                              const Spacer(),
                              PrimaryButton(
                                  onPressed: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             AddKeyForm()));
                                  },
                                  buttonTitle: StringConstants.kAdd,
                                  buttonWidth: kAddButtonWidth)
                            ]),
                        const SizedBox(height: kGeneralSizedBoxHeight),
                        Container(
                            width: kDataTableContainerWidth,
                            decoration: BoxDecoration(
                                color: AppColor.white,
                                border: Border.all(
                                    width: kContainerBorderWidth,
                                    color: Colors.black12),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(kCircularRadius))),
                            child: SingleChildScrollView(
                                physics: const BouncingScrollPhysics(),
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: kVerticalPadding,
                                        right: kVerticalPadding,
                                        bottom: kVerticalPadding),
                                    child: DataTable(
                                        dataTextStyle: Theme.of(context)
                                            .textTheme
                                            .tableDataTextStyle,
                                        headingTextStyle: Theme.of(context)
                                            .textTheme
                                            .dataTableHeadingTextStyle,
                                        showCheckboxColumn: true,
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
                                        dividerThickness: kDividerThickness,
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
