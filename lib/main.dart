import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tele Health',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
        style: CupertinoTheme.of(context)
            .textTheme
            .textStyle
            .copyWith(color: const Color(0xFF1D1D1F)),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              Landing(),
              LearnMore(),
              Technologies(),
            ],
          ),
        ));
  }
}

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        children: [
          const SizedBox(height: 44),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Remote Health',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 70,
                ),
              ),
            ],
          ),
          const Text(
            'Montior your patient\'s health from anywhere',
            style: TextStyle(
              color: Color(0xFF86868b),
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton(
                color: CupertinoColors.black,
                onPressed: () {},
                child: const Text('See Demo'),
              ),
              // const SizedBox(width: 10),
              // Container(
              //   clipBehavior: Clip.hardEdge,
              //   decoration: BoxDecoration(
              //       border: Border.all(
              //         color: CupertinoColors.black,
              //       ),
              //       borderRadius: BorderRadius.circular(6)),
              //   child: CupertinoButton(
              //     color: CupertinoColors.white,
              //     onPressed: () {},
              //     child: const Text(
              //       'Learn More',
              //       style: TextStyle(color: CupertinoColors.black),
              //     ),
              //   ),
              // ),
            ],
          ),
          const SizedBox(height: 40),
          Image.asset(
            './assets/mockup.png',
            height: 500,
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}

class LearnMore extends StatelessWidget {
  const LearnMore({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color(0xFFf5f5f7),
      child: Column(
        children: [
          const SizedBox(height: 100),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Learn More',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 70,
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          Container(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: const Text(
              'Remote Health aims to provide care provider with remote insights and viewing on metrics pertaining to their patient\'s health status. Monitor heart rate and steps taken by your patients from the digital display which you can carry around anywhere.',
              style: TextStyle(
                color: Color(0xFF86868b),
                fontWeight: FontWeight.w600,
                height: 1.3,
                fontSize: 24,
              ),
            ),
          ),
          const SizedBox(height: 25),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Icon(
                    CupertinoIcons.heart_fill,
                    color: CupertinoColors.systemPink,
                    size: 50,
                  ),
                  Text(
                    'Heart Rate',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  )
                ],
              ),
              const SizedBox(width: 45),
              Column(
                children: [
                  Icon(
                    Icons.directions_walk,
                    color: CupertinoColors.systemPurple,
                    size: 50,
                  ),
                  Text(
                    'Steps',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}

class Technologies extends StatelessWidget {
  const Technologies({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 44),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Technologies',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 70,
                  ),
                ),
              ],
            ),
            const Text(
              'Find out how Remote Health works.',
              style: TextStyle(
                color: Color(0xFF86868b),
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFFf5f5f7),
                    ),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(20),
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Apple Watch',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 28,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Expanded(child: SizedBox()),
                        Image.asset(
                          './assets/apple_watch.png',
                          height: 300,
                        ),
                        const Expanded(child: SizedBox()),
                        const Text(
                          'Our application begins first and foremost with your Apple Watch. From here we collect heart rate and steps data.',
                          style: TextStyle(
                            color: Color(0xFF86868b),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFFf5f5f7),
                    ),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(20),
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Apple Health',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 28,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Expanded(child: SizedBox()),
                        Image.asset(
                          './assets/apple_health.jpeg',
                          height: 300,
                        ),
                        const Expanded(child: SizedBox()),
                        const Text(
                          'Data from your Apple Watch is then securely sent over to the Apple Health app.\nThis application comes pre-installed with every iPhone.',
                          style: TextStyle(
                            color: Color(0xFF86868b),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFFf5f5f7),
                    ),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(20),
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Flutter',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 28,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Expanded(child: SizedBox()),
                        Image.asset(
                          './assets/flutter.png',
                          height: 100,
                        ),
                        const Expanded(child: SizedBox()),
                        const Text(
                          'Flutter is used as our app development framework. The mobile app allows us to collect health data from the Apple Health app and send it to AWS to be collected later.',
                          style: TextStyle(
                            color: Color(0xFF86868b),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFFf5f5f7),
                    ),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(20),
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'AWS',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 28,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Expanded(child: SizedBox()),
                        Image.asset(
                          './assets/aws.png',
                          height: 100,
                        ),
                        const Expanded(child: SizedBox()),
                        const Text(
                          'AWS is used to store your patient\'s health data for remote access.',
                          style: TextStyle(
                            color: Color(0xFF86868b),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Column(
                //   children: [Text('TI CC3200')],
                // ),
                // Column(
                //   children: [Text('Adafruit OLED')],
                // ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFFf5f5f7),
                    ),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(20),
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'TI CC3200',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 28,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Expanded(child: SizedBox()),
                        Image.asset(
                          './assets/cc3200.png',
                          height: 200,
                        ),
                        const Expanded(child: SizedBox()),
                        const Text(
                          'Remote viewing will occur on a board from Texas Instruments. This device will perform requests to AWS to collect health data.',
                          style: TextStyle(
                            color: Color(0xFF86868b),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFFf5f5f7),
                    ),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(20),
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Adafruit OLED',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 28,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Expanded(child: SizedBox()),
                        Image.asset(
                          './assets/oled.jpeg',
                          height: 200,
                        ),
                        const Expanded(child: SizedBox()),
                        const Text(
                          'Health data values will finally be displayed onto an OLED devices connected to the CC3200 for viewing.',
                          style: TextStyle(
                            color: Color(0xFF86868b),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Column(
                //   children: [Text('TI CC3200')],
                // ),
                // Column(
                //   children: [Text('Adafruit OLED')],
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
