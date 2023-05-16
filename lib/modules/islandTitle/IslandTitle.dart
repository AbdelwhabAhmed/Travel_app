import 'package:flutter/material.dart';
import 'package:travel_app/IslandCart.dart';

import '../../Places.dart';
import '../../models/islands/islandModel.dart';

class IslandTitle extends StatelessWidget {
  final Islands islands;
  final Function press2;
  const IslandTitle( {
    Key? key,
    required this.press2, required this.islands,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){press2!();},
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
            height: 200,
            width:200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image:
                    NetworkImage(islands.image),
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
                          '${islands.title}',style:
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
                      'Started at ${islands.coast}',style:
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