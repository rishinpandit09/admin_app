import 'package:flutter/material.dart';

class AllGateRecord extends StatefulWidget {
  AllGateRecord({Key? key}) : super(key: key);

  @override
  State<AllGateRecord> createState() => _AllGateRecordState();
}

class _AllGateRecordState extends State<AllGateRecord> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: 100,
        itemBuilder: ((context, index) {
          return InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("Gate no ${index + 1}"),
            ),
          );
        }),
      ),
    );
  }
}
