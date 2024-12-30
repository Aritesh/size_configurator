import 'package:flutter/material.dart';
import 'package:size_configurator/size_configurator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive UI Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Initialize SizeConfig inside LayoutBuilder and OrientationBuilder
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            // Initialize SizeConfig
            SizeConfig().init(constraints, orientation);

            return Scaffold(
              appBar: AppBar(
                title: Text('Responsive UI Example'),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Screen Width: ${SizeConfig.screenWidth.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 16 * SizeConfig.textMultiplier,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Text Multiplier: ${SizeConfig.textMultiplier.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 14 * SizeConfig.textMultiplier,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20 * SizeConfig.widthMultiplier,
                        vertical: 10 * SizeConfig.heightMultiplier,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Responsive Container',
                        style: TextStyle(
                          fontSize: 18 * SizeConfig.textMultiplier,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
