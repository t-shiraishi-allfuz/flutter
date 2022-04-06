import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:test_app/top.dart';
import 'package:test_app/result.dart';
import 'package:test_app/result_provider.dart';

void main() {
	runApp(
		MultiProvider(
			providers: [
				ChangeNotifierProvider<ResultProvider>(
					create: (context) => ResultProvider(),
				),
			],
			child: MaterialApp(
				title: '乃木坂実力試験',
				theme: ThemeData(
					primarySwatch: Colors.purple,
				),
				home: TopPage(),
				routes: {
					'/home': (context) => TopPage(),
					'/result': (context) => ResultPage(),
				},
			),
		),
	);
}
