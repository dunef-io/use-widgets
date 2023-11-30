part of '/use_widgets.dart';

class MaximizeMinimizeV2 extends HookWidget {
  final bool maximized;
  final Color? color;
  final Duration duration;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Alignment? alignment;

  const MaximizeMinimizeV2({
    required this.maximized,
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
        duration: duration, initialValue: maximized ? 1 : 0);

    useEffect(() {
      if (maximized) {
        controller.forward();
      } else {
        controller.reverse();
      }

      return null;
    }, [maximized]);

    final lottie = Lottie.asset(
      'assets/action/maximizeMinimizeV2.json',
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
