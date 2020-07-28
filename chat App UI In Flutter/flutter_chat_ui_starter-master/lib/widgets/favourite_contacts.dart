import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/models/message_model.dart';

class FavouriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Favourite contacts",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      fontSize: 18.0),
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.blueGrey,
                  ),
                  iconSize: 30.0,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            //color: Colors.red,
            height: 120,
            child: ListView.builder(
                padding: EdgeInsets.only(left: 10.0),
                scrollDirection: Axis.horizontal,
                itemCount: favorites.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage:
                              AssetImage(favorites[index].imageUrl),
                          radius: 35.0,
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          favorites[index].name,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                              color: Colors.blueGrey),
                        ),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
