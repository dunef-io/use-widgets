part of '/use_widgets.dart';

class Twitter extends HookWidget {
  final bool focused;
  final Color? color;
  final Duration duration;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Alignment? alignment;

  const Twitter({
    required this.focused,
    this.color,
    this.duration = const Duration(milliseconds: 2000),
    this.width,
    this.height,
    this.fit,
    this.alignment,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller =
        useAnimationController(duration: duration, initialValue: 0);

    useEffect(() {
      if (focused) {
        controller.repeat();
      } else {
        controller.reset();
      }

      return null;
    }, [focused]);

    final lottie = Lottie.asset(
      'assets/social_media/twitter.json',
      package: 'use_widgets',
      width: width,
      height: height,
      controller: controller,
      fit: fit,
      alignment: alignment,
      key: key,
    );

    if (color != null) {
      return ColorFiltered(
        colorFilter: ColorFilter.mode(color!, BlendMode.srcATop),
        child: lottie,
      );
    }

    return lottie;
  }
}
