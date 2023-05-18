import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tank_1990/game/tank_game.dart';

class MainMenu extends StatelessWidget {
  static const id = 'MainMenu';

  final TankGame gameRef;

  const MainMenu({Key? key, required this.gameRef}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(
            child: Image.asset(
          'assets/images/backgrounds/bg1.jpg',
          fit: BoxFit.fill,
          color: Colors.white.withOpacity(0.5),
          colorBlendMode: BlendMode.lighten,
        )),
        Center(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.black.withAlpha(100),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 120, vertical: 40),
                  child: Wrap(
                    direction: Axis.vertical,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 10,
                    children: [
                      const Text(
                        'Tank 1990',
                        style: TextStyle(
                          fontSize: 52,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10.0),
                        child: const Text(
                          'Battle City',
                          style: TextStyle(
                            fontSize: 22,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              '1 Player',
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              '2 Players',
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {
                              SystemNavigator.pop();
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.redAccent),
                            child: const Text(
                              'Exit',
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
