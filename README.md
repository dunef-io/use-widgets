Make your app more alive with beautiful animated icons.

## Features

### Action Icons

https://github.com/nick-westendorf/use-widgets/assets/48767880/7750b096-ece3-4523-a181-194664923017


### Alert Icons

https://github.com/nick-westendorf/use-widgets/assets/48767880/ae29cfb4-2c84-4b6d-a82a-9a1c932e84a1


### Loading Icons

https://github.com/nick-westendorf/use-widgets/assets/48767880/9548bb5e-ef4d-4e99-b7ef-00a158080bad


### Navigation Icons

https://github.com/nick-westendorf/use-widgets/assets/48767880/e0d6b920-2a70-4ff8-a631-8ec77a0a1b0c


### Notification Icons

https://github.com/nick-westendorf/use-widgets/assets/48767880/7019761c-3ffb-4c8e-93ad-405258ecb2bf


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
              val.value = !val.value;
            },
            child: MenuV2( // Here we use on of the animated icons
              isOpen: val.value,
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

The underlying lottie icons are from (https://useanimations.com/)https://useanimations.com/.

All the free files available in useAnimations are distributed under Creative Commons (CC) Attribution (BY) unless stated otherwise.

The resources (animations) can be used for personal and commercial usage within Web and Mobile Applications.

You may modify the resources according to your requirements and use them in any or all of your personal or commercial projects. For example, you may include this resource on a website or mobile application you will be designing for a client.

You are required to attribute or link to useanimations.com in any of projects.

useAnimations (useanimations.com) will not be responsible for any outcome that may occur during the use of their resources.

Files from useAnimations can be shared as long as the useAnimations are credited appropriately.
