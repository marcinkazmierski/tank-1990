import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flame/flame.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:tank_1990/game/tank_game.dart';
import 'package:tank_1990/overlays/hud.dart';
import 'package:tank_1990/overlays/main_menu.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Flame.device.fullScreen();
  await Flame.device.setLandscape();
  await dotenv.load(fileName: ".env");
  //todo: sentry configuration
  runApp(const MyGame());
}

class MyGame extends StatelessWidget {
  const MyGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final game = TankGame();
    return MaterialApp(
      title: 'Tank 1990 <Battle City>',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: GameWidget(
          loadingBuilder: (_) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          },
          overlayBuilderMap: {
            MainMenu.id: (ctx, TankGame g) => MainMenu(gameRef: g),
            Hud.id: (ctx, TankGame g) => Hud(gameRef: g),
          },
          initialActiveOverlays: const [MainMenu.id],
          game: game,
        ),
      ),
    );
  }
}