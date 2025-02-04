import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'homepage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final player = AudioPlayer();
  bool step1Visible = false;
  bool step2Visible = false;
  bool step3Visible = false;
  bool step4Visible = false;
  bool step5Visible = false;

  Future<void> playSound() async {
    await player.setAsset("assets/Audio/49.mp3");
    await player.play();
  }

  Future<void> goHome() async{
  await Future.delayed(const Duration(milliseconds: 9847),(){});
  Navigator.pushReplacement( context , MaterialPageRoute(builder: (context) => const MyHomePage()));
  }
    
void showStep() {
    Timer(const Duration(milliseconds: 250), () {
      setState(() {
        step5Visible = true;
      });
    });
    Timer(const Duration(milliseconds: 500), () {
      setState(() {
      step1Visible = true;
      });
    });
    Timer(const Duration(milliseconds: 3000), () {
      setState(() {
        step2Visible = true;
      });
    });
    Timer(const Duration(milliseconds: 4500), () {
      setState(() {
        step3Visible = true;
      });
    });
    Timer(const Duration(seconds: 8), () {
      setState(() {
        step4Visible = true;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    playSound();
    goHome();
    showStep();
  }

  @override
  Widget build(BuildContext context) { 
    final  responsive = MediaQuery.of(context).orientation;   
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Colors.lime[200],
        width: width,
        height: height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Visibility(
              visible: step5Visible,
              child: responsive== Orientation.portrait? CircleAvatar(
                backgroundColor: Colors.amber[200],
                maxRadius: width,
                minRadius: width,
              ): const SizedBox(height: 0),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Visibility(
                  visible: step1Visible,
                  child: AnimatedTextKit(
                                animatedTexts: [
                                TyperAnimatedText( "مَنْظُومَةُ الْقَواعِدِ الْفِقْهِيَّةِ",
                                speed:const Duration(milliseconds: 115),
                                textAlign: TextAlign.center,
                                textStyle: TextStyle(color: Colors.deepOrange[500], fontSize: width*0.065),)
                                ],
                                isRepeatingAnimation: false,
                              ),
                ),
                SizedBox(
                  height: width*0.1,
                ),
                Visibility(
                  visible: step2Visible,
                  child: AnimatedTextKit(
                    animatedTexts: [
                    TyperAnimatedText( "نَظْمُ عَلَّامَةِ الشَيخ",
                    speed:const Duration(milliseconds: 90),
                    textAlign: TextAlign.center,
                    textStyle: TextStyle(
                      color: Colors.teal[700],
                      fontSize: width*0.047,
                    ),
                    )
                    ],
                    isRepeatingAnimation: false,
                  ),
                ),
                const SizedBox(height: 15),
                
                Visibility(
                  visible: step3Visible,
                  child: AnimatedTextKit(
                    animatedTexts: [
                    TyperAnimatedText( "عَبْدالرَّحْمَنِ بن ناصر السَّعْدِيِّ",
                    speed: const Duration(milliseconds:135),
                    textAlign: TextAlign.center,
                    textStyle: TextStyle(color: Colors.amber[900], fontSize: width*0.060))
                    ],
                    isRepeatingAnimation: false,
                  ),
                ),
                const SizedBox(height: 5),
                Visibility(
                  visible: step4Visible,
                  child: AnimatedTextKit(
                    animatedTexts: [
                    TyperAnimatedText("(رَحِمَهُ اللهُ)",
                    speed: const Duration(milliseconds: 85),
                    textAlign: TextAlign.center,
                    textStyle: TextStyle(color: Colors.grey[600], fontSize: width*0.050),)
                    ],
                    isRepeatingAnimation: false,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
