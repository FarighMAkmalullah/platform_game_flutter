import 'dart:async';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:pixel_platform/levels/level.dart';

class PlatformGame extends FlameGame {
  @override
  Color backgroundColor() => const Color(0xFF211F30);

  late CameraComponent cam;

  final world = Level();

  @override
  FutureOr<void> onLoad() {
    cam = CameraComponent.withFixedResolution(
        world: world, width: 640, height: 360);
    cam.viewfinder.anchor = Anchor.topLeft;
    addAll([cam, world]);
    // TODO: implement onLoad
    return super.onLoad();
  }
}
