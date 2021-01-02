import 'package:flutter/material.dart';
import 'package:myplants/constants/widgets/buttons.dart';
import 'package:myplants/constants/widgets/custom_container.dart';
import 'package:myplants/constants/widgets/textfield.dart';

class Utils {
  static void addPlants(BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        context: context,
        builder: (context) {
          return Container(
            // Bottom sheet height
            height: MediaQuery.of(context).size.height * 2.0,
            child: CustomContainer(
              childWidget: Column(
                children: [
                  SizedBox(height: 42),
                  CustomTextField(
                    fieldTitle: 'Name your plant',
                  ),
                  SizedBox(height: 24),
                  CustomTextField(
                    fieldTitle: 'Inhouse location',
                  ),
                  SizedBox(height: 24),
                  CustomTextField(
                    fieldTitle: 'Water every(number of days)',
                  ),
                  SizedBox(height: 24),
                  PrimaryButton(
                    buttonCallback: () {},
                    buttonTitle: 'Save plant',
                  )
                ],
              ),
            ),
          );
        });
  }
}
