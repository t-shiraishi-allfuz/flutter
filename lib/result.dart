import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:test_app/result_provider.dart';
import 'package:provider/provider.dart';

class ResultPage extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		Widget _renderText(ResultProvider model) {
			return Center(
				child: Column(
					mainAxisAlignment: MainAxisAlignment.start,
					children: <Widget>[
						Container(
							height: 70,
							padding: EdgeInsets.all(10),
							child: Center(
								child: Text(
									'お疲れ様でした',
									style: TextStyle(
										color: Colors.black,
										fontSize: 16, 
									)
								),
							),
						),
						Container(
							height: 70,
							padding: EdgeInsets.all(10),
							child: Center(
								child: Text(
									'結果：${model.clear}/${model.total} 問正解',
									style: TextStyle(
										color: Colors.black,
										fontSize: 32, 
									)
								),
							),
						),
					]
				)
			);
		}

		return Scaffold(
			appBar: AppBar(
				title: Text('乃木坂実力試験'),
				centerTitle: true,
			),
			body: Consumer<ResultProvider>(builder: (context, model, _) {
				return _renderText(model);
			}),
		);
	}
}
