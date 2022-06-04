import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/src/Dashboard/widgets/todoItem.dart';

import '../../model/todoModel.dart';
import '../../provider/todoProvider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color color = Colors.lightBlueAccent;

  // List<String> item = [
  //   "This is todo no 1",
  //   "This is todo no 2",
  //   "hello",
  //   "bye",
  // ];

  List<String> foundItems = [];

  final myController = TextEditingController();
  bool validate = false;

  // @override
  // initState() {
  //   // at the beginning, all users are shown
  //   foundItems = item;
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   // Clean up the controller when the widget is disposed.
  //   myController.dispose();
  //   super.dispose();
  // }
  //
  // void runFilter(String enteredKeyword) {
  //   List<String> results = [];
  //   if (enteredKeyword.isEmpty) {
  //     // if the search field is empty or only contains white-space, we'll display all users
  //     results = item;
  //   } else {
  //     results = item
  //         .where((item) =>
  //             item.toLowerCase().contains(enteredKeyword.toLowerCase()))
  //         .toList();
  //     // we use the toLowerCase() method to make it case-insensitive
  //   }
  //
  //   // Refresh the UI
  //   setState(() {
  //     foundItems = results;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<todoPrvider>(context);
    final todos = provider.todos;

    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.white,
        drawer: Drawer(
          child: ListView(
            children: const [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                ),
                accountName: Text("Anas"),
                accountEmail: Text("anas@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://i.natgeofe.com/n/3861de2a-04e6-45fd-aec8-02e7809f9d4e/02-cat-training-NationalGeographic_1484324_3x4.jpg'),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.lightBlue,
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black87,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.lightBlue,
              ),
              padding: const EdgeInsets.all(20.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Find Your',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  const Text(
                    "TODO",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(244, 243, 243, 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const TextField(
                      // onChanged: (value) => runFilter(value),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        hintText: "Search you're looking for",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: foundItems.isNotEmpty
                  ? ListView.builder(
                      // itemCount: foundItems.length,
                      itemCount: todos.length,
                      itemBuilder: (context, int index) {
                        final todo = todos[index];
                        return Dismissible(
                          key: Key(todo.id),
                          onDismissed: (direction) {
                            // foundItems.removeAt(index);
                            final provier = Provider.of<todoPrvider>(context,
                                listen: false);
                            provier.removeTodo(todo);
                            Scaffold.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Todo Removed"),
                              ),
                            );
                          },
                          background: Container(color: Colors.redAccent),
                          child: TodoItem(todo: todo),
                        );
                      },
                    )
                  : const Text(
                      'No results found',
                      style: TextStyle(fontSize: 24),
                    ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        "Add Task",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30, color: Colors.lightBlue),
                      ),
                      TextField(
                        controller: myController,
                        autofocus: true,
                        decoration: InputDecoration(
                          labelText: 'Enter the Value',
                          errorText: validate ? 'Value Can\'t Be Empty' : null,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      FlatButton(
                        child: const Text(
                          "Add",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        color: Colors.lightBlueAccent,
                        onPressed: () {
                          setState(() {
                            // myController.text.isEmpty
                            //     ? validate = true
                            //     : validate = false;
                            // if (validate == true) {
                            // item.add(myController.text);
                            final todo = Todo(
                              title: myController.text,
                              createdTime: DateTime.now(),
                              id: DateTime.now().toString(),
                            );
                            final provier = Provider.of<todoPrvider>(context,
                                listen: false);
                            provier.addTodo(todo);
                            myController.clear();
                            Navigator.pop(context);
                            // }
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          backgroundColor: color,
          child: const Icon(
            Icons.add,
            size: 25,
          ),
        ),
      ),
    );
  }
}
