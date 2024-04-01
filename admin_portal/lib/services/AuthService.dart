// import 'package:admin_portal/models/userInfo.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// Future<Usar?> registerUser(BuildContext context, String name, String email, String password) async {
//   try {
    
//     showDialog(
//       context: context,
//       barrierDismissible: false,
//       builder: (BuildContext context) {
//         return const Center(
//           child: CircularProgressIndicator(),
//         );
//       },
//     );

//     UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//       email: email,
//       password: password,
//     );

//     await userCredential.user!.updateDisplayName(name);
     
//     print('User registered: ${userCredential.user!.uid}');

//     await FirebaseFirestore.instance.collection('users').doc(userCredential.user!.uid).set({
//       'Username': name,
//       'Email': email,
//     });

//      User? user = userCredential.user;
//     UserInfor? userData = await getUserData(user);
//     Navigator.of(context).pop();

  
//     Navigator.of(context).pushReplacement(
//       MaterialPageRoute(builder: (context) => const MainScreen()),
//     );
//   } on FirebaseAuthException catch (e) {
//     print('Error registering user: ${e.message}');
  

//     Navigator.of(context).pop();
    
    
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('Error registering user: ${e.message}')),
//     );
//   } catch (e) {
//     print('Unexpected error registering user: $e');
    

//     Navigator.of(context).pop();
    
    
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('Unexpected error registering user: $e')),
//     );
//   }
//   return null;
// }

// //create user object based on FirebaseUser





// Future<Usar?> userLogin(BuildContext context, String email, String password) async {
//   try {
//     // Show loading indicator while logging in
//     showDialog(
//       context: context,
//       barrierDismissible: false,
//       builder: (BuildContext context) {
//         return const Center(
//           child: CircularProgressIndicator(color: AppColors.borderColor,),
//         );
//       },
//     );

//     UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
//       email: email,
//       password: password,
//     );
//     //new line
//     User? user = userCredential.user;
//     UserInfor? userData = await getUserData(user);

//     Navigator.of(context).pop();

   
//     Navigator.of(context).pushReplacement(
//       MaterialPageRoute(builder: (context) => MainScreen()),
//     );


    
//   } on FirebaseAuthException catch (e) {
//     print('Error logging in: ${e.message}');
    

//     Navigator.of(context).pop();
    

//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('Error logging in: ${e.message}')),
//     );
//   } catch (e) {
//     print('Unexpected error logging in: $e');
    

//     Navigator.of(context).pop();
    
    
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('Unexpected error logging in: $e')),
//     );
//   }
//   return null;
// }




// Future<void> userLogout(BuildContext context) async {
//   try {
//     await FirebaseAuth.instance.signOut();
//     print('User logged out successfully');
//     Navigator.pop(context);
    
//   } catch (e) {
//     print('Error logging out user: $e');
   
//   }
// }

// void resetSharedPreferences() async {
//   final prefs = await SharedPreferences.getInstance();
//   await prefs.clear();
//   print('Shared preferences reset successfully');
// }

