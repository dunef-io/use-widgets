part of '/use_widgets.dart';

class ThumbUp extends HookWidget {
  final bool liked;
  final Color? color;
  final Duration duration;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Alignment? alignment;

  const ThumbUp({
    required this.liked,
    this.color,
    this.duration = const Duration(milliseconds: 1000),
    this.width,
    this.height,
    this.fit,
    this.alignment,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller =
        useAnimationController(duration: duration, initialValue: liked ? 1 : 0);

    useEffect(() {
      if (liked) {
        controller.forward();
      } else {
        controller.reverse();
      }

      return null;
    }, [liked]);

    final lottie = Lottie.asset(
      'assets/thumbUp.json',
      controller: controller,
      width: width,
      height: height,
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
