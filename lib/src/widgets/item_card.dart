import 'package:flutter/material.dart';
import 'package:mvc_structure_gogoapp/src/widgets/item_card_recommended.dart';
import 'package:mvc_structure_gogoapp/src/widgets/tag_image_widgets.dart';

class ItemCard extends StatefulWidget {
  final bool isSelected;
  final String title;
  final String subTitle;
  final String imageUrl;
  final String price;
  final String favorite;
  final bool shadowOn;

  ItemCard({
    Key key,
    this.title,
    this.subTitle,
    this.price,
    this.favorite,
    this.imageUrl,
    this.isSelected,
    this.shadowOn,
  }) : super(
          key: key,
        );

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) => Stack(
        children: <Widget>[
          ItemCardRecommended(isSelected: widget.isSelected),
          Container(
            width: 300,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[200],
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              child: Image.network(
                widget.imageUrl == null
                    ? 'https://cdn.pixabay.com/photo/2016/02/19/10/00/food-1209007_960_720.jpg'
                    : widget.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 250.0,
            child: Container(
              width: 300,
              height: 175,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 1,
                      color: Colors.grey[400],
                      spreadRadius: 0.1,
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.title == null ? 'SOPA EXTRANJERA' : widget.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        widget.subTitle == null ? 'La sopita' : widget.subTitle,
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.favorite,
                                  size: 14,
                                  color: Colors.grey,
                                ),
                                Text(
                                  widget.favorite == null
                                      ? '121'
                                      : '${widget.favorite}',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Divider(),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey, width: 1),
                        ),
                        child: Text('Sopas'),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey, width: 1),
                        ),
                        child: Text('Tipicos'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        widget.price == null ? '\$ 3.50' : '\$ ${widget.price}',
                        style: TextStyle(
                          // color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        clipBehavior: Clip.hardEdge,
                        child: Text(
                          'PEDIR',
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 20),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          TagImageWidgets(
            tagsList: [
              '15 MIN',
              'Para llevar',
            ],
          ),
        ],
      );
}
