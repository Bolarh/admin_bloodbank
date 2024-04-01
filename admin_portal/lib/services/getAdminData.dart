import 'package:admin_portal/models/userInfo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';



Future<UserInfor?> getUserData(User? user, ) async {
  if (user != null) {
    try {
      // Get the user document from Firestore
      DocumentSnapshot<Map<String, dynamic>> userDoc =
          await FirebaseFirestore.instance.collection('users').doc(user.uid).get();

      if (userDoc.exists) {
        // Extract data from the document
        String username = userDoc['Username'];
        String age = userDoc['Age'];
        String gender = userDoc['Gender'];
        String email = userDoc['Email'];
        String location = userDoc['Location'];
    
        // Create and return an instance of CustomUserData
        return UserInfor(username: username, age: age, id: '', email: email, location: location, gender: gender);
      } else {
        print('User document does not exist');
        return null;
      }
    } catch (e) {
      print('Error fetching user info: $e');
      return null;
    }
  } else {
    print('User is null');
    return null;
  }
}
