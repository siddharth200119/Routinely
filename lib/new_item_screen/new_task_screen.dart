import 'package:flutter/material.dart';

class NewItemScreen extends StatelessWidget {
  const NewItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 48, 16, 16),
      child: Column(
        children: [
          const TextField(
            maxLength: 30,
            decoration: InputDecoration(
              label: Text("Title"),
            ),
          ),
          const TextField(
            maxLength: 200,
            decoration: InputDecoration(
              label: Text("Notes"),
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Cancel"),
              ),
              const SizedBox(
                width: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Submit"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
