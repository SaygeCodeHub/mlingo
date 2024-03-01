import 'package:flutter/material.dart';
import 'package:mlingo/widgets/status_chip.dart';

class TableText extends DataCell {
  TableText({required String text})
      : super(Text(text,
            maxLines: 2,
            softWrap: false,
            overflow: TextOverflow.fade,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: "Archivo")));
}

class TableStatusChips extends DataCell {
  TableStatusChips({required String status, required Color color})
      : super(StatusChip(text: status, color: color));
}
