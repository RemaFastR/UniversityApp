import 'package:flutter/material.dart';
import 'package:university_app/src/bll/models/ientity.dart';

class CustomListView extends StatelessWidget {
  double itemWidth;
  List<IEntity> items;

  CustomListView({this.itemWidth, this.items});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              width: itemWidth / 1.5,
              margin: EdgeInsets.all(5),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  items[index].name,
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w300,
                      fontSize: 36),
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff7c94b6),
                  image: DecorationImage(
                    image: AssetImage(
                      items[index].image,
                    ),
                    fit: BoxFit.fill,
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.7), BlendMode.dstATop),
                  )),
            );
          }),
    );
  }
}
