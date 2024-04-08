import 'dart:async';

import 'package:flame/components.dart';

class Player extends SpriteAnimationGroupComponent {
  late final SpriteAnimation idleAnimation;

  @override
  FutureOr<void> onLoad() {
    _loadAllAnimation();
    // TODO: implement onLoad
    return super.onLoad();
  }

  void _loadAllAnimation() {
    idleAnimation = SpriteAnimation.fromFrameData(image, data);
  }
}
