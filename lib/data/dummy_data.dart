import 'package:flutter/material.dart';

// plants dummy data class
class PlantData {
  final int id, waterAfter;
  final String plantName, inHouseLocation, plantImage;
  bool isWatered;

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
List<PlantData> demoPlants = <PlantData>[
  PlantData(
    id: 1,
    plantImage:
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fd12k85dmzrmztv.cloudfront.net%2Fmedia%2Fcatalog%2Fproduct%2Fcache%2F1%2Fimage%2F9df78eab33525d08d6e5fb8d27136e95%2Fj%2Fp%2Fjpip_money_plants_hybrid.jpg&f=1&nofb=1',
    plantName: 'Money Plant',
    inHouseLocation: 'Kitchen',
    isWatered: false,
    waterAfter: 0,
  ),
  PlantData(
    id: 2,
    plantImage:
        'https://www.gardeningknowhow.com/wp-content/uploads/2018/05/zebra-haworthia.jpg',
    plantName: 'Zebra Succulent',
    inHouseLocation: 'Office',
    isWatered: false,
    waterAfter: 1,
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
    waterAfter: 3,
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

class NotificationItems {
  final PlantData plantData;
  final String wateringDate;
  final String notficationTime;

  NotificationItems({
    @required this.notficationTime,
    @required this.plantData,
    @required this.wateringDate,
  });
}

// Demo data for the cart
List<NotificationItems> demoCarts = <NotificationItems>[
  NotificationItems(
      plantData: demoPlants[0],
      wateringDate: 'Today',
      notficationTime: '2 mins ago'),
  NotificationItems(
    plantData: demoPlants[1],
    wateringDate: 'Yesterday',
    notficationTime: '2 mins ago',
  ),
  NotificationItems(
    plantData: demoPlants[3],
    wateringDate: 'Yesterday',
    notficationTime: '10:00am',
  ),
  NotificationItems(
    plantData: demoPlants[0],
    wateringDate: '28th December, 2020',
    notficationTime: '11:00pm',
  ),
  NotificationItems(
    plantData: demoPlants[4],
    wateringDate: '28th December, 2020',
    notficationTime: '3:00pm',
  ),
  NotificationItems(
    plantData: demoPlants[6],
    wateringDate: '28th December, 2020',
    notficationTime: '12:00pm',
  ),
];
