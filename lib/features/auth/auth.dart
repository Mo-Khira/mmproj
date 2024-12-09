// // ignore_for_file: prefer_final_fields, unused_field

// import 'package:flutter/material.dart';
// import 'package:mmproj/features/home/presentation/views/home_view.dart';

// import '../../constants.dart';

// class Signin extends StatefulWidget {
//   const Signin({super.key});

//   @override
//   _SigninState createState() => _SigninState();
// }

// class _SigninState extends State<Signin> {
//   final _formKey = GlobalKey<FormState>(); // مفتاح النموذج للتحكم في حالته
//   String _username = '';
//   String _password = '';
//   bool isChecked = false;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         theme: ThemeData.dark(),
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//             backgroundColor: kPrimaryColor,
//             body: SingleChildScrollView(
//               child: Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Stack(
//                       alignment: Alignment.center,
//                       clipBehavior: Clip.none,
//                       children: [
//                         Container(
//                           height: 170,
//                           decoration: BoxDecoration(
//                             gradient: LinearGradient(
//                               colors: [Colors.purple, Colors.purple.shade900],
//                               begin: Alignment.topRight,
//                               end: Alignment.bottomLeft,
//                             ),
//                           ),
//                           width: MediaQuery.of(context).size.width,
//                         ),
//                         const Positioned(
//                           top: 80,
//                           // left: MediaQuery.of(context).size.width / 2 - 60,
//                           child: Text(
//                             'Sign Up',
//                             style: TextStyle(
//                               fontSize: 30,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           top: 130,
//                           child: Container(
//                             decoration: const BoxDecoration(
//                               color: kPrimaryColor,
//                               borderRadius: BorderRadius.only(
//                                 topLeft: Radius.circular(60),
//                                 topRight: Radius.circular(60),
//                               ),
//                             ),
//                             height: 40,
//                             width: MediaQuery.of(context).size.width,
//                           ),
//                         )
//                       ],
//                     ),
//                     Form(
//                       child: Column(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 10),
//                             child: TextFormField(
//                               decoration: InputDecoration(
//                                 // suffixIcon: IconButton(
//                                 //     onPressed: () {},
//                                 //     icon: Icon(Icons.remove_red_eye_outlined)),
//                                 border: OutlineInputBorder(
//                                   borderSide: const BorderSide(color: Colors.blue),
//                                   borderRadius: BorderRadius.circular(20),
//                                 ),
//                                 labelText: 'Email',
//                               ),
//                               validator: (value) {
//                                 if (value == null || value.isEmpty) {
//                                   return 'Please enter your username';
//                                 }
//                                 return null;
//                               },
//                               onSaved: (value) {
//                                 _username = value!;
//                               },
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 5,
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 10),
//                             child: TextFormField(
//                               decoration: InputDecoration(
//                                 suffixIcon: IconButton(
//                                   onPressed: () {},
//                                   icon: const Icon(Icons.remove_red_eye_outlined),
//                                 ),
//                                 border: OutlineInputBorder(
//                                   borderSide: const BorderSide(color: Colors.blue),
//                                   borderRadius: BorderRadius.circular(20),
//                                 ),
//                                 labelText: 'Enter password',
//                               ),
//                               validator: (value) {
//                                 if (value == null || value.isEmpty) {
//                                   return 'Please enter your password';
//                                 }
//                                 return null;
//                               },
//                               onSaved: (value) {
//                                 _username = value!;
//                               },
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 5,
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 10),
//                             child: TextFormField(
//                               decoration: InputDecoration(
//                                 suffixIcon: IconButton(
//                                     onPressed: () {},
//                                     icon: const Icon(Icons.remove_red_eye_outlined)),
//                                 border: OutlineInputBorder(
//                                   borderSide: const BorderSide(color: Colors.blue),
//                                   borderRadius: BorderRadius.circular(20),
//                                 ),
//                                 labelText: 'Enter confirm password',
//                               ),
//                               validator: (value) {
//                                 if (value == null || value.isEmpty) {
//                                   return 'The password is not ';
//                                 }
//                                 return null;
//                               },
//                               onSaved: (value) {
//                                 _username = value!;
//                               },
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 5,
//                           ),
//                           CheckboxListTile(
//                             title: Row(
//                               children: [
//                                 const Text(
//                                   "you agree to our",
//                                   style: TextStyle(fontSize: 12),
//                                 ),
//                                 TextButton(
//                                     onPressed: () {},
//                                     child: const Text(
//                                       "teams & conditions",
//                                       style: TextStyle(
//                                           fontSize: 12,
//                                           color: Colors.lightBlue),
//                                     )),
//                               ],
//                             ),
//                             value: isChecked,
//                             onChanged: (bool? value) {
//                               setState(() {
//                                 isChecked = value!;
//                               });
//                             },
//                             controlAffinity: ListTileControlAffinity.leading,
//                           ),
//                           const SizedBox(
//                             height: 5,
//                           ),
//                           MaterialButton(
//                             onPressed: () {
//                               Navigator.of(context).push(
//                                 MaterialPageRoute(
//                                   builder: (context) => const HomeView(),
//                                 ),
//                               );
//                             },
//                             child: Container(
//                               height: 40,
//                               width: 150,
//                               decoration: BoxDecoration(
//                                   gradient: LinearGradient(
//                                     colors: [
//                                       Colors.purple,
//                                       Colors.purple.shade900
//                                     ],
//                                     begin: Alignment.topRight,
//                                     end: Alignment.bottomLeft,
//                                   ),
//                                   borderRadius:
//                                       const BorderRadius.all(Radius.circular(30))),
//                               child: const Center(
//                                 child: Text(
//                                   'Sign Up',
//                                   style: TextStyle(
//                                       fontSize: 18, color: Colors.white),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             )));
//   }
// }
