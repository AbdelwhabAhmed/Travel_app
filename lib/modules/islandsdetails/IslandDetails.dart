import 'package:flutter/material.dart';
import 'package:travel_app/Places.dart';
import 'package:travel_app/shared/components/components.dart';

import '../../Categories2.dart';
import '../../IslandCart.dart';
import '../../models/islands/islandModel.dart';

class IslandDetails extends StatelessWidget {
  final Islands islands;
  const IslandDetails({super.key, required this.islands, });

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return  Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar (
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
            },
          icon:(
              Icon(
                  Icons.arrow_back_ios
              )
          ),

        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
          children:[Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image:
                    NetworkImage(islands.image),
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)
                )
            ),
          ),

            Container(
              height:double.infinity,
              width: double.infinity,
              margin:EdgeInsets.only(top:size.height*.4),
              padding: EdgeInsets.only(top: 30,left: 20,right:20 ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft:Radius.circular(40),
                      topRight: Radius.circular(40)

                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '${islands.title}',style:
                      TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),
                      Spacer(),
                      Text(
                        '${islands.coast}',style:
                      TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w500
                      ),),
                    ],

                  ),
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 15,
                      ),
                      Text('4.9 (2.7K)',
                        style:TextStyle(
                          color: Colors.grey,
                          fontSize:14,
                        ),
                      ),
                      Spacer(),
                      Text('Estimated Coast ',
                        style:TextStyle(
                          color: Colors.grey,
                          fontSize:14,
                        ),
                      ),



                    ],
                  ),
                  SizedBox(height: 15,),
                  Categories2(),
                  SizedBox(height: 10,),
                  Expanded(
                    child: Text(
                      '${islands.description}',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold

                      ),

                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.timer,
                                color: Colors.blue,
                              ),
                              Text(
                                '${islands.duration}',style:
                              TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25,top: 5),
                            child: Text(
                              'Duration',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                        ],

                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.pinkAccent,
                              ),
                              Text(
                                '${islands.distance}',style:
                              TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25,top: 5),
                            child: Text(
                              'Distance',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                        ],

                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.sunny,
                                color: Colors.amber,
                              ),
                              Text(
                                '24\'c',style:
                              TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25,top: 5),
                            child: Text(
                              'Sunny',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                        ],

                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top:10,left:15,right: 15),
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color:Colors.black
                              ),
                              borderRadius: BorderRadius.circular(24)
                          ),
                          child:Text(
                            '${islands.coast}',style:
                          TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w500
                          ),),
                        ),
                        SizedBox(width: 50,),
                        Expanded(
                            child:
                            BookButton()
                        ),
                      ],
                    ),
                  )
                ],
              ),

            )        ]
      ),
    );
  }
}
