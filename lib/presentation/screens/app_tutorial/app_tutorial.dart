import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlidesInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlidesInfo(
      {required this.title, required this.caption, required this.imageUrl});
}

final slides = <SlidesInfo>[
  SlidesInfo(
      title: 'Take Away',
      caption: 'Qui eiusmod pariatur commodo enim.',
      imageUrl: 'assets/images/1.png'),
  SlidesInfo(
      title: 'Fast Delivery',
      caption:
          'Tempor cupidatat nisi minim culpa veniam aliquip commodo qui mollit ad commodo ea.',
      imageUrl: 'assets/images/2.png'),
  SlidesInfo(
      title: 'Enjoy your Food!',
      caption:
          'Consequat amet pariatur amet pariatur adipisicing dolore consequat laboris velit est adipisicing.',
      imageUrl: 'assets/images/3.png'),
];

class AppTutorialScreen extends StatefulWidget {
  static const name = 'app_tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  late final PageController pageController;
  bool endReached = false;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      final page = pageController.page ?? 0;
      if (!endReached && page >= slides.length - 1.5) {
        setState(() {
          endReached = true;
        });
      }
    });
  }
//____________________
// NOTA: Cada vez que utilicemos un listener o un controlador debemos usar el dispose() que es una buena practica, que es otra parte del ciclo de vida de un StateFullWidget
@override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
//___________________
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          children: [
            PageView(
                controller: pageController,
                physics: const BouncingScrollPhysics(),
                children: slides
                    .map((e) => _Slide(
                        title: e.title,
                        caption: e.caption,
                        imageUrl: e.imageUrl))
                    .toList()),
            Positioned(
                top: 25,
                right: 10,
                child: TextButton(
                  child: const Text('Skip'),
                  onPressed: () => context.pop(),
                )),
            endReached
                ? Positioned(
                    bottom: 25,
                    right: 10,
                    child: FadeInRight(
                      delay: const Duration(milliseconds: 500),
                      from: 15,
                      child: FilledButton(
                        child: const Text('Get Started'),
                        onPressed: () => context.pop(),
                      ),
                    ))
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;
  const _Slide(
      {required this.title, required this.caption, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodyMedium;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(imageUrl),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: titleStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            caption,
            style: captionStyle,
          ),
        ],
      ),
    );
  }
}
