part of '/use_widgets.dart';

class MicrophoneV2 extends HookWidget {
  final bool on;
  final Color? color;
  final Duration duration;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Alignment? alignment;

  const MicrophoneV2({
    required this.on,
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
        useAnimationController(duration: duration, initialValue: on ? 0 : 1);

    useEffect(() {
      if (!on) {
        controller.forward();
      } else {
        controller.reverse();
      }

      return null;
    }, [on]);

    final lottie = Lottie.asset(
      'assets/media/microphoneV2.json',
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
