import 'package:flutter/material.dart';
import 'package:myplants/client/shared_values.dart';
import 'package:myplants/client/widgets/app_bar_actions.dart';
import 'package:myplants/client/widgets/app_title.dart';
import 'package:myplants/client/widgets/plant_card.dart';
import 'package:myplants/constants/constants.dart';
import 'package:myplants/constants/widgets/buttons.dart';
import 'package:myplants/constants/widgets/custom_container.dart';
import 'package:myplants/data/dummy_data.dart';

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
