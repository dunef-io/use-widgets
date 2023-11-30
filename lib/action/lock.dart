part of use_widgets;

class Lock extends HookWidget {
  final bool locked;
  final Color? color;
  final Duration duration;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Alignment? alignment;

  const Lock({
    this.locked = true,
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
        duration: duration, initialValue: locked ? 0 : 1);

    useEffect(() {
      if (!locked) {
        controller.forward();
      } else {
        controller.reverse();
      }

      return null;
    }, [locked]);

    final lottie = Lottie.asset(
      'assets/lock.json',
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
