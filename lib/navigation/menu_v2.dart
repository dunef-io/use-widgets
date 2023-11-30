part of use_widgets;

class MenuV2 extends HookWidget {
  final bool isOpen;
  final Color? color;
  final Duration duration;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Alignment? alignment;

  const MenuV2({
    required this.isOpen,
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
        duration: duration, initialValue: isOpen ? 1 : 0);

    useEffect(() {
      if (isOpen) {
        controller.forward();
      } else {
        controller.reverse();
      }

      return null;
    }, [isOpen]);

    final lottie = Lottie.asset(
      'assets/menuV2.json',
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
