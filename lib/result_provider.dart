import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class ResultProvider extends ChangeNotifier {
	int number = 1;
	int total = 10;
	int clear = 0;

	bool is_result = false;

	List<Map<String, dynamic>> qlist = [
		{'body': 'ダミー', 'answer': '1'},
		{'body': '問題文1', 'answer': '1'},
		{'body': '問題文2', 'answer': '2'},
		{'body': '問題文3', 'answer': '3'},
		{'body': '問題文4', 'answer': '4'},
		{'body': '問題文5', 'answer': '1'},
		{'body': '問題文6', 'answer': '2'},
		{'body': '問題文7', 'answer': '3'},
		{'body': '問題文8', 'answer': '4'},
		{'body': '問題文9', 'answer': '1'},
		{'body': '問題文10', 'answer': '2'},
	];

	ResultProvider() {
		initValue();
	}

	// 初期化
	void initValue() {
		this.number = 1;
		this.total = 10;
		this.clear = 0;
		this.qlist = [
			{'body': 'ダミー', 'answer': '1'},
			{'body': '問題文1', 'answer': '1'},
			{'body': '問題文2', 'answer': '2'},
			{'body': '問題文3', 'answer': '3'},
			{'body': '問題文4', 'answer': '4'},
			{'body': '問題文5', 'answer': '1'},
			{'body': '問題文6', 'answer': '2'},
			{'body': '問題文7', 'answer': '3'},
			{'body': '問題文8', 'answer': '4'},
			{'body': '問題文9', 'answer': '1'},
			{'body': '問題文10', 'answer': '2'},
		];
	}

	void refresh() {
		initValue();
		notifyListeners(); // Providerを介してConsumer配下のWidgetがリビルドされる
	}

	void updateNumber() {
		number = number + 1;
		clear = clear + 1;

		if (number > total) {
			is_result = true;
		}
	}

	void notify() {
		notifyListeners(); // Providerを介してConsumer配下のWidgetがリビルドされる
	}
}
