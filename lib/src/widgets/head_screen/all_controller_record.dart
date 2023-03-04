import 'package:flutter/material.dart';

class AllControllerRecord extends StatefulWidget {
  AllControllerRecord({Key? key}) : super(key: key);

  @override
  State<AllControllerRecord> createState() => _AllControllerRecordState();
}

class _AllControllerRecordState extends State<AllControllerRecord> {
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
              title: Text("Controller  ${index + 1}"),
            ),
          );
        }),
      ),
    );
  }
}
