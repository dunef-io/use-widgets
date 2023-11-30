part of '/use_widgets.dart';

class AlertCircle extends StatelessWidget {
  final Color? color;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Alignment? alignment;

  const AlertCircle({
    this.color,
    this.width,
    this.height,
    this.fit,
    this.alignment,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final lottie = Lottie.asset(
      'assets/alertCircle.json',
      animate: true,
      repeat: true,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      key: key,
    );

    if (color != null) {
      return ColorFiltered(
        colorFilter: ColorFilter.mode(
          color!,
          BlendMode.srcATop,
        ),
        child: lottie,
      );
    }

    return lottie;
  }
}
