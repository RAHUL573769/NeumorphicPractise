import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ThirdCard2 extends StatefulWidget {
  const ThirdCard2({super.key});

  @override
  State<ThirdCard2> createState() => _ThirdCard2State();
}

class _ThirdCard2State extends State<ThirdCard2> {
  bool Changed = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F6FC),
      body: Neumorphic(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Neumorphic(
                    style: const NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        intensity: 0.8,
                        surfaceIntensity: 0),
                         child: NeumorphicIcon(
                    Icons.arrow_back_sharp,
                    size: 25,
                    style: const NeumorphicStyle(
                      color: Color.fromARGB(255, 124, 110, 110),
                    ),
                  ),
                 
               
                  ),
                  // ================Comment to  create an imaginary Neumorphic Switch=================//

//                     Neumorphic(
//                       style: NeumorphicStyle(

// shape: NeumorphicShape.flat,
// depth: -2,
// boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10))

//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: NeumorphicSwitch(

//                           value:Changed,

//                           onChanged: (value) => {
//                            Changed = !Changed
//                           },

//                         ),
//                       ),
//                     ),

                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                 
                      InkWell(
                        child: Changed
                            ? const ButtonOnWidget()
                            : const ButtonOffWidget(),
                        onTap: () {
                          setState(() {
                            Changed = !Changed;
                          });
                        },
                      ),
                      
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                           SizedBox(width: 10),
                          Text(
                            "Tracker",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 20),
                          ),
                          SizedBox(height: 3),
                          Text("Enabled",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                  fontSize: 17))
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Neumorphic(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    style: NeumorphicStyle(
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(20))),
                    child: SizedBox(
                      height: 300,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Text(
                              "Weekly Productivity",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Text(
                              "Average : 62%",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
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
                            style:
                                const NeumorphicStyle(color: Colors.blueAccent),
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
      ),
    );
  }
}

class ButtonOffWidget extends StatelessWidget {
  const ButtonOffWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      padding: const EdgeInsets.all(6),
      style: NeumorphicStyle(
          depth: -2,
          shape: NeumorphicShape.convex,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10))),
      child: Neumorphic(
        padding: const EdgeInsets.all(3),
        style: NeumorphicStyle(
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10))),
        child: Row(
          children: [
          
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 142, 154, 163),
                  borderRadius: BorderRadius.circular(8)),
              height: 33,
              width: 33,
            ),
              const SizedBox(
              width: 35,
            ),
          ],
        ),
      ),
    );
  }
}


class ButtonOnWidget extends StatelessWidget {
  const ButtonOnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      padding: const EdgeInsets.all(6),
      style: NeumorphicStyle(
          depth: -2,
          shape: NeumorphicShape.convex,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10))),
      child: Neumorphic(
        padding: const EdgeInsets.all(3),
        style: NeumorphicStyle(
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10))),
        child: Row(
          children: [
            const SizedBox(
              width: 35,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFF1096FD),
                  borderRadius: BorderRadius.circular(8)),
              height: 33,
              width: 33,
            ),
          ],
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
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: NeumorphicIcon(
        inactiveIcon,
        size: 25,
        style: const NeumorphicStyle(color: Color.fromARGB(255, 177, 206, 252)),
      ),
    ));
  }
}
