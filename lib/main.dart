import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "GridView Example",
    home: Scaffold(
      appBar: AppBar(
        title: const Text("GridView Example"),
      ),
      body: const MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<int> list = [];
  @override
  initState() {
    for (int i = 0; i <= 50; i++) {
      list.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: list.length,
      gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (BuildContext cxt, int index) {
        return Padding(
          padding: const EdgeInsets.all(1),
          child: Container(
            color: Colors.red,
            alignment: Alignment.center,
            child: Text('${list[index]}'),
          ),
        );
      },
    );
  }
}


//       GridView.count(
//         crossAxisCount: 3,
//         mainAxisSpacing: 5,
//         crossAxisSpacing: 5,
//         childAspectRatio: 15,
//         children: [
//           Container(
//             alignment: Alignment.center,
//             color: Colors.green,
//             child: Text("Hello"),
//           ),
//           Container(
//             alignment: Alignment.center,
//             color: Colors.green,
//             child: Text("Hello"),
//           ),
//           Container(
//             alignment: Alignment.center,
//             color: Colors.green,
//             child: Text("Hello"),
//           ),
//           Container(
//             alignment: Alignment.bottomCenter,
//             color: Colors.green,
//             child: Text("Hello"),
//           ),
//
//           Container(
//             alignment: Alignment.centerLeft,
//             color: Colors.green,
//             child: Text("Hello"),
//           ),
//           Container(
//             alignment: Alignment.topRight,
//             color: Colors.green,
//             child: Text("Hello"),
//           ),
//         ],
//     );
//   }
// }
