import 'package:admin_portal/screens/homepage.dart';
import 'package:admin_portal/utils/colors.dart';
import 'package:admin_portal/widgets/loginForms.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});


  @override
  State<SignInScreen> createState() => _SignInScreenState();
}


class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
           padding: EdgeInsets.symmetric(
                  horizontal: w * 0.035, 
                  vertical: h * 0.022),
          child: Column(
            children: [
              SizedBox(height: h*0.08,),
              const Text("Blood Social", 
              // style: GoogleFonts.lobsterTwo(
              //   textStyle: TextStyle(
              //     fontSize: h*0.08
                  
              //   )
              // )
              ),
              
            
              
              
              SizedBox(height: h*0.04,),
              const SignInFormScreen(),
               const Row(
                children: [
                  Icon(
                    Icons.check_box,
                    color: Colors.red,
                    size: 15,
                  )               
                ],
              ),
              SizedBox(height: h*0.06,),
                             
                             
                          
              InkWell(
                 onTap: () {
                  Navigator.of(context).pushReplacement(
                     MaterialPageRoute(builder: (context) => const HomeScreen()));
                          
                 // userLogin(context,loginEmail, loginPassword );
                    
                  },
                child: Container(
                  height: h*0.07,
                  width: w*0.25,
                  decoration: BoxDecoration(
                    gradient: AppColors.linearGradient,
                    borderRadius: BorderRadius.circular(8),
                     boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 36, 36, 36).withOpacity(0.09),
                      spreadRadius: 5,
                      blurRadius: 8,
                      offset: const Offset(4, 2),
                    )
                  ],
                  ),
                  child: const Center(child: Text("Login")),
                ),
              ),
                          
               SizedBox(height: h*0.1,),
                                     
              
            ],
          ),
        ),
      ),
    );
  }
}
