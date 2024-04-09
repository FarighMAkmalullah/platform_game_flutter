import 'dart:async';

import 'package:flame/components.dart';
import 'package:pixel_platform/platform_game.dart';

enum PlayerState { idle, running }

class Player extends SpriteAnimationGroupComponent
    with HasGameRef<PlatformGame> {
  String character;
  Player({required this.character});

  late final SpriteAnimation idleAnimation;
  late final SpriteAnimation runningAnimation;

  final double stepTime = 0.05;

  @override
  FutureOr<void> onLoad() {
    _loadAllAnimation();
    // TODO: implement onLoad
    return super.onLoad();
  }

  void _loadAllAnimation() {
    //Animasi saat diam atau idle
    idleAnimation = _spriteAnimation('Idle', 11);

    //Animasi saat lari
    runningAnimation = _spriteAnimation('Run', 12);

    //List of all animation
    animations = {
      PlayerState.idle: idleAnimation,
      PlayerState.running: runningAnimation,
    };

    //set current animation
    current = PlayerState.running;
  }

  SpriteAnimation _spriteAnimation(String state, int amount) {
    return SpriteAnimation.fromFrameData(
      game.images.fromCache('Main Characters/$character/$state (32x32).png'),
      SpriteAnimationData.sequenced(
        amount: amount,
        stepTime: stepTime,
        textureSize: Vector2.all(32),
      ),
    );
  }
}
