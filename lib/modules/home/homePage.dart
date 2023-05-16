import 'package:flutter/material.dart';
import 'package:travel_app/Categoies.dart';
import 'package:travel_app/modules/countrydetails/CountryDetails.dart';
import 'package:travel_app/modules/islandsdetails/IslandDetails.dart';
import 'package:travel_app/modules/islandTitle/IslandTitle.dart';
import 'package:travel_app/Places.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../countryTitle/CountryTitle.dart';
import '../../IslandCart.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Scaffold(
        bottomNavigationBar:
        CurvedNavigationBar(
          height: 45,
          backgroundColor: Colors.black87,
          items: <Widget>[
            Icon(Icons.compare_arrows_sharp, size: 30),
            Icon(Icons.home, size: 30),
            Icon(Icons.notifications, size: 30),
          ],
          onTap: (index) {
            //Handle button tap
          },
        ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Colors.white,
         title:
         Row(
           children: [
             Icon(
               Icons.location_on,
               color: Colors.black87,
             ),
             SizedBox(width: 5,),
             Text(
               'NewYork,USA',
               style: TextStyle(
                   color: Colors.black87,
                   fontWeight: FontWeight.w400
               ),
             ),
           ],
         ),
        actions: [

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius:25 ,
                backgroundImage: NetworkImage('https://images.pexels.com/photos/5486199/pexels-photo-5486199.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              ),
            )

        ],
      ),
      body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
               'hey,Alex',

                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:8.0),
              child: Text(
                '''Let\'s Explore 
                The World..
                ''',

                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Categories(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                      'Popular Places',
                       style: TextStyle(
                         color: Colors.black87,
                         fontWeight: FontWeight.bold,
                         fontSize: 15
                       ),

                  ),
                  Spacer(),
                  TextButton(
                      onPressed: (){},
                      child:Text(
                        'See all',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,

                        ),

                      ),
                  )
                ],
              ),
            ),
            Container(
              height: 200,
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder:
                    (context,index)=>CountryTitle(
                      places: places[index],
                      press: ()=>Navigator.push(context,
                          MaterialPageRoute(builder:(context)=>DetailsScreen(  places: places[index],)
                          )
                      ),

                    ),
                itemCount: places.length,

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    'Recommended Islands',
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),

                  ),
                  Spacer(),
                  TextButton(
                    onPressed: (){},
                    child:Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,

                      ),

                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 200,
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder:
                    (context,index)=>IslandTitle(
                        islands:island[index] ,
                  press2: ()=>Navigator.push(context,
                      MaterialPageRoute(builder:(context)=>IslandDetails( islands:island[index] )
                      )
                  ),  

                ),
                itemCount: places.length,

              ),
            ),





          ],
        ),
      )

    );
  }
}



