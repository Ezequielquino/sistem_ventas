import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderAppbar extends StatelessWidget {
  const HeaderAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 1010.0),
          child: Container(
            height: 30.0,
            width: 100.0,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                SizedBox(width: 10.0),
                Icon(
                  Icons.support_agent,
                  color: Colors.black,
                ),
                SizedBox(width: 10.0),
                Text(
                  "Ayuda",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        //SizedBox(width: 590.0),
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("assets/gustavo.jpg"),
            ),
            SizedBox(width: 5.w),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Usuario administrador",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                  Text("Supervisor",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      )),
                ],
              ),
            ),
            const CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Icon(
                Icons.keyboard_arrow_down_sharp,
                color: Colors.white,
              ),
            )
          ],
        )
      ],
    );
  }
}
