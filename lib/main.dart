import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  final svgImg = "https://www.svgrepo.com/show/378779/brave-dev.svg";

  final image = "https://cdn-icons-png.flaticon.com/128/6359/6359280.png";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //
              //
              Image.network(
                image,
                width: 100,
                height: 100,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  } else {
                    return Container(
                      width: 100,
                      height: 100,
                      color: Colors.red,
                    );
                  }
                },
              ),
              //
              //
            ],
          ),
        ),
      ),
    );
  }
}
