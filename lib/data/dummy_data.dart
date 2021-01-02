import 'package:flutter/material.dart';

// plants dummy data class
class PlantData {
  final int id, waterAfter;
  final String plantName, inHouseLocation, plantImage;
  final bool isWatered;

  PlantData({
    @required this.id,
    @required this.plantName,
    @required this.waterAfter,
    @required this.plantImage,
    @required this.inHouseLocation,
    @required this.isWatered,
  });
}

//List of plants dummy data
List<PlantData> demoProducts = <PlantData>[
  PlantData(
    id: 1,
    plantImage:
        'https://cdn.shopify.com/s/files/1/0357/2567/2492/products/img_8745_facetune_14-05-2020-13-37-53_1_1024x1024.jpg?v=1592140356',
    plantName: 'Money plant',
    inHouseLocation: 'Kitchen',
    isWatered: false,
    waterAfter: 1,
  ),
  PlantData(
    id: 2,
    plantImage:
        'https://www.gardeningknowhow.com/wp-content/uploads/2018/05/zebra-haworthia.jpg',
    plantName: 'Zebra Succulent',
    inHouseLocation: 'Office',
    isWatered: false,
    waterAfter: 2,
  ),
  PlantData(
    id: 3,
    plantImage:
        'https://cdn.shopify.com/s/files/1/0059/8835/2052/products/Rubber_Tree_FGT_600x600_44778a68-82aa-43e2-9106-977ecb7e080a_grande.jpg?v=1605224338',
    plantName: 'Rubber Plant',
    inHouseLocation: 'Office',
    isWatered: false,
    waterAfter: 2,
  ),
  PlantData(
    id: 1,
    plantImage:
        'https://secure.img1-fg.wfcdn.com/im/40538253/compr-r85/1026/102628369/aloe-plant-pot.jpg',
    plantName: 'Aloe Vera',
    inHouseLocation: 'Kitchen window',
    isWatered: false,
    waterAfter: 3,
  ),
  PlantData(
    id: 5,
    plantImage:
        'https://cgaxisimages.fra1.cdn.digitaloceanspaces.com/2014/07/05copy_0.jpg',
    plantName: 'Cactus Jake',
    inHouseLocation: 'Balcony',
    isWatered: false,
    waterAfter: 4,
  ),
  PlantData(
    id: 6,
    plantImage:
        'https://cdn.shopify.com/s/files/1/0260/3037/4957/products/medium-plant-snake-white-pot_800x.jpg?v=1608241288',
    plantName: 'Snakey',
    inHouseLocation: 'Balcony',
    isWatered: false,
    waterAfter: 4,
  ),
];
