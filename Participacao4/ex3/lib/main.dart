import 'package:flutter/material.dart';

void main() {
  runApp(MyTaskApp());
}

class MyTaskApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notas de Tarefas',
      debugShowCheckedModeBanner: false,
      home: TaskScreen(),
    );
  }
}

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  List<Map<String, dynamic>> tasks = List.generate(
    5,
    (index) => {
      'title': 'Task ${DateTime.now().toString()}',
      'completed': false,
    },
  );

  void _showDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Nota'),
        content: Text('Você está no App de Notas de Tarefas'),
        actions: [
          TextButton(
            child: Text('Fechar'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    int uncompletedTasks =
        tasks.where((task) => task['completed'] == false).length;

    return Scaffold(
      appBar: AppBar(
        title: Text('Kindacode.com'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('View Completed Tasks'),
            ),
            SizedBox(height: 16),
            Text(
              'You have $uncompletedTasks uncompleted tasks',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.yellow[200],
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      title: Text(tasks[index]['title']),
                      trailing: Checkbox(
                        value: tasks[index]['completed'],
                        onChanged: (bool? value) {
                          setState(() {
                            tasks[index]['completed'] = value!;
                          });
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showDialog,
        child: Icon(Icons.add),
      ),
    );
  }
}
