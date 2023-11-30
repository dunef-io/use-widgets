part of use_widgets;

class VisibilityV1 extends HookWidget {
  final bool visible;
  final Color? color;
  final Duration duration;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Alignment? alignment;

  const VisibilityV1({
    required this.visible,
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
        duration: duration, initialValue: visible ? 0 : 1);

    useEffect(() {
      if (!visible) {
        controller.forward();
      } else {
        controller.reverse();
      }

      return null;
    }, [visible]);

    final lottie = Lottie.asset(
      'assets/visibility.json',
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
