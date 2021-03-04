import 'package:flutter/material.dart';
import 'package:myplants/constants/constants.dart';
import 'package:myplants/constants/widgets/buttons.dart';
import 'package:myplants/constants/widgets/custom_container.dart';
import 'package:myplants/data/dummy_data.dart';
import 'package:myplants/presentation/shared_values.dart';
import 'package:myplants/presentation/widgets/app_bar_actions.dart';
import 'package:myplants/presentation/widgets/app_title.dart';
import 'package:myplants/presentation/widgets/plant_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final SharedValuesSubject selectedPlant = SharedValuesSubject();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: selectedPlant.isSelected.value == true
          ? PrimaryButton(
              buttonCallback: () {},
              buttonTitle: 'Water plants',
            )
          : Container(),
      body: SafeArea(
        child: CustomContainer(
          childWidget: Column(
            children: <Widget>[
              AppBarActions(),
              SizedBox(
                height: extraLargeSpace,
              ),
              AppTitle(),
              SizedBox(
                height: extraLargeSpace,
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: demoPlants.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: smallSizeSpace,
                    crossAxisSpacing: smallSizeSpace,
                    crossAxisCount: 2,
                    childAspectRatio: 0.63,
                  ),
                  itemBuilder: (context, index) => PlantCard(
                    plant: demoPlants[index],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:myplants/data/dummy_data.dart';
// import 'package:myplants/presentation/shared_values.dart';
// import 'package:myplants/presentation/widgets/app_bar_actions.dart';
// import 'package:myplants/presentation/widgets/app_title.dart';
// import 'package:myplants/presentation/widgets/plant_card.dart';
// import 'package:myplants/constants/constants.dart';
// import 'package:myplants/constants/widgets/custom_container.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key key, this.plant}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
//   final PlantData plant;
// }

// class _HomePageState extends State<HomePage> {
//   final SharedValuesSubject selectedPlant = SharedValuesSubject();

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<QuerySnapshot>(
//         stream: FirebaseFirestore.instance.collection('plants').snapshots(),
//         builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//           if (!snapshot.hasData) {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//           final loadedData = snapshot.data.docs;
//           final plantItems = loadedData.map((doc) {
//             final listName = doc.data()['plantName'];
//             return PlantCard(
//               plant: widget.plant,
//             );
//           }).toList;
//           final plantData = loadedData[0]['documentID'];
//           print(plantData);
//           return Scaffold(
//             backgroundColor: Theme.of(context).backgroundColor,
//             // floatingActionButtonLocation:
//             //     FloatingActionButtonLocation.centerFloat,
//             // floatingActionButton: vm.state.plantState.selectedPlant == true
//             //     ? PrimaryButton(
//             //         buttonCallback: () {},
//             //         buttonTitle: 'Water plants',
//             //       )
//             //     : Container(),
//             body: SafeArea(
//               child: CustomContainer(
//                 childWidget: Column(
//                   children: <Widget>[
//                     AppBarActions(),
//                     SizedBox(
//                       height: extraLargeSpace,
//                     ),
//                     AppTitle(),
//                     SizedBox(
//                       height: extraLargeSpace,
//                     ),
//                     Expanded(
//                       child: GridView.builder(
//                         itemCount: loadedData.length,
//                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                           mainAxisSpacing: smallSizeSpace,
//                           crossAxisSpacing: smallSizeSpace,
//                           crossAxisCount: 2,
//                           childAspectRatio: 0.63,
//                         ),
//                         itemBuilder: (context, index) => PlantCard(
//                           plant: plantData[index],
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           );
//         });
//   }
// }

