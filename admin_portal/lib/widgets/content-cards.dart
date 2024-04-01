
import 'package:admin_portal/utils/colors.dart';
import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  final IconData icon;
  final String mainText;
  final String countText;
  final double containerHeight;
  final double containerWidth;
  

  const ContentCard({
    Key? key,
    required this.countText,
    required this.icon,
    required this.mainText,
    this.containerHeight = 100.0, 
    this.containerWidth = 100.0, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Container(
      height: containerHeight,
      width: containerWidth,
      decoration:  BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 56, 47, 47)
                                    .withOpacity(0.09),
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            )
                            
                          ],
                        ),
      child: Padding(
        padding: EdgeInsets.symmetric(
                        horizontal: w * 0.015,
                        vertical: h * 0.022,
                      ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
                       
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mainText,
                 // style: headerStyle(fontSize: h*0.02), 
                ),
                Text(
                  countText,
                 // style: headerStyle(fontSize: h*0.02), 
                ),
              ],
            ),

            //SizedBox(width: w * 0.012),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 56, 47, 47)
                                    .withOpacity(0.09),
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            )
                            
                          ],
                gradient: AppColors.linearGradient
        
              ),
              child: Padding(
                padding:  EdgeInsets.all( h*0.02),
                child: Icon(icon, color: Colors.white, size: h*0.03),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
