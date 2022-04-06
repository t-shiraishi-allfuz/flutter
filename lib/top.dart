import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:test_app/result_provider.dart';
import 'package:provider/provider.dart';

class TopPage extends StatefulWidget {
	@override
	_TopPage createState() => new _TopPage();
}

class _TopPage extends State<TopPage> {
	initState() {
		super.initState();
	}

	@override
	Widget build(BuildContext context) {
		final data = Provider.of<ResultProvider>(context);
		if (data.is_result) {
			Navigator.of(context).pushReplacementNamed('/result');
		}

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
									'問題${model.number.toString()}' ,
									style: TextStyle(
										color: Colors.black,
										fontSize: 16, 
									)
								),
							),
						),
						Container(
							height: 100,
							padding: const EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
							child: Center(
								child: Text(
									'${model.qlist.elementAt(model.number)["body"]}',
									style: TextStyle(
										color: Colors.black,
										fontSize: 16, 
									)
								),
							),
						),
						Expanded(
							child: Padding(
								padding: const EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
								child: Column(
									mainAxisAlignment: MainAxisAlignment.spaceEvenly,
									children: <Widget>[
										SizedBox(
											width: double.infinity,
											height: 50,
											child: RaisedButton(
												child: Text(
													'選択肢1',
													style: TextStyle(
														color: Colors.white,
													)
												),
												color: Colors.blue,
												onPressed: () {
													model.updateNumber();
													model.notify();
												}
											)
										),
										SizedBox(
											width: double.infinity,
											height: 50,
											child: RaisedButton(
												child: Text(
													'選択肢2',
													style: TextStyle(
														color: Colors.white,
													)
												),
												color: Colors.blue,
												onPressed: () {
													model.updateNumber();
													model.notify();
												}
											)
										),
										SizedBox(
											width: double.infinity,
											height: 50,
											child: RaisedButton(
												child: Text(
													'選択肢3',
													style: TextStyle(
														color: Colors.white,
													)
												),
												color: Colors.blue,
												onPressed: () {
													model.updateNumber();
													model.notify();
												}
											)
										),
										SizedBox(
											width: double.infinity,
											height: 50,
											child: RaisedButton(
												child: Text(
													'選択肢4',
													style: TextStyle(
														color: Colors.white,
													)
												),
												color: Colors.blue,
												onPressed: () {
													model.updateNumber();
													model.notify();
												}
											)
										),
									]
								)
							)
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
