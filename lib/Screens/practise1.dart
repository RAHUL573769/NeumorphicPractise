import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FormBuilder(
        child: Neumorphic(
          style: NeumorphicStyle(
              shape: NeumorphicShape.concave,
              depth: 20,
              intensity: 0.8,
              surfaceIntensity: 0.1,
              boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(20))),
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Icon(
                        Icons.flash_on,
                        color: Colors.blueAccent,
                        size: 50,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Neumorphic(
                        style: NeumorphicStyle(
                            color: Colors.white,
                            depth: 10,
                            shape: NeumorphicShape.flat,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: FormBuilderTextField(
                            name: "",
                            decoration: const InputDecoration(
                                labelText: "Your Name",
                                border: InputBorder.none,
                                labelStyle:
                                    TextStyle(color: Colors.blueAccent)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomTextField(
                        hintFieldText: "Your Email",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Neumorphic(
                        style: NeumorphicStyle(
                            depth: -3,
                            intensity: 0.7,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(20))),
                        child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: FormBuilderDropdown(
                              items: const [],
                              name: "",
                              decoration: const InputDecoration(
                                  hintText: "School", border: InputBorder.none),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          CustomRadioButton(
                            bgColor: Colors.blueAccent,
                          ),
                          SizedBox(width: 10),
                          Text("Male"),
                          SizedBox(
                            width: 20,
                          ),
                          CustomRadioButton(bgColor: Colors.transparent),
                          SizedBox(
                            width: 15,
                          ),
                          Text("Female")
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomTextField(hintFieldText: "Password"),
                      const SizedBox(
                        height: 50,
                      ),
                      NeumorphicButton(
                        onPressed: () {},
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.flat,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(10))),
                        child: const Center(child: Text("Signup")),
                      )
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomRadioButton extends StatelessWidget {
  final Color? bgColor;

  const CustomRadioButton({super.key, required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
          depth: -2,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          height: 13,
          width: 13,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: bgColor),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintFieldText});
  final String hintFieldText;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
          depth: -3,
          intensity: 0.7,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: FormBuilderTextField(
          name: "",
          decoration: InputDecoration(
            hintText: hintFieldText,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}