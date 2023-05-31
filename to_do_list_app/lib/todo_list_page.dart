import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  TextEditingController _textEditingController = TextEditingController();

  List<String> tarefas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Tarefas'),
      ),
      body: Container(
        child: SingleChildScrollView(
          reverse: true,
          padding: EdgeInsets.all(22),
          child: Column(
            children: [
              TextField(
                controller: _textEditingController,
              ),
              Container(
                height: 500,
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: tarefas.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(tarefas[index]),
                      onLongPress: () {
                        setState(() {
                          tarefas.removeAt(index);
                        });
                      },
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {
              if (_textEditingController.text.length > 0) {
                setState(() {
                  tarefas.add(_textEditingController.text);
                });
                _textEditingController.clear();
              }
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {
              setState(() {
                tarefas = [];
              });
              _textEditingController.clear();
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
