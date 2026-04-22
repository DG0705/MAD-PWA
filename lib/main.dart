// Practical 1
// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Text("Hello World"),
//         ),
//       ),
//     ),
//   );
// }



// Practical 2

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   TextEditingController nameController = TextEditingController();
//   String message = "";

//   void showMessage() {
//     setState(() {
//       message = "Welcome " + nameController.text;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Interactive App"),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           children: [
//             TextField(
//               controller: nameController,
//               decoration: InputDecoration(
//                 labelText: "Enter Your Name",
//                 border: OutlineInputBorder(),
//               ),
//             ),

//             SizedBox(height: 20),

//             ElevatedButton(
//               onPressed: showMessage,
//               child: Text("Submit"),
//             ),

//             SizedBox(height: 20),

//             Text(
//               message,
//               style: TextStyle(
//                 fontSize: 24,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Practcal 2 version 2

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   TextEditingController nameController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController mobileController = TextEditingController();
//   TextEditingController cityController = TextEditingController();

//   String result = "";

//   void showDetails() {
//     setState(() {
//       result =
//           "Name: ${nameController.text}\n"
//           "Email: ${emailController.text}\n"
//           "Mobile: ${mobileController.text}\n"
//           "City: ${cityController.text}";
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Interactive App"),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               TextField(
//                 controller: nameController,
//                 decoration: InputDecoration(
//                   labelText: "Enter Name",
//                   border: OutlineInputBorder(),
//                 ),
//               ),

//               SizedBox(height: 15),

//               TextField(
//                 controller: emailController,
//                 decoration: InputDecoration(
//                   labelText: "Enter Email",
//                   border: OutlineInputBorder(),
//                 ),
//               ),

//               SizedBox(height: 15),

//               TextField(
//                 controller: mobileController,
//                 decoration: InputDecoration(
//                   labelText: "Enter Mobile Number",
//                   border: OutlineInputBorder(),
//                 ),
//               ),

//               SizedBox(height: 15),

//               TextField(
//                 controller: cityController,
//                 decoration: InputDecoration(
//                   labelText: "Enter City",
//                   border: OutlineInputBorder(),
//                 ),
//               ),

//               SizedBox(height: 20),

//               ElevatedButton(
//                 onPressed: showDetails,
//                 child: Text("Submit"),
//               ),

//               SizedBox(height: 20),

//               Text(
//                 result,
//                 style: TextStyle(
//                   fontSize: 20,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// Practical 4

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: FormPage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class FormPage extends StatefulWidget {
//   @override
//   _FormPageState createState() => _FormPageState();
// }

// class _FormPageState extends State<FormPage> {
//   final _formKey = GlobalKey<FormState>();

//   TextEditingController nameController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   void submitForm() {
//     if (_formKey.currentState!.validate()) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text("Form Submitted Successfully"),
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Form Validation"),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               TextFormField(
//                 controller: nameController,
//                 decoration: InputDecoration(
//                   labelText: "Enter Name",
//                   border: OutlineInputBorder(),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return "Name cannot be empty";
//                   }
//                   return null;
//                 },
//               ),

//               SizedBox(height: 15),

//               TextFormField(
//                 controller: emailController,
//                 decoration: InputDecoration(
//                   labelText: "Enter Email",
//                   border: OutlineInputBorder(),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return "Email cannot be empty";
//                   }
//                   if (!value.contains("@")) {
//                     return "Enter valid email";
//                   }
//                   return null;
//                 },
//               ),

//               SizedBox(height: 15),

//               TextFormField(
//                 controller: passwordController,
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   labelText: "Enter Password",
//                   border: OutlineInputBorder(),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return "Password cannot be empty";
//                   }
//                   if (value.length < 6) {
//                     return "Password must be at least 6 characters";
//                   }
//                   return null;
//                 },
//               ),

//               SizedBox(height: 20),

//               ElevatedButton(
//                 onPressed: submitForm,
//                 child: Text("Submit"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// Practical 4 version 2

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: AdmissionForm(),
//     );
//   }
// }

// class AdmissionForm extends StatefulWidget {
//   @override
//   _AdmissionFormState createState() => _AdmissionFormState();
// }

// class _AdmissionFormState extends State<AdmissionForm> {
//   final _formKey = GlobalKey<FormState>();

//   TextEditingController nameController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController mobileController = TextEditingController();
//   TextEditingController branchController = TextEditingController();
//   TextEditingController marksController = TextEditingController();

//   void submitForm() {
//     if (_formKey.currentState!.validate()) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text("Admission Form Submitted Successfully"),
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Engineering Admission Form"),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20),
//         child: SingleChildScrollView(
//           child: Form(
//             key: _formKey,
//             child: Column(
//               children: [
//                 TextFormField(
//                   controller: nameController,
//                   decoration: InputDecoration(
//                     labelText: "Student Name",
//                     border: OutlineInputBorder(),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return "Please enter student name";
//                     }
//                     return null;
//                   },
//                 ),

//                 SizedBox(height: 15),

//                 TextFormField(
//                   controller: emailController,
//                   decoration: InputDecoration(
//                     labelText: "Email ID",
//                     border: OutlineInputBorder(),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return "Please enter email";
//                     }
//                     if (!value.contains("@")) {
//                       return "Enter valid email";
//                     }
//                     return null;
//                   },
//                 ),

//                 SizedBox(height: 15),

//                 TextFormField(
//                   controller: mobileController,
//                   keyboardType: TextInputType.phone,
//                   decoration: InputDecoration(
//                     labelText: "Mobile Number",
//                     border: OutlineInputBorder(),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return "Please enter mobile number";
//                     }
//                     if (value.length != 10) {
//                       return "Mobile number must be 10 digits";
//                     }
//                     return null;
//                   },
//                 ),

//                 SizedBox(height: 15),

//                 TextFormField(
//                   controller: branchController,
//                   decoration: InputDecoration(
//                     labelText: "Preferred Branch (CSE/IT/EXTC etc.)",
//                     border: OutlineInputBorder(),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return "Please enter branch";
//                     }
//                     return null;
//                   },
//                 ),

//                 SizedBox(height: 15),

//                 TextFormField(
//                   controller: marksController,
//                   keyboardType: TextInputType.number,
//                   decoration: InputDecoration(
//                     labelText: "12th Percentage",
//                     border: OutlineInputBorder(),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return "Please enter percentage";
//                     }
//                     return null;
//                   },
//                 ),

//                 SizedBox(height: 25),

//                 ElevatedButton(
//                   onPressed: submitForm,
//                   child: Text("Submit Admission Form"),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// Practical 5

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Shoe Store',
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   final List<String> shoes = [
//     "Nike Air Max",
//     "Adidas Ultraboost",
//     "Puma Running Shoes",
//     "Reebok Classic",
//     "New Balance 574"
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Shoe Store"),
//       ),
//       body: ListView.builder(
//         itemCount: shoes.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             leading: Icon(Icons.shopping_bag),
//             title: Text(shoes[index]),
//             trailing: Icon(Icons.arrow_forward),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) =>
//                       DetailsPage(shoeName: shoes[index]),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// class DetailsPage extends StatelessWidget {
//   final String shoeName;

//   DetailsPage({required this.shoeName});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Shoe Details"),
//       ),
//       body: Center(
//         child: Text(
//           "Selected Shoe:\n$shoeName",
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             fontSize: 24,
//           ),
//         ),
//       ),
//     );
//   }
// }

// Practical 6

// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: FirebasePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class FirebasePage extends StatefulWidget {
//   const FirebasePage({super.key});

//   @override
//   _FirebasePageState createState() => _FirebasePageState();
// }

// class _FirebasePageState extends State<FirebasePage> {
//   TextEditingController nameController = TextEditingController();
//   TextEditingController emailController = TextEditingController();

//   void addData() async {
//     await FirebaseFirestore.instance.collection("students").add({
//       "name": nameController.text,
//       "email": emailController.text,
//     });

//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text("Data Added Successfully"),
//       ),
//     );

//     nameController.clear();
//     emailController.clear();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Firebase CRUD"),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           children: [
//             TextField(
//               controller: nameController,
//               decoration: InputDecoration(
//                 labelText: "Enter Name",
//                 border: OutlineInputBorder(),
//               ),
//             ),

//             SizedBox(height: 15),

//             TextField(
//               controller: emailController,
//               decoration: InputDecoration(
//                 labelText: "Enter Email",
//                 border: OutlineInputBorder(),
//               ),
//             ),

//             SizedBox(height: 20),

//             ElevatedButton(
//               onPressed: addData,
//               child: Text("Save Data"),
//             ),

//             SizedBox(height: 20),

//             Expanded(
//               child: StreamBuilder(
//                 stream: FirebaseFirestore.instance
//                     .collection("students")
//                     .snapshots(),
//                 builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
//                   if (!snapshot.hasData) {
//                     return Center(
//                       child: CircularProgressIndicator(),
//                     );
//                   }

//                   return ListView(
//                     children: snapshot.data!.docs.map((doc) {
//                       return ListTile(
//                         title: Text(doc["name"]),
//                         subtitle: Text(doc["email"]),
//                       );
//                     }).toList(),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// Practical 7

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Info App',
      debugShowCheckedModeBanner: false,
      home: StudentPage(),
    );
  }
}

class StudentPage extends StatefulWidget {
  @override
  _StudentPageState createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController branchController = TextEditingController();

  String result = "";

  void showDetails() {
    setState(() {
      result =
          "Student Name: ${nameController.text}\n"
          "Branch: ${branchController.text}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Info App"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Enter Student Name",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 15),

            TextField(
              controller: branchController,
              decoration: InputDecoration(
                labelText: "Enter Branch",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: showDetails,
              child: Text("Submit"),
            ),

            SizedBox(height: 20),

            Text(
              result,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}





//practical 8

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, String>> products = [
    {"name": "Nike Shoes", "price": "₹4999"},
    {"name": "Adidas Shoes", "price": "₹5999"},
    {"name": "Puma Shoes", "price": "₹3999"},
    {"name": "Reebok Shoes", "price": "₹4599"},
    {"name": "Campus Shoes", "price": "₹2999"},
    {"name": "Woodland Shoes", "price": "₹6999"},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "E-Commerce UI",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Shoe Store"),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            int crossAxisCount =
                constraints.maxWidth < 600 ? 2 : 4;

            return Padding(
              padding: EdgeInsets.all(10),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment:
                            MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.shopping_bag,
                            size: 60,
                          ),

                          SizedBox(height: 10),

                          Text(
                            products[index]["name"]!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 10),

                          Text(
                            products[index]["price"]!,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),

                          SizedBox(height: 10),

                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Add to Cart"),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}





//practical 9


import React from "react";
import "./App.css";

function App() {
  const products = [
    { name: "Nike Shoes", price: "₹4999" },
    { name: "Adidas Shoes", price: "₹5999" },
    { name: "Puma Shoes", price: "₹3999" }
  ];

  return (
    <div style={{ padding: "20px" }}>
      <h1>Shoe Store PWA</h1>

      {products.map((product, index) => (
        <div
          key={index}
          style={{
            border: "1px solid #ccc",
            padding: "15px",
            margin: "10px 0"
          }}
        >
          <h2>{product.name}</h2>
          <p>{product.price}</p>
          <button>Add to Cart</button>
        </div>
      ))}
    </div>
  );
}

export default App;