import 'package:flutter/material.dart';

Widget SubmitButton(BuildContext context, GlobalKey<FormState> formKey) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        fixedSize: const Size(200, 50), backgroundColor: Colors.red.shade700),
    onPressed: () {
      if (formKey.currentState!.validate()) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Processing Data"),
          ),
        );

        Navigator.pop(context);
      }
    },
    child: const Text("Submit"),
  );
}
