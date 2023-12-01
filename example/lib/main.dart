import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:use_widgets/use_widgets.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Use Widgets Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    ),
  );
}

const w = 50.0;
const h = 50.0;

// Flutter Hooks can be replaced with StatefulWidget if one prefers.
class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final val = useState(false);

    return Scaffold(
      backgroundColor: const Color(0xff202020),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Use Widgets',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Title(title: 'Action'),
                const SizedBox(height: 20),
                Wrap(runSpacing: 30, children: [
                  Column(
                    children: [
                      const WidgetName(name: 'Bookmark'),
                      Bookmark(
                        marked: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      const WidgetName(name: 'Heart'),
                      Heart(
                        hearted: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      const WidgetName(name: 'Lock'),
                      Lock(
                        locked: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      const WidgetName(name: 'MaximizeMinimizeV1'),
                      MaximizeMinimizeV1(
                        maximized: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      const WidgetName(name: 'MaximizeMinimizeV2'),
                      MaximizeMinimizeV2(
                        maximized: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      const WidgetName(name: 'PlusToX'),
                      PlusToX(
                        toX: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      const WidgetName(name: 'SearchToX'),
                      SearchToX(
                        toX: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      const WidgetName(name: 'Star'),
                      Star(
                        starred: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      const WidgetName(name: 'ThumbUp'),
                      ThumbUp(
                        liked: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      const WidgetName(name: 'VisibilityV1'),
                      VisibilityV1(
                        visible: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      const WidgetName(name: 'VisibilityV2'),
                      VisibilityV2(
                        visible: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      const WidgetName(name: 'VisibilityV3'),
                      VisibilityV3(
                        visible: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                ]),

                //

                const SizedBox(height: 50),
                const Title(title: 'Alerts'),
                const SizedBox(height: 20),
                const Wrap(
                  runSpacing: 30,
                  children: [
                    Column(
                      children: [
                        WidgetName(name: 'AlertCircle'),
                        AlertCircle(
                          color: Colors.white,
                          width: w,
                          height: h,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    SizedBox(width: 50),
                    Column(
                      children: [
                        WidgetName(name: 'AlertOctagon'),
                        AlertOctagon(
                          color: Colors.white,
                          width: w,
                          height: h,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    SizedBox(width: 50),
                    Column(
                      children: [
                        WidgetName(name: 'AlertTriangle'),
                        AlertTriangle(
                          color: Colors.white,
                          width: w,
                          height: h,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ],
                ),

                //

                const SizedBox(height: 50),
                const Title(title: 'Content'),
                const SizedBox(height: 20),
                Wrap(
                  runSpacing: 30,
                  children: [
                    Column(
                      children: [
                        const WidgetName(name: 'Archive'),
                        Archive(
                          open: val.value,
                          color: Colors.white,
                          width: w,
                          height: h,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    const SizedBox(width: 50),
                    Column(
                      children: [
                        const WidgetName(name: 'Copy'),
                        Copy(
                          focused: val.value,
                          color: Colors.white,
                          width: w,
                          height: h,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    const SizedBox(width: 50),
                    Column(
                      children: [
                        const WidgetName(name: 'Mail'),
                        Mail(
                          open: val.value,
                          color: Colors.white,
                          width: w,
                          height: h,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    const SizedBox(width: 50),
                    Column(
                      children: [
                        const WidgetName(name: 'UserMinus'),
                        UserMinus(
                          focused: val.value,
                          color: Colors.white,
                          width: w,
                          height: h,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    const SizedBox(width: 50),
                    Column(
                      children: [
                        const WidgetName(name: 'UserPlus'),
                        UserPlus(
                          focused: val.value,
                          color: Colors.white,
                          width: w,
                          height: h,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    const SizedBox(width: 50),
                    Column(
                      children: [
                        const WidgetName(name: 'UserX'),
                        UserX(
                          focused: val.value,
                          color: Colors.white,
                          width: w,
                          height: h,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    const SizedBox(width: 50),
                  ],
                ),

                //

                const SizedBox(height: 50),
                const Title(title: 'Loading'),
                const SizedBox(height: 20),
                const Wrap(runSpacing: 30, children: [
                  Column(
                    children: [
                      WidgetName(name: 'Infinity'),
                      Infinity(
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  SizedBox(width: 50),
                  Column(
                    children: [
                      WidgetName(name: 'LoadingV2'),
                      LoadingV2(
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  SizedBox(width: 50),
                  Column(
                    children: [
                      WidgetName(name: 'LoadingV3'),
                      LoadingV3(
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  SizedBox(width: 50),
                  Column(
                    children: [
                      WidgetName(name: 'LoadingV4'),
                      LoadingV4(
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ]),

                //

                const SizedBox(height: 50),
                const Title(title: 'Media'),
                const SizedBox(height: 20),
                Wrap(
                  runSpacing: 30,
                  children: [
                    Column(
                      children: [
                        const WidgetName(name: 'MicrophoneV1'),
                        MicrophoneV1(
                          on: val.value,
                          color: Colors.white,
                          width: w,
                          height: h,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    const SizedBox(width: 50),
                    Column(
                      children: [
                        const WidgetName(name: 'MicrophoneV2'),
                        MicrophoneV2(
                          on: val.value,
                          color: Colors.white,
                          width: w,
                          height: h,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    const SizedBox(width: 50),
                    Column(
                      children: [
                        const WidgetName(name: 'VideoV1'),
                        VideoV1(
                          on: val.value,
                          color: Colors.white,
                          width: w,
                          height: h,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    const SizedBox(width: 50),
                    Column(
                      children: [
                        const WidgetName(name: 'VideoV2'),
                        VideoV2(
                          on: val.value,
                          color: Colors.white,
                          width: w,
                          height: h,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    const SizedBox(width: 50),
                    Column(
                      children: [
                        const WidgetName(name: 'Volume'),
                        Volume(
                          on: val.value,
                          color: Colors.white,
                          width: w,
                          height: h,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ],
                ),

                //

                const SizedBox(height: 50),
                const Title(title: 'Notifications'),
                const SizedBox(height: 20),
                Wrap(runSpacing: 30, children: [
                  Column(
                    children: [
                      const WidgetName(name: 'NotificationV1'),
                      NotificationV1(
                        on: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      const WidgetName(name: 'NotificationV2'),
                      NotificationV2(
                        on: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      const WidgetName(name: 'NotificationV3'),
                      NotificationV3(
                        showBadge: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      const WidgetName(name: 'NotificationV4'),
                      NotificationV4(
                        ringing: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                ]),

                //

                const SizedBox(height: 50),
                const Title(title: 'Navigation'),
                const SizedBox(height: 20),
                Wrap(runSpacing: 30, children: [
                  Column(
                    children: [
                      const WidgetName(name: 'BurgerMenu'),
                      BurgerMenu(
                        isOpen: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      const WidgetName(name: 'MenuV2'),
                      MenuV2(
                        isOpen: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      const WidgetName(name: 'MenuV3'),
                      MenuV3(
                        isOpen: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      const WidgetName(name: 'MenuV4'),
                      MenuV4(
                        isOpen: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ]),

                //

                const SizedBox(height: 50),
                const Title(title: 'Social Media'),
                const SizedBox(height: 20),
                Wrap(runSpacing: 30, children: [
                  Column(
                    children: [
                      const WidgetName(name: 'Behance'),
                      Behance(
                        focused: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      const WidgetName(name: 'Codepen'),
                      Codepen(
                        focused: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      const WidgetName(name: 'Dribbble'),
                      Dribbble(
                        focused: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      const WidgetName(name: 'Facebook'),
                      Facebook(
                        focused: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      const WidgetName(name: 'Github'),
                      Github(
                        focused: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      const WidgetName(name: 'Instagram'),
                      Instagram(
                        focused: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      const WidgetName(name: 'Linkedin'),
                      Linkedin(
                        focused: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      const WidgetName(name: 'Pocket'),
                      Pocket(
                        focused: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      const WidgetName(name: 'Twitter'),
                      Behance(
                        focused: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      const WidgetName(name: 'YoutubeV1'),
                      YoutubeV1(
                        focused: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  const SizedBox(width: 50),
                  Column(
                    children: [
                      const WidgetName(name: 'YoutubeV2'),
                      YoutubeV2(
                        focused: val.value,
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ]),

                //

                const SizedBox(height: 50),
                const Title(title: 'Other'),
                const SizedBox(height: 20),
                const Wrap(runSpacing: 30, children: [
                  Column(
                    children: [
                      WidgetName(name: 'Activity'),
                      Activity(
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  SizedBox(width: 50),
                  Column(
                    children: [
                      WidgetName(name: 'ArrowDown'),
                      ArrowDown(
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  SizedBox(width: 50),
                  Column(
                    children: [
                      WidgetName(name: 'ArrowUp'),
                      ArrowUp(
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  SizedBox(width: 50),
                  Column(
                    children: [
                      WidgetName(name: 'ScrollDown'),
                      ScrollDown(
                        color: Colors.white,
                        width: w,
                        height: h,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ]),

                const SizedBox(height: 240),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          val.value = !val.value;
        },
        tooltip: 'Toggle Value',
        child: Icon(val.value ? Icons.toggle_on : Icons.toggle_off),
      ),
    );
  }
}

class Title extends StatelessWidget {
  final String title;
  const Title({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 36,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}

class WidgetName extends StatelessWidget {
  final String name;

  const WidgetName({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
