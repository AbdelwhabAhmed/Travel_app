import 'package:flutter/material.dart';

import '../../Places.dart';

class CountryTitle extends StatelessWidget {
 final Places places;
 final Function press;
  const CountryTitle( {
    Key? key,
    required this.places,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){press!();},
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 200,
            width:200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image:
                    NetworkImage(places.image),
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)
                )
            ),
            child:Padding(
                padding: const EdgeInsets.all( 10),
                child:Column(

                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      children: [
                        Text(
                          '${places.title}',style:
                        TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),),
                        Spacer(),
                        Text('4.9',
                          style:TextStyle(
                              color: Colors.white,
                              fontSize:15
                          ),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 15,
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'Started at ${places.coast}',style:
                    TextStyle(
                      color: Colors.white,
                      fontSize: 15,


                    ),),

                  ],
                )

            )
        ),
      ),
    );
  }
}