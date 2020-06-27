import 'package:flutter/material.dart';
import '../../service/scoped_model/restaurant_model.dart';

import '../widgets/home_top_info.dart';
import '../widgets/search_field.dart';
import '../widgets/frequently_restaurant.dart';
import '../../models/home_models/restau_model.dart';

class HomePage extends StatefulWidget {
  final Restaurant_model restaurantmodel;
  HomePage(this.restaurantmodel);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 @override
 void initState(){
   widget.restaurantmodel.fetchRestau();
   super.initState();
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          padding: EdgeInsets.only(top: 50.0,left: 20.0,right: 20.0),
          children: <Widget>[

            HomeTopInfo(),

            SizedBox(height: 20.0,),
            SearchField(),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Popular Restaurants",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                GestureDetector(
                  onTap: (){},
                  child :Text("View All",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.orangeAccent),
                  ),
                ),
              ],
            ),
            SizedBox(height:30.0,),
            Column(

              children: widget.restaurantmodel.restaurants.map(_buildRestaurantItems).toList(),
            )
          ],
        )
    );
  }
  Widget _buildRestaurantItems(restaurant rs){
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: frequenlyRestaurant(
          id:rs.id,
          name:rs.name,
          imagePath:rs.imagePath,
          category:rs.category,
          discount:rs.discount,
          ratings:rs.ratings,
          information: rs.information
      ),
    );
  }
}
