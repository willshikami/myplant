import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:myplants/constants/apptheme.dart';
import 'package:myplants/constants/constants.dart';
import 'package:myplants/constants/strings_and_paths.dart';
import 'package:myplants/data/dummy_data.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:myplants/presentation/shared_values.dart';

class PlantCard extends StatefulWidget {
  final PlantData plant;

  const PlantCard({
    Key key,
    @required this.plant,
  }) : super(key: key);

  @override
  _PlantCardState createState() => _PlantCardState();
}

class _PlantCardState extends State<PlantCard> {
  final SharedValuesSubject selectedPlant = SharedValuesSubject();
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        // Check if the plant card item is selected or not
        if (isSelected == true) {
          setState(() {
            isSelected = false;
            selectedPlant.isSelected.add(isSelected);
          });
        } else if (isSelected == false) {
          setState(() {
            isSelected = true;
            selectedPlant.isSelected.add(isSelected);
          });
        }
        print(isSelected);
        print(selectedPlant.isSelected.value);
      },
      child: Container(
        decoration: isSelected == true
            ? BoxDecoration(
                border: Border.all(
                  width: 2.5,
                  color: Theme.of(context).primaryColor,
                ),
                borderRadius: BorderRadius.circular(18),
              )
            : BoxDecoration(),
        child: Card(
          elevation: 0,
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          color: Theme.of(context).splashColor,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    CachedNetworkImage(
                      width: size.width * 0.42,
                      height: size.width * 0.42,
                      fit: BoxFit.fill,
                      imageUrl: widget.plant.plantImage,
                      errorWidget: (context, url, error) => Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: size42Space,
                            ),
                            Icon(
                              Icons.image,
                              size: size36Space,
                              color: appTheme().unselectedWidgetColor,
                            ),
                            SizedBox(
                              height: mediumSizeSpace,
                            ),
                            Text(
                              'Cant find the image',
                              style: TextStyle(
                                  color: appTheme().unselectedWidgetColor),
                            )
                          ],
                        ),
                      ),
                    ),
                    isSelected == true
                        ? Positioned(
                            top: smallSizeSpace,
                            right: smallSizeSpace,
                            child: SvgPicture.asset(
                              checkAssetPath,
                              semanticsLabel: 'Selected',
                              width: 28,
                            ),
                          )
                        : Container(),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.plant.plantName,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headline2.copyWith(
                              color: appTheme().highlightColor,
                            ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        widget.plant.inHouseLocation,
                        style: Theme.of(context).textTheme.subtitle2.copyWith(
                              color: appTheme().unselectedWidgetColor,
                            ),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'Water',
                          style: Theme.of(context).textTheme.subtitle1.copyWith(
                                color: Theme.of(context).primaryColor,
                              ),
                          children: [
                            TextSpan(
                              // Check if time to watering is 24hrs or less to show
                              /// either [ Water Today ] or [ Water in X days ]
                              text: widget.plant.waterAfter == 0
                                  ? ' Today'
                                  : ' in ${widget.plant.waterAfter} day',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .copyWith(
                                    color: Theme.of(context).primaryColor,
                                  ),
                            ),
                            TextSpan(
                              // Check if time to watering is 24hrs or less to show
                              /// either [ days ] or [ day ]
                              text: widget.plant.waterAfter == 1 ||
                                      widget.plant.waterAfter == 0
                                  ? ''
                                  : 's',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  .copyWith(
                                    color: Theme.of(context).primaryColor,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}






// import 'package:async_redux/async_redux.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:myplants/business/redux/app_state.dart';
// import 'package:myplants/business/redux/common/app_state_viewmodel.dart';
// import 'package:myplants/constants/apptheme.dart';
// import 'package:myplants/constants/constants.dart';
// import 'package:myplants/data/dummy_data.dart';

// import 'package:flutter_svg/flutter_svg.dart';

// class PlantCard extends StatefulWidget {
//   final PlantData plant;

//   const PlantCard({
//     Key key,
//     @required this.plant,
//   }) : super(key: key);

//   @override
//   _PlantCardState createState() => _PlantCardState();
// }

// class _PlantCardState extends State<PlantCard> {
//   @override
//   Widget build(BuildContext context) {
//     final String assetPath = 'assets/svgs/check.svg';
//     Size size = MediaQuery.of(context).size;
//     return StoreConnector<AppState, AppStateViewModel>(
//         converter: (Store<AppState> store) =>
//             AppStateViewModel.fromStore(store),
//         builder: (BuildContext context, AppStateViewModel vm) {
//           //  StreamBuilder<QuerySnapshot>(
//           //    stream: FirebaseFirestore.instance.collection('plants').snapshots(),
//           //    builder: (BuildContext context, AsyncSnapshot snapshot) {
//           return GestureDetector(
//             // onTap: () {
//             //   if (widget.plant.isWatered == true) {
//             //     setState(() {
//             //       widget.plant.isWatered = false;
//             //     });
//             //   }
//             //   if (widget.plant.isWatered == false) {
//             //     setState(() {
//             //       widget.plant.isWatered = true;
//             //     });
//             //   }
//             // },
//             child: Container(
//               decoration: vm.state.plantState.selectedPlant == true
//                   ? BoxDecoration(
//                       border: Border.all(
//                         width: 2.5,
//                         color: Theme.of(context).primaryColor,
//                       ),
//                       borderRadius: BorderRadius.circular(18),
//                     )
//                   : BoxDecoration(),
//               child: Card(
//                 elevation: 0,
//                 semanticContainer: true,
//                 clipBehavior: Clip.antiAliasWithSaveLayer,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//                 color: Theme.of(context).splashColor,
//                 child: Container(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Stack(
//                         children: [
//                           CachedNetworkImage(
//                             width: size.width * 0.42,
//                             height: size.width * 0.42,
//                             fit: BoxFit.fill,
//                             imageUrl: widget.plant.plantImage,
//                             errorWidget: (context, url, error) => Center(
//                               child: Column(
//                                 children: [
//                                   SizedBox(
//                                     height: size42Space,
//                                   ),
//                                   Icon(
//                                     Icons.image,
//                                     size: size36Space,
//                                     color: appTheme().unselectedWidgetColor,
//                                   ),
//                                   SizedBox(
//                                     height: mediumSizeSpace,
//                                   ),
//                                   Text(
//                                     'Cant find the image',
//                                     style: TextStyle(
//                                         color:
//                                             appTheme().unselectedWidgetColor),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                           vm.state.plantState.selectedPlant == true
//                               ? Positioned(
//                                   top: smallSizeSpace,
//                                   right: smallSizeSpace,
//                                   child: SvgPicture.asset(
//                                     assetPath,
//                                     semanticsLabel: 'Selected',
//                                     width: 28,
//                                   ),
//                                 )
//                               : Container(),
//                         ],
//                       ),
//                       Container(
//                         padding: EdgeInsets.all(10),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               widget.plant.plantName,
//                               overflow: TextOverflow.ellipsis,
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .headline2
//                                   .copyWith(
//                                     color: appTheme().highlightColor,
//                                   ),
//                             ),
//                             SizedBox(
//                               height: 2,
//                             ),
//                             Text(
//                               widget.plant.inHouseLocation,
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .subtitle2
//                                   .copyWith(
//                                     color: appTheme().unselectedWidgetColor,
//                                   ),
//                             ),
//                             SizedBox(
//                               height: 14,
//                             ),
//                             RichText(
//                               text: TextSpan(
//                                 text: 'Water',
//                                 style: Theme.of(context)
//                                     .textTheme
//                                     .subtitle1
//                                     .copyWith(
//                                       color: Theme.of(context).primaryColor,
//                                     ),
//                                 children: [
//                                   TextSpan(
//                                     // Check if time to watering is 24hrs or less to show
//                                     /// either [ Water Today ] or [ Water in X days ]
//                                     text: widget.plant.waterAfter == 0
//                                         ? ' Today'
//                                         : ' in ${widget.plant.waterAfter} day',
//                                     style: Theme.of(context)
//                                         .textTheme
//                                         .subtitle1
//                                         .copyWith(
//                                           color: Theme.of(context).primaryColor,
//                                         ),
//                                   ),
//                                   TextSpan(
//                                     // Check if time to watering is 24hrs or less to show
//                                     /// either [ days ] or [ day ]
//                                     text: widget.plant.waterAfter == 1 ||
//                                             widget.plant.waterAfter == 0
//                                         ? ''
//                                         : 's',
//                                     style: Theme.of(context)
//                                         .textTheme
//                                         .subtitle1
//                                         .copyWith(
//                                           color: Theme.of(context).primaryColor,
//                                         ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           );
//         });
//   }
// }
