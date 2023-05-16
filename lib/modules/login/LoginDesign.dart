import 'package:flutter/material.dart';

class LoginDesign extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: double.infinity,
        height :double.infinity,
        decoration:
        BoxDecoration(
            image: DecorationImage(
                image:
                AssetImage(
                    'assets/images/pexels-quang-nguyen-vinh-3355788.jpg'
                ),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Icon(
                        Icons.email,

                    ),

                ),
              ),
            ),
          ],
        ),
      ) ,
    );
  }
}
