// import 'package:flutter/cupertino.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const CupertinoApp(
//       // Remove the debug banner
//       debugShowCheckedModeBanner: false,
//       title: 'Kindacode.com',
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//         navigationBar:
//         const CupertinoNavigationBar(middle: Text('KindaCode.com')),
//         child: SafeArea(
//           child: CupertinoContextMenu(
//               actions: [
//                 CupertinoContextMenuAction(
//                   child: const Text('Add to Favorites'),
//                   onPressed: () {
//                     // Implement your logic here
//                     debugPrint('Added to Favorites');
//
//                     // Then close the context menu
//                     Navigator.of(context).pop();
//                   },
//                 ),
//                 CupertinoContextMenuAction(
//                   child: const Text('Download'),
//                   onPressed: () {
//                     // Implement your logic here
//                     debugPrint('Downloaded');
//
//                     // Then close the context menu
//                     Navigator.of(context).pop();
//                   },
//                 ),
//                 CupertinoContextMenuAction(
//                   child: const Text('Report this image'),
//                   onPressed: () {
//                     // Your logic here
//                     debugPrint('Reported');
//
//                     // Close the context menu
//                     Navigator.of(context).pop();
//                   },
//                 )
//               ],
//               child: Image.network(
//                   'https://www.kindacode.com/wp-content/uploads/2020/10/dog_sample.jpg')),
//         ));
//   }
// }

import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learning',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState()
  {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Flutter Cupertino Context Menu"),
        ),
        body:Container(
          margin: EdgeInsets.all(40),
          width: double.infinity,
          child:CupertinoContextMenu(
            child:Image.asset("assets/images/image.png", fit: BoxFit.fill,),
            actions:[
              CupertinoContextMenuAction(
                child:Text("Share"),
                onPressed: (){
                  Navigator.of(context).pop();
                },
                trailingIcon: CupertinoIcons.share,
              ),
              CupertinoContextMenuAction(
                child:Text("Save To Gallery"),
                onPressed: (){
                  Navigator.of(context).pop();
                },
                trailingIcon: CupertinoIcons.down_arrow,
              ),
              CupertinoContextMenuAction(
                child: Text("Delete"),
                onPressed: (){
                  Navigator.of(context).pop();
                },
                isDestructiveAction: true,
                trailingIcon: CupertinoIcons.delete,
              )
            ],
            previewBuilder: (context, animation, child) {
              return Container(
                height: double.infinity,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/image.png',
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        )
    );
  }
}


