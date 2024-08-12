import 'package:flutter/material.dart';
import './screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: 'Modern Login Form',
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('images/TODO.webp'),
              ),        
                Text(
                'Welcome Todo',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50,
              ),
              LoginScreen(),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      )
    );
  }
}



// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         body: SafeArea(
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 CircleAvatar(
//                   radius: 40.0,
//                   backgroundImage: AssetImage('images/IMG_1170.JPG'),
//                 ),
//                 Text(
//                   'กริชเทพ พงศ์วิฑูรย์',
//                   style: TextStyle(
//                     fontSize: 40,
//                     fontWeight: FontWeight.normal,
//                     fontFamily: 'Prompt',
//                     color: Colors.black,
//                   ),
//                 ),
//                 Text(
//                   'Developer',
//                   style: TextStyle(
//                     letterSpacing: 3.5,
//                     fontWeight: FontWeight.w200,
//                     fontSize: 30,
//                     color: Colors.blue.shade400
//                   ),
//                 ),
//                 Container(
//                   color: Colors.amber.shade200,
//                   padding: EdgeInsets.all(15.0),
//                   margin: EdgeInsets.symmetric(
//                     vertical: 10,
//                     horizontal: 20,
//                   ),
//                   child: Row(
//                     children: <Widget>[
//                       Icon(
//                         Icons.phone,
//                         color: Colors.deepPurpleAccent,
//                         size: 30.0,
//                       ),
//                       SizedBox(
//                         width: 20,
//                       ),
//                       Text(
//                         '+668x 530 4xx8',
//                         style: TextStyle(
//                           fontSize: 30,
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Container(
//                   color: Colors.amber.shade200,
//                   padding: EdgeInsets.all(15.0),
//                   margin: EdgeInsets.symmetric(
//                     vertical: 10,
//                     horizontal: 20,
//                   ),
//                   child: Row(
//                     children: <Widget>[
//                       Icon(
//                         Icons.email,
//                         color: Colors.deepPurpleAccent.shade200,
//                         size: 30.0,
//                       ),
//                       SizedBox(
//                         width: 20,
//                       ),
//                       Text(
//                         'kp@gmail.com',
//                         style: TextStyle(
//                           fontSize: 30
//                         )
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }











// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//    return MaterialApp(
//     title: 'Flutter Theme',
//     theme: ThemeData(
//       primarySwatch: Colors.blue,
//       colorScheme: ColorScheme.fromSwatch().copyWith(
//         secondary: Colors.greenAccent.shade700, // Your accent color
//       ),
//       scaffoldBackgroundColor: Color(0xFF0484cc),
//       textTheme: TextTheme(
//         bodyMedium: TextStyle(
//           color: Colors.red.shade200,
//           fontSize: 30,
//           fontStyle: FontStyle.italic,
//         ),
//         labelLarge: TextStyle(
//           fontSize: 15,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     ),
//     home: MyHomePage(),
//    );
//   }
// }

// class MyHomePage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Title of the App!'),
//       ),
//       body: Center(
//         child: Text(
//           'Hello Theme',
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Text('OK'),
//         onPressed: (){},
//       ),
//     );
//   }
// }