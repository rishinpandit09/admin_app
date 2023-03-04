import 'package:ausum_app/src/widgets/head_screen/data_widgets/custom_form_field.dart';
import 'package:ausum_app/src/widgets/head_screen/data_widgets/submit_button.dart';
import 'package:flutter/material.dart';

class AddGate extends StatefulWidget {
  AddGate({Key? key}) : super(key: key);

  @override
  State<AddGate> createState() => _AddGateState();
}

class _AddGateState extends State<AddGate> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Gate Details"),
        elevation: 0,
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                CustomFormField(
                  hintText: "Gate Name",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                CustomFormField(
                  hintText: "Gate Details",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                SubmitButton(context, _formKey)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
