import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:listatarefas/src/control/homecontroller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = GetIt.instance.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Tarefas a serem feitas'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: _controller.clear,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('+'),
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: ((context) => Column(
                children: [
                  const Text(
                    'Nova Tarefa:',
                    style: TextStyle(fontSize: 32),
                    selectionColor: Colors.red,
                  ),
                  TextFormField(
                    controller: _controller.textEditingController,
                  ),
                  TextButton(
                      onPressed: () {
                        _controller.add(_controller.textEditingController.text);
                      },
                      child: const Text('OK'))
                ],
              )),
        ),
      ),
      body: Observer(
        builder: (context) => ListView(
            children: _controller.taskList
                .map(
                  (task) => Tasks(
                    onTap: () {
                      _controller.resolveTask(task);
                    },
                    title: task.title,
                    select: task.isResolved,
                  ),
                )
                .toList()),
      ),
    ));
  }
}

class Tasks extends StatefulWidget {
  final String title;

  final bool select;

  final Function() onTap;

  const Tasks({
    super.key,
    required this.title,
    required this.onTap,
    required this.select,
  });

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:
          Icon(widget.select ? Icons.check_box : Icons.check_box_outline_blank),
      selected: widget.select,
      title: Text(widget.title),
      onTap: widget.onTap,
      selectedTileColor: const Color.fromARGB(255, 28, 52, 133),
      autofocus: false,
    );
  }
}
