import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
   Widget build(BuildContext context) {
     double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Container(
      width: w*0.2,
      child: Padding(
         padding: EdgeInsets.only(
                        left: w * 0.035,
                        top: h * 0.022,
                      ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: h*0.035,),
            Text("Blood Social Dashboard"),
            SizedBox(height: h*0.09,),
        
            ListTile(
               leading: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6.0),
                   boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 100, 91, 91)
                                    .withOpacity(0.09),
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            )
                            
                          ],
                ),
                child: Padding(
                  padding:  EdgeInsets.all(h*0.015),
                  child:  Icon( Icons.account_balance, size: h*0.03,),
                )),
              title: Text('Dashboard'),
              onTap: () {
                // Handle dashboard tap
              },
            ),

            SizedBox(height: h*0.027,),

            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6.0),
                   boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 100, 91, 91)
                                    .withOpacity(0.09),
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            )
                            
                          ],
                ),
                child: Padding(
                  padding:  EdgeInsets.all(h*0.015),
                  child:  Icon(Icons.group, size: h*0.03,),
                )),
              title: Text('Donor List'),
              onTap: () {
                // Handle orders tap
              },
            ),
            SizedBox(height: h*0.027,),

            ListTile(
               leading: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6.0),
                   boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 100, 91, 91)
                                    .withOpacity(0.09),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: const Offset(0, 2),
                            )
                   ] 
                ),
                child: Padding(
                  padding:  EdgeInsets.all(h*0.015),
                  child:  Icon(Icons.group, size: h*0.03,),
                )),
              title: Text('Not aware'),
              onTap: () {
                // Handle products tap
              },
            ),
           
             SizedBox(height: h*0.027,),

            ListTile(
               leading: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6.0),
                   boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 100, 91, 91)
                                    .withOpacity(0.09),
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            )
                            
                          ],
                ),
                child: Padding(
                  padding:  EdgeInsets.all(h*0.015),
                  child:  Icon(Icons.lock_outline, size: h*0.03,),
                )),
              title: Text('Logout'),
              onTap: () {
                // Handle products tap
              },
            ),
           
          ],
        ),
      ),
    );
  }

}