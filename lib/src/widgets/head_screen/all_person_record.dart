import 'package:flutter/material.dart';

class AllPersonRecord extends StatefulWidget {
  AllPersonRecord({Key? key}) : super(key: key);

  @override
  State<AllPersonRecord> createState() => _AllPersonRecordState();
}

class _AllPersonRecordState extends State<AllPersonRecord> {
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
              title: Text("Person Record  ${index + 1}"),
            ),
          );
        }),
      ),
    );
  }
}
