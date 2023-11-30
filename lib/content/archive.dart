part of '/use_widgets.dart';

class Archive extends HookWidget {
  final bool open;
  final Color? color;
  final Duration duration;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Alignment? alignment;

  const Archive({
    required this.open,
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
        useAnimationController(duration: duration, initialValue: open ? 1 : 0);

    useEffect(() {
      if (open) {
        controller.forward();
      } else {
        controller.reverse();
      }

      return null;
    }, [open]);

    final lottie = Lottie.asset(
      'assets/content/archive.json',
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
