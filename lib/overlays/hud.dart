import 'package:flutter/material.dart';
import 'package:tank_1990/game/tank_game.dart';

class Hud extends StatelessWidget {
  const Hud({Key? key, required this.gameRef}) : super(key: key);
  static const id = 'Hud';

  final TankGame gameRef;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: List.generate(
              5,
              (index) {
                return const Icon(
                  Icons.favorite,
                  color: Colors.red,
                );
              },
            ),
          ),
          const Text(
            "Your score: xxxx",
            style: TextStyle(fontSize: 28, color: Colors.white),
          ),
          TextButton(
            onPressed: () {},
            child: const Icon(Icons.exit_to_app, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
