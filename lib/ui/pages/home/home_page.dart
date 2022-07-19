import 'package:assistant_app/ui/shared/widgets/Cards/bottom_card.dart';
import 'package:assistant_app/ui/shared/widgets/Cards/date_card.dart';
import 'package:assistant_app/ui/shared/widgets/Cards/home_card.dart';
import 'package:assistant_app/ui/shared/widgets/Cards/image_date_card.dart';
import 'package:assistant_app/ui/shared/widgets/Title/main_title.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final String firstHomeCardText = "Aktif Danışan";
  final String secondHomeCardText = "Randevu";
  final String thirdHomeCardText = "Gelen Tarif";
  final String dateTitle = "Bugünün Randevular";
  final String firstBottomCardText = "Danışanlar";
  final String secondBottomCardText = "Randevularım";
  final String thirdBottomCardText = "Ayarlar";
  final String fourthBottomCardText = "Blog";
  final String fifthBottomCardText = "Tarifler";
  final String sixthBottomCardText = "Yardım";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        centerTitle: false,
        backgroundColor: Colors.white,
        title: const MainTitle(fontSize: 30),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: AppBarIcons(),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: HomeCards(
                firstHomeCardText: firstHomeCardText,
                secondHomeCardText: secondHomeCardText,
                thirdHomeCardText: thirdHomeCardText),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DateTitle(dateTitle: dateTitle),
          ),
          const DateCards(),
          const Spacer(),
          Column(
            children: [
              FirstBottomCardsRow(
                  firstBottomCardText: firstBottomCardText,
                  secondBottomCardText: secondBottomCardText,
                  thirdBottomCardText: thirdBottomCardText),
              SecondBottomCardsRow(
                  fourthBottomCardText: fourthBottomCardText,
                  fifthBottomCardText: fifthBottomCardText,
                  sixthBottomCardText: sixthBottomCardText)
            ],
          )
        ],
      ),
    );
  }
}

class SecondBottomCardsRow extends StatelessWidget {
  const SecondBottomCardsRow({
    Key? key,
    required this.fourthBottomCardText,
    required this.fifthBottomCardText,
    required this.sixthBottomCardText,
  }) : super(key: key);

  final String fourthBottomCardText;
  final String fifthBottomCardText;
  final String sixthBottomCardText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BottomCard(icon: Icons.feed_outlined, title: fourthBottomCardText),
        BottomCard(icon: Icons.food_bank_outlined, title: fifthBottomCardText),
        BottomCard(icon: Icons.help_outline, title: sixthBottomCardText),
      ],
    );
  }
}

class FirstBottomCardsRow extends StatelessWidget {
  const FirstBottomCardsRow({
    Key? key,
    required this.firstBottomCardText,
    required this.secondBottomCardText,
    required this.thirdBottomCardText,
  }) : super(key: key);

  final String firstBottomCardText;
  final String secondBottomCardText;
  final String thirdBottomCardText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BottomCard(icon: Icons.people_alt_outlined, title: firstBottomCardText),
        BottomCard(
            icon: Icons.date_range_outlined, title: secondBottomCardText),
        BottomCard(icon: Icons.settings, title: thirdBottomCardText),
      ],
    );
  }
}

class DateCards extends StatelessWidget {
  const DateCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        DateCard(title: "Aş", hour: "11.00"),
        DateCard(title: "Ze", hour: "12.00"),
        DateCard(title: "Nk", hour: "14.00"),
        DateCard(title: "Tu", hour: "16.00"),
        ImageDateCard(hour: "18.00", photo: "assets/photo_man.jpg"),
        ImageDateCard(hour: "19.00", photo: "assets/photo_man2.jpg"),
      ],
    );
  }
}

class DateTitle extends StatelessWidget {
  const DateTitle({
    Key? key,
    required this.dateTitle,
  }) : super(key: key);

  final String dateTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          dateTitle,
          style: const TextStyle(fontSize: 20),
        ),
        const Spacer(),
        const Icon(
          Icons.arrow_forward_outlined,
          size: 35,
        )
      ],
    );
  }
}

class HomeCards extends StatelessWidget {
  const HomeCards({
    Key? key,
    required this.firstHomeCardText,
    required this.secondHomeCardText,
    required this.thirdHomeCardText,
  }) : super(key: key);

  final String firstHomeCardText;
  final String secondHomeCardText;
  final String thirdHomeCardText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        HomeCard(
            icon: Icons.people_alt_outlined,
            title: firstHomeCardText,
            number: "36"),
        HomeCard(
            icon: Icons.date_range_outlined,
            title: secondHomeCardText,
            number: "6"),
        HomeCard(
            icon: Icons.food_bank_outlined,
            title: thirdHomeCardText,
            number: "4")
      ],
    );
  }
}

class AppBarIcons extends StatelessWidget {
  const AppBarIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(
            Icons.notifications_outlined,
            color: Colors.grey,
            size: 35,
          ),
          onPressed: () {
            //
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.person_pin,
            color: Colors.grey,
            size: 40,
          ),
          onPressed: () {
            //
          },
        ),
      ],
    );
  }
}
