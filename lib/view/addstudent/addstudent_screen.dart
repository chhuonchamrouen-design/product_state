import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddstudentScreen extends StatefulWidget {
  const AddstudentScreen({super.key});

  @override
  State<AddstudentScreen> createState() => _AddstudentScreenState();
}

class _AddstudentScreenState extends State<AddstudentScreen> {
  final name = TextEditingController();
  final gender = TextEditingController();
  final major = TextEditingController();

  void clearControllers() {
    name.clear();
    gender.clear();
    major.clear();
  }

  void addstudent() async {
    try {
      await FirebaseFirestore.instance.collection("student").add({
        'name': name.text,
        'gender': gender.text,
        'major': major.text,
      });
      clearControllers();
    } catch (e) {
      debugPrint("Error adding student: $e");
    }
  }

  void delete_stu(String id) async {
    try {
      await FirebaseFirestore.instance.collection("student").doc(id).delete();
      Navigator.pop(context);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Deleted student")));
    } catch (e) {
      debugPrint("Error deleting student: $e");
    }
  }

  void edit_stu(String id) async {
    try {
      await FirebaseFirestore.instance.collection("student").doc(id).update({
        'name': name.text,
        'gender': gender.text,
        'major': major.text,
      });
      clearControllers();
      Navigator.pop(context);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Updated student")));
    } catch (e) {
      debugPrint("Error updating student: $e");
    }
  }

  @override
  void dispose() {
    name.dispose();
    gender.dispose();
    major.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection("student").snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }
          final docs = snapshot.data?.docs ?? [];
          return docs.isEmpty
              ? const Center(child: Text("No student"))
              : ListView.builder(
                  itemCount: docs.length,
                  itemBuilder: (context, index) {
                    final student = docs[index];
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(student['name'] ?? ''),
                            Row(
                              children: [
                                Text(student['gender'] ?? ''),
                                const SizedBox(width: 20),
                                Text(student['major'] ?? ''),
                                const Spacer(),
                                IconButton(
                                  onPressed: () {
                                    // Pre-fill controllers with this student's
                                    // current values before opening the dialog.
                                    name.text = student['name'] ?? '';
                                    gender.text = student['gender'] ?? '';
                                    major.text = student['major'] ?? '';

                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: const Text("Edit student"),
                                          content: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              TextField(
                                                controller: name,
                                                decoration:
                                                    const InputDecoration(
                                                      hintText: "Name",
                                                    ),
                                              ),
                                              TextField(
                                                controller: gender,
                                                decoration:
                                                    const InputDecoration(
                                                      hintText: "Gender",
                                                    ),
                                              ),
                                              TextField(
                                                controller: major,
                                                decoration:
                                                    const InputDecoration(
                                                      hintText: "Major",
                                                    ),
                                              ),
                                            ],
                                          ),
                                          actions: [
                                            ElevatedButton(
                                              onPressed: () {
                                                clearControllers();
                                                Navigator.pop(context);
                                              },
                                              child: const Text(
                                                "Cancel",
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                            ElevatedButton(
                                              onPressed: () {
                                                edit_stu(student.id);
                                              },
                                              child: const Text(
                                                "Edit",
                                                style: TextStyle(
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  icon: const Icon(
                                    Icons.edit,
                                    color: Colors.blue,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                IconButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: const Text("Delete student"),
                                          content: const Text(
                                            "Are you sure you want to delete this student?",
                                          ),
                                          actions: [
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Text(
                                                "Cancel",
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                            ElevatedButton(
                                              onPressed: () {
                                                delete_stu(student.id);
                                              },
                                              child: const Text(
                                                "Delete",
                                                style: TextStyle(
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  icon: const Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
        },
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue,
        ),
        child: IconButton(
          onPressed: () {
            clearControllers(); // start Add with empty fields
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text("Add Student"),
                  content: Column(
                    children: [
                      TextField(
                        controller: name,
                        decoration: const InputDecoration(hintText: "Name"),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        controller: gender,
                        decoration: const InputDecoration(hintText: "Gender"),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        controller: major,
                        decoration: const InputDecoration(hintText: "Major"),
                      ),
                    ],
                  ),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        clearControllers();
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Cancel",
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        addstudent();
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Add",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                );
              },
            );
          },
          icon: const Icon(Icons.add),
          color: Colors.white,
        ),
      ),
    );
  }
}
