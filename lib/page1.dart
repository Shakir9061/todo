import 'package:flutter/material.dart';
import 'package:task_1/Page3.dart';
import 'package:task_1/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List task = ['Task 1', 'Task 2', 'Task 3', 'Task 4'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Icon(
            Icons.menu_rounded,
            color: Colors.white,
          ),
        ),
        title: Center(
            child: Text(
          'Feb 2024',
          style: TextStyle(color: Colors.white),
        )),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Column(
                  children: [
                    Text(
                      'M',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      '1',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'T',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      '2',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'W',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      '3',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'T',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      '4',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'F',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      '5',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'S',
                      style: TextStyle(color: Colors.white),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 10,
                      child: Text(
                        '6',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'S',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      '7',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 80, left: 25),
              child: Row(
                children: [
                  Text(
                    'Saturday,6 February',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: task.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 30),
                    child: Container(
                      height: 50,
                      width: 440,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 2),
                        child: Row(
                          children: [
                            Text(task[index]),
                            Padding(
                              padding: const EdgeInsets.only(left: 280),
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              Page3(name: task[index]),
                                        ));
                                  },
                                  icon: Icon(Icons.edit_square)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      task.removeAt(index);
                                    });
                                  },
                                  icon: Icon(Icons.delete)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.blue),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Page2(),
                        ));
                  },
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
