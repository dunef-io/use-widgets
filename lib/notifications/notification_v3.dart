part of '/use_widgets.dart';

class NotificationV3 extends HookWidget {
  final bool showBadge;
  final Color? color;
  final Duration duration;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Alignment? alignment;

  const NotificationV3({
    required this.showBadge,
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
    final controller = useAnimationController(
        duration: duration, initialValue: showBadge ? 1 : 0);

    useEffect(() {
      if (showBadge) {
        controller.forward();
      } else {
        controller.reset();
      }

      return null;
    }, [showBadge]);

    final lottie = Lottie.asset(
      'assets/notification-V3.json',
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
