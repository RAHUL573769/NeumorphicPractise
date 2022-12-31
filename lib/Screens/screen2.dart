


import 'package:flutter_neumorphic/flutter_neumorphic.dart';


class SecondCard extends StatelessWidget {
  const SecondCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F6FC),
    
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Neumorphic(
                  style: const NeumorphicStyle(
                    shape: NeumorphicShape.convex,
                  ),
                  child: NeumorphicIcon(
                    Icons.menu,
                    size: 25,
                    style: const NeumorphicStyle(
                      color: Color.fromARGB(255, 124, 110, 110),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ProfileWidget(),
                const SizedBox(
                  height: 40,
                ),
                Wrap(
                  spacing: 40,
                  runSpacing: 40,
                  children: const [
                    CardWidgetTwo(
                      icon: Icons.alarm,
                      topText: "Daily",
                      bottomText: "Homework",
                    ),
                    CardWidgetTwo(
                      icon: Icons.menu_book,
                      topText: "Digital",
                      bottomText: "Dairy",
                    ),
                    CardWidgetTwo(
                      icon: Icons.edit_note,
                      topText: "Weekly",
                      bottomText: "Update",
                    ),
                    CardWidgetTwo(
                      icon: Icons.calendar_month,
                      topText: "School",
                      bottomText: "Calendar",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const CardWidget(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Neumorphic(
                      style: const NeumorphicStyle(
                          shape: NeumorphicShape.convex, depth: -2),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: NeumorphicIcon(
                          Icons.home_outlined,
                          size: 22,
                          style: const NeumorphicStyle(color: Colors.blueAccent),
                        ),
                      ),
                    ),
                    const IconWidget(
                      inactiveIcon: Icons.card_giftcard,
                    ),
                    const IconWidget(
                      inactiveIcon: Icons.credit_card,
                    ),
                    const IconWidget(
                      inactiveIcon: Icons.account_balance_wallet_outlined,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IconWidget extends StatelessWidget {
  final IconData inactiveIcon;

  const IconWidget({super.key, required this.inactiveIcon});

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
        child: Container(
      color: const Color.fromARGB(255, 238, 238, 237),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: NeumorphicIcon(
        inactiveIcon,
        size: 25,
        style: const NeumorphicStyle(color: Color.fromARGB(255, 177, 206, 252)),
      ),
    ));
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20))),
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
        child: Column(
          children: [
            const NeumorphicProgress(
              style: ProgressStyle(
                lightSource: LightSource.right,
                depth: -20,
              ),
              height: 7,
              percent: 0.8,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Profile Status",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                ),
                Text("80%",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CardWidgetTwo extends StatelessWidget {
  final IconData icon;
  final String topText;
  final String bottomText;

  const CardWidgetTwo(
      {super.key,
      required this.icon,
      required this.topText,
      required this.bottomText});

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: SizedBox(
          width: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NeumorphicIcon(
                icon,
                size: 30,
                style: const NeumorphicStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 7,
              ),
              NeumorphicText(
                topText,
                style: const NeumorphicStyle(color: Colors.grey, depth: 10),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                bottomText,
                style: const TextStyle(
                    color: Colors.grey, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20))),
      child: Container(
        color: const Color(0xFFEBF2FA),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: const Image(
                  height: 70,
                  image: NetworkImage(
                      "https://i.pinimg.com/originals/ae/ec/c2/aeecc22a67dac7987a80ac0724658493.jpg")),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Priya Darshini"),
                    SizedBox(
                      height: 5,
                    ),
                    Text("7 new messages")
                  ]),
            ),
            Neumorphic(
              child: Container(
                color: const Color(0xFF4CFF4C),
                height: 10,
                width: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
