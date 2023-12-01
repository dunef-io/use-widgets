part of '/use_widgets.dart';

class PlayPauseCircle extends HookWidget {
  final bool playing;
  final Color? color;
  final Duration duration;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Alignment? alignment;

  const PlayPauseCircle({
    required this.playing,
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
        duration: duration, initialValue: playing ? 0 : 1);

    useEffect(() {
      if (!playing) {
        controller.forward();
      } else {
        controller.reverse();
      }

      return null;
    }, [playing]);

    final lottie = Lottie.asset(
      'assets/media/playPauseCircle.json',
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
