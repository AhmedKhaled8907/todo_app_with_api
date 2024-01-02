import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController titleController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Add Todo'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8).copyWith(top: 16),
        children: [
          TextField(
            controller: titleController,
            decoration: InputDecoration(
              hintText: 'Title',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 2.5,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: descriptionController,
            decoration: InputDecoration(
              hintText: 'Description',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 2.5,
                ),
              ),
            ),
            keyboardType: TextInputType.multiline,
            minLines: 5,
            maxLines: 8,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[700],
              foregroundColor: Colors.white,
            ),
            onPressed: () {},
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }

  void submitData() {}
}
