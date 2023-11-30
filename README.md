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

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
