import 'package:flutter/material.dart';

class BasicDisign extends StatelessWidget {
  const BasicDisign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(
            image: AssetImage('assets/images/photo.jpg'),
          ),
          const _Title(),
          const _SubTitle(),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 20,
            ),
            child: const Text(
              'Reprehenderit cupidatat anim nostrud ipsum duis ex ullamco. Laboris eu qui enim duis labore ipsum nulla voluptate ex labore dolor ex. Cillum culpa dolor cillum culpa cillum veniam quis exercitation excepteur cillum nostrud. Eiusmod mollit ullamco ullamco est aliquip labore.',
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 15,
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Esse veniam nulla.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Esse veniam nulla consequat.',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('42')
        ],
      ),
    );
  }
}

class _SubTitle extends StatelessWidget {
  const _SubTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 80,
        vertical: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          _Button(text: 'Call', icon: Icons.call),
          _Button(text: 'Route', icon: Icons.fmd_good_sharp),
          _Button(text: 'share', icon: Icons.share),
        ],
      ),
    );
  }
}

class _Button extends StatelessWidget {
  final String text;
  final IconData icon;

  const _Button({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 30,
        ),
        const SizedBox(height: 5),
        Text(text.toUpperCase(),
            style: const TextStyle(
              color: Colors.blue,
            )),
      ],
    );
  }
}
