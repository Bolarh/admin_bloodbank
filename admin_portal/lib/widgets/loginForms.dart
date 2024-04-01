import 'package:admin_portal/utils/colors.dart';
import 'package:flutter/material.dart';


class SignInFormScreen extends StatefulWidget {
  const SignInFormScreen({super.key});

  @override
  State<SignInFormScreen> createState() => _SignInFormScreenState();
}

late String loginEmail;
late String loginPassword;



class _SignInFormScreenState extends State<SignInFormScreen> {
   bool isToggle = true;

  void _toggle() {
    setState(() {
      isToggle = !isToggle;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Form(
      child: Column(
        children: [
          SizedBox(height: h*0.04,),
          
         SizedBox(
          height: h*0.07,
          width: w*0.25,
           child: TextFormField(
            onChanged: (value) {
                    loginEmail =value;
              },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                       // labelStyle: header2Style(),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: h * 0.002,
                          horizontal: w * 0.01,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.secondaryColor),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                      // onSaved: (value) {
                      //   _name = value!;
                      // },
                    ),
         ),

                   SizedBox(height: h*0.04,),
          SizedBox(
            height: h*0.07,
          width: w*0.25,
            child: TextFormField(
            
              onChanged: (value) {
                    loginPassword =value;
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter password';
                }
                return null;
              },
              keyboardType: TextInputType.emailAddress,
              obscureText: isToggle,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(top: 8, left: 12),
                  labelText: "Password",
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
                 suffixIcon: IconButton(
                                  icon: Icon(isToggle
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility_outlined),
                                  onPressed: () {
                                    _toggle();
                                  },
                                ),),
            ),
          ),
        ],
      ),
    );
  }
}

