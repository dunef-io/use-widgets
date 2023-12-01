Make your app more alive with beautiful animated icons.

## Features

### Action Icons

![action_icons](https://github.com/dunef-io/use-widgets/assets/109608078/787db31a-4fa5-47f6-9763-4b77a7e2d850)


### Alert Icons

![alert_icons](https://github.com/dunef-io/use-widgets/assets/109608078/c6a7bd30-82e6-439e-a299-867b4d578ec1)


### Content Icons

![content_icons](https://github.com/dunef-io/use-widgets/assets/109608078/d59f6b54-0368-45de-8334-8272d417599c)


### Loading Icons

![loading_icons](https://github.com/dunef-io/use-widgets/assets/109608078/90d95751-2344-4c6c-8a7f-d596fafc7bb5)


### Media Icons

![media_icons](https://github.com/dunef-io/use-widgets/assets/109608078/ffeb5328-9732-4237-95f5-c52b513940d6)


### Navigation Icons

![navigation_icons](https://github.com/dunef-io/use-widgets/assets/109608078/ad6a4c6c-1a92-4628-8fd0-b7e68d287dd8)


### Notification Icons

![notification_icons](https://github.com/dunef-io/use-widgets/assets/109608078/36cba6dc-d4ec-4913-aa2e-1c68ac53a764)


## Getting started

Add the dependency to pubspec.yaml or enter the following command into your terminal:

```bash
flutter pub add use_widgets
```

Next I will provide a super simple example of how to use one of the animated icons:
```dart
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:use_widgets/use_widgets/use_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return HookBuilder(builder: (context) {
      final menuIsOpen = useState(false);

      return Scaffold(
        backgroundColor: const Color(0xff202020),
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: InkWell(
            onTap: () {
              menuIsOpen.value = !menuIsOpen.value;
            },
            child: MenuV2( // Here we use one of the animated icons
              isOpen: menuIsOpen.value,
              color: Colors.white,
            ),
          ),
        ),
        body: Center(),
     ),
    }),
  }
}

```

## Additional information

The underlying lottie icons are from https://useanimations.com/.

All the free files available in useAnimations are distributed under Creative Commons (CC) Attribution (BY) unless stated otherwise.

The resources (animations) can be used for personal and commercial usage within Web and Mobile Applications.

You may modify the resources according to your requirements and use them in any or all of your personal or commercial projects. For example, you may include this resource on a website or mobile application you will be designing for a client.

You are required to attribute or link to useanimations.com in any of projects.

useAnimations (useanimations.com) will not be responsible for any outcome that may occur during the use of their resources.

Files from useAnimations can be shared as long as the useAnimations are credited appropriately.
