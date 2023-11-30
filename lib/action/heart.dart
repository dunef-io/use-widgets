part of '/use_widgets.dart';

class Heart extends HookWidget {
  final bool hearted;
  final Color? color;
  final Duration duration;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Alignment? alignment;

  const Heart({
    required this.hearted,
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
    final controller = useAnimationController(
        duration: duration, initialValue: hearted ? 1 : 0);

    useEffect(() {
      if (hearted) {
        controller.forward();
      } else {
        controller.reverse();
      }

      return null;
    }, [hearted]);

    final lottie = Lottie.asset(
      'assets/action/heart.json',
      package: 'use_widgets',
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
