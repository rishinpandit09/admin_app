import 'package:ausum_app/src/widgets/entry_tile.dart';
import 'package:flutter/material.dart';

import 'entry_alert_box.dart';

class AllRecord extends StatefulWidget {
  AllRecord({Key? key}) : super(key: key);

  @override
  State<AllRecord> createState() => _AllRecordState();
}

class _AllRecordState extends State<AllRecord> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          itemCount: 1000,
          itemBuilder: (context, itemCount) {
            return InkWell(
              onTap: (() => _showMyDialog(itemCount.toString())),
              child: EntryTile(itemCount),
            );
          }),
    );
  }

  Future<void> _showMyDialog(String title) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (context) => EntryAlertDialogBox(title, context),
    );
  }
}
