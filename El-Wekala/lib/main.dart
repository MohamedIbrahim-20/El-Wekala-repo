import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:untitled/dbprovider.dart';
import 'package:untitled/pages/MainPage.dart';
import 'package:untitled/pages/Profile.dart';
import 'package:untitled/pages/product%20page.dart';
import 'package:untitled/pages/productlist.dart';
import 'package:untitled/pages/productlist.dart';
import 'package:untitled/pages/yourorders.dart';
import 'package:untitled/utls/Database.dart';
import 'package:untitled/utls/cartdatabase.dart';
import 'package:untitled/utls/model.dart';
import 'package:untitled/utls/ordersdatabase.dart';
import 'package:untitled/utls/userdatabase.dart';

import 'pages/add.dart';
import 'pages/loginscreen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await LocalDatabase.creatDatabase();
  await UserDatabase.creatDatabase();
  await CartDatabase.creatDatabase();
  await OrdersDatabase.creatDatabase();
  // await CartDatabase.getFullPrice(1);
  // await UserDatabase.getDate();
  // OrdersDatabase.deleteDatabase(1);
  // CartDatabase.deleteDatabase(2);
  // CartDatabase.deleteDatabase(3);
  // CartDatabase.deleteDatabase(4);
  // CartDatabase.deleteDatabase(5);
  // List<Map<String,dynamic>> l = await OrdersDatabase.getData();
  // print(l[27]);
  // OrdersDatabase.deleteDatabaseById(36);
  // OrdersDatabase.deleteDatabaseById(35);
  // OrdersDatabase.deleteDatabaseById(34);
  // OrdersDatabase.deleteDatabaseById(33);
  // OrdersDatabase.deleteDatabaseById(32);
  // OrdersDatabase.deleteDatabaseById(31);
  // OrdersDatabase.deleteDatabaseById(30);
  // OrdersDatabase.deleteDatabaseById(29);
  // OrdersDatabase.deleteDatabaseById(28);
  // OrdersDatabase.deleteDatabaseById(27);
  // OrdersDatabase.deleteDatabaseById(26);
  // OrdersDatabase.deleteDatabaseById(25);
  // OrdersDatabase.deleteDatabaseById(24);
  // OrdersDatabase.deleteDatabaseById(23);
  // OrdersDatabase.deleteDatabaseById(22);
  // OrdersDatabase.deleteDatabaseById(21);
  // OrdersDatabase.deleteDatabaseById(26);
  // print(l.length);
  // List<Map<String,dynamic>> l = await UserDatabase.validation("mohamedibra1209@gmail.com", "12345678");
  // print(l);
  await LocalDatabase.insertDatabase(
      img: "https://m.media-amazon.com/images/I/71jUTiC4onL._AC_SL1500_.jpg",
      title: "TOPOSH 11.6 inch 2 in 1 Laptop Tablet Computer with Touch Screen, Intel Celeron Quad Core N4120 8GB RAM 256 GB SSD- Silver",
      amount: 10,
      category: "Technology",
      company: "TOPOSH Store",
      detail1: "COMPACT AND LIGHT WEIGHT: The 2 in 1 laptop tablet is only 1.1 kgs,with 11.6 inch screen which has good brightness and good resolution FullHD 1920 X 1080 p, up to 90% screen to body ratio.",
      detail2: "INTERFACES: This laptop is equipped with abundant ports:Android interface X 1, SD card slot X 1, Micro HDMI interface X 1, USB 3.0Type-C interface X 1, Headphone jack interface X 1,support vairous of extra function.",
      price: 6387);

  await LocalDatabase.insertDatabase(
      img: '''https://m.media-amazon.com/images/I/7189iXimfWL._AC_SL1500_.jpg''',
      title: '''Acer Aspire 5 A515-46-R3UB | 15.6" Full HD IPS Display | AMD Ryzen 3 3350U Quad-Core Mobile Processor | 4GB DDR4 | 128GB NVMe SSD | WiFi 6 | Backlit KB | FPR | Amazon Alexa | Windows 11 Home in S mode''',
      amount: 6,
      category: "Technology",
      company: "Traditional Laptop Computers by Acer",
      detail1: '''Powerful Productivity: AMD Ryzen 3 3350U delivers desktop-class performance and amazing battery life in a slim notebook. With Precision Boost, get up to 3.5GHz for your high-demand applications''',
      detail2: '''Maximized Visuals: See even more on the stunning 15.6" Full HD display with 82.58% screen-to-body, 16:9 aspect ratio and narrow bezels''',
      price: 5952);

  await LocalDatabase.insertDatabase(
      img: '''https://m.media-amazon.com/images/I/71nz3cIcFOL._AC_SL1500_.jpg''',
      title: '''Acer Predator Helios 300 PH315-54-760S Gaming Laptop | Intel i7-11800H | NVIDIA GeForce RTX 3060 Laptop GPU | 15.6" Full HD 144Hz 3ms IPS Display | 16GB DDR4 | 512GB SSD | Killer WiFi 6 | RGB Keyboard''',
      amount: 12,
      category: "Technology",
      company: "Traditional Laptop Computers by Acer",
      detail1: '''Extreme Performance: Crush the competition with the impressive power and speed of the 11th Generation Intel Core i7-11800H processor, featuring 8 cores and 16 threads to divide and conquer any task or run your most intensive games''',
      detail2: '''Internal Specifications: 16GB DDR4 3200MHz memory (2 DDR4 Slots Total, Maximum 32GB); 512GB PCIe Gen 4 SSD (2 x PCIe M.2 Slots/1 x 2.5" Hard Drive Bay Available)''',
      price: 20592);

  await LocalDatabase.insertDatabase(
      img: '''https://m.media-amazon.com/images/I/718B6zl+b6L._AC_SL1500_.jpg''',
      title: '''Samsung Galaxy Tab S6 Lite 10.4", 64GB Wi-Fi Tablet Oxford Gray - SM-P610NZAAXAR - S Pen Included''',
      amount: 6,
      category: "Technology",
      company: "Samsung Electronics Store",
      detail1: '''Slim Metal Design: Take this sleek, lightweight tablet anywhere. Its slim design slips right into your bag and comes in your choice of stylish colors''',
      detail2: '''Entertainment Ready: A vivid, crystal clear display draws you into content while dual speakers with sound by AKG supply spacious, Dolby Atmos surround sound''',
      price: 4504);

  await LocalDatabase.insertDatabase(
      img: '''https://m.media-amazon.com/images/I/71IOwQhjZNL._AC_SL1500_.jpg''',
      title: '''HP 14 Laptop, AMD Ryzen 5 5500U, 8 GB RAM, 256 GB SSD Storage, 14-inch Full HD Display, Windows 11 Home, Thin & Portable, Micro-Edge & Anti-Glare Screen, Long Battery Life (14-fq1025nr, 2021)''',
      amount: 5,
      category: "Technology",
      company: "Traditional Laptop Computers by Acer",
      detail1: '''POWER THROUGH FROM ANYWHERE – Designed to keep you productive and entertained from anywhere, the HP 14-inch Laptop combines long-lasting battery life with a thin and portable design.''',
      detail2: '''Maximized Visuals: See even more on the stunning 15.6" Full HD display with 82.58% screen-to-body, 16:9 aspect ratio and narrow bezels''',
      price: 7545);

  await LocalDatabase.insertDatabase(
      img: '''https://m.media-amazon.com/images/I/71c5W9NxN5L._AC_SL1500_.jpg''',
      title: '''Acer Chromebook Spin 311 Convertible Laptop, Intel Celeron N4020, 11.6" HD Touch, 4GB LPDDR4, 32GB eMMC, Gigabit Wi-Fi 5, Bluetooth 5.0, Google Chrome, CP311-2H-C679''',
      amount: 6,
      category: "Technology",
      company: "Acer",
      detail1: '''All the Google apps you know and love come standard on every Chromebook, which means you can edit, download, and convert Microsoft Office files in Google Docs, Sheets and Slides.''',
      detail2: '''Get access to more than 2 million Android apps from Google Play to learn and do more.''',
      price: 3458);

  await LocalDatabase.insertDatabase(
      img: '''https://m.media-amazon.com/images/I/51NWa-B8RvL._AC_UX679_.jpg''',
      title: '''Levi's Men's 559 Relaxed Straight Fit Jean - 34W x 32L - Cash - Stretch''',
      amount: 16,
      category: "Clothing",
      company: "Levi's",
      detail1: '''98% Cotton, 2% Elastane''',
      detail2: '''Wash And Dry Inside Out With Like Colors; Liquid Detergent Is Recommended''',
      price: 547);

  await LocalDatabase.insertDatabase(
      img: '''https://m.media-amazon.com/images/I/912CTgUFhES._AC_UY879_.jpg''',
      title: '''Southpole Men's Basic Fleece Jogger Pant-Reg and Big & Tall Sizes''',
      amount: 16,
      category: "Clothing",
      company: "Southpole",
      detail1: '''100% Polyester''',
      detail2: '''Elastic closure''',
      price: 264);

  await LocalDatabase.insertDatabase(
      img: '''https://m.media-amazon.com/images/I/91XLJL1h1nS._AC_SL1500_.jpg''',
      title: '''Legendary Whitetails Men's Buck Camp Flannel Shirt''',
      amount: 20,
      category: "Clothing",
      company: "Legendary Whitetails Store",
      detail1: '''98% Cotton, 2% Elastane''',
      detail2: '''100% SATISFACTION GUARANTEE: Designed in the USA, Legendary Whitetails is an American small business. We take pride in all our products''',
      price: 482);

  await LocalDatabase.insertDatabase(
      img: '''https://m.media-amazon.com/images/I/91YHIgoKb4L._AC_UX679_.jpg''',
      title: '''Hanes Men's Beefy Long Sleeve Henley Shirt''',
      amount: 6,
      category: "Clothing",
      company: "Hanes Store",
      detail1: '''100% Cotton''',
      detail2: '''Famously durable beefy fabric''',
      price: 160);

  await LocalDatabase.insertDatabase(
      img: '''https://m.media-amazon.com/images/I/71eJrikQ+vL._AC_UX679_.jpg''',
      title: '''Mens Fashion Hoodies Sweatshirt Casual - Long Sleeve Hooded Sweaters Pullover Winter Clothes for Men''',
      amount: 5,
      category: "Clothing",
      company: "Cot-Oath",
      detail1: '''100% Polyester Soft & Comfortable''',
      detail2: '''Features:Long Sleeve,Drawstrings,One Piece Plaid Jacquard,Pollover Hooded sweatshirt with pocket.''',
      price: 514);

  await LocalDatabase.insertDatabase(
      img: '''https://m.media-amazon.com/images/I/61QWya4aMqL._AC_UX679_.jpg''',
      title: '''Mens Hip Hop Tie-Dyed Hipster Curve Hem T Shirt''',
      amount: 10,
      category: "Clothing",
      company: "KLIEGOU Store",
      detail1: '''Cotton,Spandex''',
      detail2: '''The Product Description has detailed size information. Please select the appropriate size according to the size chart we provide.''',
      price: 385);

  await LocalDatabase.insertDatabase(
      img: '''https://m.media-amazon.com/images/I/81gU0NVV5WL._AC_UX522_.jpg''',
      title: '''Fossil Women's Gen 5E 42mm Stainless Steel Touchscreen Smartwatch with Speaker, Heart Rate, Contactless Payments and Smartphone Notifications''',
      amount: 10,
      category: "watches",
      company: "Smartwatches by Fossil",
      detail1: '''Stay connected with notifications for calls, texts, apps and automatic time, time zone and calendar syncing. Never miss a call - answer and make calls directly on your watch when your phone is out of reach.''',
      detail2: '''Use the WearOS by Google app on your phone running the latest version of Android (excluding Go edition) or iOS . Supported features may vary between platforms and countries with compatibility subject to change.''',
      price: 3498);

  await LocalDatabase.insertDatabase(
      img: '''https://images-na.ssl-images-amazon.com/images/I/613kS8sIRcL.__AC_SX300_SY300_QL70_FMwebp_.jpg''',
      title: '''Casio Men's MDV106-1AV 200 M WR Black Dive Watch (MDV106-1A)''',
      amount: 10,
      category: "watches",
      company: "Casio Store",
      detail1: '''Made in the USA or Imported''',
      detail2: '''Inspired by the sea, this watch black resin band and stainless steel case with blue dial and bezel give it a classic look''',
      price: 771);

  await LocalDatabase.insertDatabase(
      img: '''https://m.media-amazon.com/images/I/61T+s2adFvL._AC_UX679_.jpg''',
      title: '''Casio G-Shock GA-2100-1A1 Retro-Style Ana-Digi with Carbon Core Guard''',
      amount: 10,
      category: "watches",
      company: "G-Shock",
      detail1: '''This allows the internal mechanics of the watch to be protected from shock-induced damage and deformation''',
      detail2: '''Made in the USA or Imported''',
      price: 2171);

  await LocalDatabase.insertDatabase(
      img: '''https://images-na.ssl-images-amazon.com/images/I/61lk-YxTUAL.__AC_SX300_SY300_QL70_FMwebp_.jpg''',
      title: '''Fossil Women's Riley Stainless Steel Crystal-Accented Multifunction Quartz Watch''',
      amount: 10,
      category: "watches",
      company: "Smartwatches by Fossil",
      detail1: '''Riley plays with proportion in a sophisticated way. With a classic shape and sporty features, Riley is a style that transcends the season.''',
      detail2: '''ase size: 38mm; Band size: 18mm; quartz movement with multifunction display; hardened mineral crystal lens resists scratches; imported''',
      price: 1341);

  await LocalDatabase.insertDatabase(
      img: '''https://m.media-amazon.com/images/I/71e-7qL7O2L._AC_UX679_.jpg''',
      title: '''Fossil Women's Gen 6 Touchscreen Smartwatch with Speaker, Heart Rate, Blood Oxygen, GPS, Contactless Payments and Smartphone Notifications''',
      amount: 10,
      category: "watches",
      company: "Smartwatches by Fossil",
      detail1: '''Stay connected with notifications for calls, texts, apps and automatic time, time zone and calendar syncing. Never miss a call - answer and make calls directly on your watch when your phone is out of reach.''',
      detail2: '''Use the WearOS by Google app on your phone running the latest version of Android (excluding Go edition) or iOS . Supported features may vary between platforms and countries with compatibility subject to change.''',
      price: 3157);

  await LocalDatabase.insertDatabase(
      img: '''https://m.media-amazon.com/images/I/81vuJLOGuzL._AC_UX679_.jpg''',
      title: '''Michael Kors Women's MKGO Gen 5E 43mm Touchscreen Smartwatch with Fitness Tracker, Heart Rate, Contactless Payments, and Smartphone Notifications''',
      amount: 10,
      category: "watches",
      company: "Smartwatches by Fossil",
      detail1: '''Use the WearOS by Google app on your phone with Android 6.0+ (excluding Go edition) or iOS 12.0+''',
      detail2: '''Use the WearOS by Google app on your phone running the latest version of Android (excluding Go edition) or iOS . Supported features may vary between platforms and countries with compatibility subject to change.''',
      price: 3016);

  await LocalDatabase.insertDatabase(
      img: '''https://m.media-amazon.com/images/I/818MID2aBGL._AC_SL1500_.jpg''',
      title: '''GreenLife Soft Grip Healthy Ceramic Nonstick 16 Piece Cookware Pots and Pans Set, PFAS-Free, Dishwasher Safe, Turquoise''',
      amount: 23,
      category: "Kitchenware",
      company: "GreenLife Store",
      detail1: '''Soft Grip Bakelite handles are designed to stay cool on the stovetop for maximum comfort''',
      detail2: '''Dishwasher safe, but most messes wipe away''',
      price: 1608);

  await LocalDatabase.insertDatabase(
      img: '''https://m.media-amazon.com/images/I/61PTsb+DJEL._AC_SL1500_.jpg''',
      title: '''Calphalon Classic Pots and Pans Set, 10 Piece Cookware Set with No Boil-Over Inserts, Nonstick''',
      amount: 23,
      category: "Kitchenware",
      company: "Calphalon Store",
      detail1: '''The BPA-free silicone insert recirculates boiling water back into the pot, based on testing of rice, beans, pasta, and potatoes''',
      detail2: '''Dishwasher safe, but most messes wipe away''',
      price: 3860);

  await LocalDatabase.insertDatabase(
      img: '''https://m.media-amazon.com/images/I/61SlNuft0oL._AC_SL1200_.jpg''',
      title: '''Gugrida Black Silverware Set, 5-Piece 18/10 Stainless Steel Flatware Cutlery Set for 1,Mirror Finish, Ideal for Wedding Festival Party Home Kitchen, Dishwasher Safe''',
      amount: 23,
      category: "Kitchenware",
      company: "Gugrida",
      detail1: '''HEALTHY MATERIAL - Made of premium stainless steel without toxic substance into your food, Durable and healthy for your everyday use''',
      detail2: '''CLASSIC LOOK - Bright Black mirror finish, Simple but elegant enough to match your high taste tableware, Proper weight to provide good balance grip''',
      price: 305);

  await LocalDatabase.insertDatabase(
      img: '''https://m.media-amazon.com/images/I/81jZNuVLr7L._AC_SL1500_.jpg''',
      title: '''Calphalon Simply Pots and Pans Set, 10 Piece Cookware Set, Nonstick''',
      amount: 23,
      category: "Kitchenware",
      company: "Calphalon Store",
      detail1: '''Soft Grip Bakelite handles are designed to stay cool on the stovetop for maximum comfort''',
      detail2: '''Dishwasher safe, but most messes wipe away''',
      price: 3021);

  await LocalDatabase.insertDatabase(
      img: '''https://m.media-amazon.com/images/I/717iKMCptJL._AC_SL1500_.jpg''',
      title: '''Kitchen Cooking Utensils Set, 27 pcs Non-stick Silicone Cooking Kitchen Utensils Spatula Set with Holder, Wooden Handle Heat Resistant Silicone Kitchen Gadgets Utensil Set''',
      amount: 23,
      category: "Kitchenware",
      company: "BECBOLDF Store",
      detail1: '''100% PREMIUM WOODEN HANDEL - Pushing the boundary of modern culinary gadgets, light and renewable wooden cookware handles provide protection against rust and thawing.''',
      detail2: '''Dishwasher safe, but most messes wipe away''',
      price: 464);

  await LocalDatabase.insertDatabase(
      img: '''https://m.media-amazon.com/images/I/81nsFKQKeDL._AC_SL1500_.jpg''',
      title: '''HexClad 7-Piece Hybrid Stainless Steel Cookware Set with Lids and Wok - Metal Utensil and Dishwasher Safe, Induction Ready, PFOA-Free, Easy to Clean Non Stick Fry Pan with Covers''',
      amount: 23,
      category: "Kitchenware",
      company: "HexClad Store",
      detail1: '''Soft Grip Bakelite handles are designed to stay cool on the stovetop for maximum comfort''',
      detail2: '''Dishwasher safe, but most messes wipe away''',
      price: 6434);

  // LocalDatabase.deleteDatabase(27);
  // LocalDatabase.deleteDatabase(2);
  // LocalDatabase.getDate(LocalDatabase.database,0).then((value){
    // print("length : ${LocalDatabase.data.length}");
  // });

// List<Map<String,dynamic>> list = await LocalDatabase.getDataByCategory('''"Clothing"''');
// print(list.length);
//   LocalDatabase.deleteDatabase(13);
//   LocalDatabase.deleteDatabase(14);
//   LocalDatabase.deleteDatabase(15);
//   LocalDatabase.deleteDatabase(16);
//   LocalDatabase.deleteDatabase(17);
//   LocalDatabase.deleteDatabase(18);
  // DbProvider d = new DbProvider();
  // await d.getdata();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List<Map<String,dynamic>> l = (Provider.of<DbProvider>(context,listen: false).list2);
    // print(l);
    // Provider.of<DbProvider>(context).getdata();
    // ProductsList(s: '''"Technology"''',s2: "Technology")
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.black12,));

    return ChangeNotifierProvider(
      create: (context) => DbProvider(),
      child: MaterialApp(
        home: LoginScreen(),
      debugShowCheckedModeBanner: false,),
    );
  }
}
