part of use_widgets;

class NotificationV4 extends HookWidget {
  final bool ringing;
  final Color? color;
  final Duration duration;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Alignment? alignment;

  const NotificationV4({
    required this.ringing,
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
      if (ringing) {
        controller.repeat();
      } else {
        controller.reset();
      }

      return null;
    }, [ringing]);

    final lottie = Lottie.asset(
      'assets/notification-V4.json',
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
