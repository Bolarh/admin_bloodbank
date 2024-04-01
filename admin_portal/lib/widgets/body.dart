import 'package:flutter/material.dart';

import 'content-cards.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
     double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
     return Padding(
        padding: EdgeInsets.only(
                       right: w * 0.035,
                       top: h * 0.022,
                     ),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           const Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("Session"),
               Text(
                 'Welcome to Admin Dashboard',
                 style: TextStyle(
                   fontSize: 24,
                   fontWeight: FontWeight.bold,
                 ),
               ),
             ],
           ),
       
            SizedBox(height: h*0.1),
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
             ContentCard(
             containerWidth: w*0.2,
             countText: '5',
              icon: Icons.group,
               mainText: 'Donor List',),
       
                ContentCard(
             containerWidth: w*0.2,
             countText: '5',
              icon: Icons.account_balance,
               mainText: 'Total Blood Request',),
       
                ContentCard(
             containerWidth: w*0.2,
             countText: '5',
              icon: Icons.account_balance,
               mainText: 'Total Blood Request',),
       
       
       
       
            ],),
       
           
       
       
       
            SizedBox(height: h*0.05),
       
       
       
           // Add your content widgets here
           Expanded(
             child: Container(
               color: Colors.grey.shade200,
               child: Center(
                 child: Text('Content goes here'),
               ),
             ),
           ),
         ],
       ),
     );
  }
  
  
}


Widget build(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      
    ),
  );

}
