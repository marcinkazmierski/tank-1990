import 'package:flame/input.dart';
import 'package:flame/game.dart';
import 'package:flame_bloc/flame_bloc.dart';

class TankGame extends FlameGame with TapDetector, HasCollisionDetection {
  // https://pub.dev/packages/flame_bloc
  @override
  Future<void> onLoad() async {
    // await add(
    //   FlameMultiBlocProvider(
    //     providers: [
    //       FlameBlocProvider<PlayerInventoryBloc, PlayerInventoryState>(
    //         create: () => PlayerInventoryBloc(),
    //       ),
    //       FlameBlocProvider<PlayerStatsBloc, PlayerStatsState>(
    //         create: () => PlayerStatsBloc(),
    //       ),
    //     ],
    //     children: [
    //       Player(),
    //       // ...
    //     ],
    //   ),
    // );

    return super.onLoad();
  }

  @override
  void onTapDown(TapDownInfo info) {
    super.onTapDown(info);
  }

  @override
  void update(double dt) {
    super.update(dt);
  }
}
