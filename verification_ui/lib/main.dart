// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//  @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Verification',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//     );
//   }

// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: IconButton(
//             onPressed: () {},
//             icon: const Icon(Icons.arrow_back_ios_new),
//             color: Colors.black),
//         actions: [
//           IconButton(
//               onPressed: () {},
//               icon: const Icon(Icons.info),
//               color: Colors.black),
//         ],
//       ),
//       body: const Column(
//         children: [
//           SizedBox(
//             height: 40,
//           ),
//           Icon(Icons.dialpad_rounded, size: 50),
//           SizedBox(
//             height: 40,
//           ),
//           Text(
//             "Enter Mary's PIN",
//             style: TextStyle(fontSize: 40),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Otp(),
//               Otp(),
//               Otp(),
//               Otp(),
//             ],
//           ),
//           SizedBox(
//             height: 40,
//           ),
//           Text(
//             "Rider can't find a pin",
//             style: TextStyle(fontSize: 20),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Otp extends StatelessWidget {
//   const Otp({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 50,
//       height: 50,
//       child: TextFormField(
//         keyboardType: TextInputType.number,
//         style: Theme.of(context).textTheme.headline6,
//         textAlign: TextAlign.center,
//         inputFormatters: [
//           LengthLimitingTextInputFormatter(1),
//           FilteringTextInputFormatter.digitsOnly
//         ],
//         onChanged: (value) {
//           if (value.length == 1) {
//             FocusScope.of(context).nextFocus();
//           }
//           if (value.isEmpty) {
//             FocusScope.of(context).previousFocus();
//           }
//         },
//         decoration: const InputDecoration(
//           hintText: ('0'),
//         ),
//         onSaved: (value) {},
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:verification_ui/otp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OTP Verification',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget
 {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class
 
_MyHomePageState
 
extends
 
State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Otp()
    );
  }
}

