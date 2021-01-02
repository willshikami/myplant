import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:myplants/constants/apptheme.dart';

class PlantCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      child: Card(
        elevation: 0,
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Theme.of(context).splashColor,
        child: Container(
          width: size.width * 0.4,
          // height: size.width * 0.45,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CachedNetworkImage(
                height: size.width * 0.4,
                // TODO: width of image
                // width: size.width * 0.4,
                fit: BoxFit.fill,
                imageUrl: 'imgUrl',
                errorWidget: (context, url, error) => Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 42,
                      ),
                      Icon(
                        Icons.image,
                        size: 36,
                        color: appTheme().textSelectionHandleColor,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Cant find the image',
                        style: TextStyle(
                            color: appTheme().textSelectionHandleColor),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'listName',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            color: appTheme().textSelectionColor,
                          ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'scienceName',
                      style: Theme.of(context).textTheme.bodyText2.copyWith(
                            color: appTheme().textSelectionHandleColor,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
