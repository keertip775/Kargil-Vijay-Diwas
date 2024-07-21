import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vijay_diwas/data.dart';
import 'package:vijay_diwas/views/components/custom_card.dart';
import 'package:vijay_diwas/views/pages/details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static String routeName = '';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        foregroundColor: Colors.white,
        backgroundColor: Color(0xff0ea4c9),
        centerTitle: true,
        title: Text(
          "Kargil Vijay Diwas",
        ),
      ),
      body: LayoutBuilder(builder: (context, cons) {
        return GridView(
          padding: EdgeInsets.all(16),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: cons.maxWidth > 600 ? 3 : 1,
              childAspectRatio: 16 / 9,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15),
          children: [
            CustomCard(
              name: "ಕಾರ್ಗಿಲ್",
              image: "assets/1.png",
              onTap: () {
                Get.to(
                  DetailsPage(
                    title: "ಕಾರ್ಗಿಲ್",
                    details: details[0],
                    image: "assets/1.png",
                  ),
                );
                print("Go to Kargil");
              },
            ),
            CustomCard(
              name: "ಕಾರ್ಗಿಲ್ ನ ವೀರಯೋಧರು",
              image: "assets/2.png",
              onTap: () {
                Get.to(
                  DetailsPage(
                    title: "ಕಾರ್ಗಿಲ್ ನ ವೀರಯೋಧರು",
                    details: details[1],
                    image: "assets/2.png",
                  ),
                );

                print("Go to Kargil");
              },
            ),
            CustomCard(
              name: "ಯುದ್ದದ ಪ್ರಗತಿ",
              image: "assets/3.png",
              onTap: () {
                Get.to(
                  DetailsPage(
                    title: "ಯುದ್ದದ ಪ್ರಗತಿ",
                    image: "assets/3.png",
                    details: details[2],
                  ),
                );

                print("Go to places");
              },
            ),
            CustomCard(
              name: "ವಿಜಯದ ಹೆಜ್ಜೆ",
              image: "assets/4.png",
              onTap: () {
                Get.to(
                  DetailsPage(
                    title: "ವಿಜಯದ ಹೆಜ್ಜೆ",
                    image: "assets/4.png",
                    details: details[3],
                  ),
                );

                print("Go to Awards");
              },
            ),
            CustomCard(
              name: "ಹುತಾತ್ಮರಾದ ಕನ್ನಡದ ಹೆಮ್ಮೆಯ ಯೋಧರು",
              image: "assets/5.png",
              onTap: () {
                Get.to(
                  DetailsPage(
                    title: "ಹುತಾತ್ಮರಾದ ಕನ್ನಡದ ಹೆಮ್ಮೆಯ ಯೋಧರು",
                    image: "assets/5.png",
                    details: details[4],
                  ),
                );

                print("Go to Awards");
              },
            ),
            CustomCard(
              name: "ವೀರಯೋಧರಿಗೆ ದೊರೆತ ಪ್ರಶಸ್ತಿ ಪುರಸ್ಕಾರ",
              image: "assets/6.png",
              onTap: () {
                Get.to(
                  DetailsPage(
                    title: "ವೀರಯೋಧರಿಗೆ ದೊರೆತ ಪ್ರಶಸ್ತಿ ಪುರಸ್ಕಾರ",
                    image: "assets/6.png",
                    details: details[5],
                  ),
                );

                print("Go to Awards");
              },
            ),
          ],
        );
      }),
    );
  }
}
