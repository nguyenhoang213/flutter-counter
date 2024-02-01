import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyObject {
  int _value;
  MyObject(this._value);
  int get value => _value;
  set value(newValue) => _value = newValue;

  void increase() {
    _value++;
  }

  void decrease() {
    _value--;
  }

  void square() {
    _value = _value * _value;
  }

  int power(int exponent) {
    int result = 1;
    for (int i = 0; i < exponent; i++) {
      result *= _value;
    }
    return result;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MyObject myObject = MyObject(0);
  int n = 0;

  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),  
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Giá trị hiện tại: ${myObject.value}'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: 'Nhập số nguyên n'),
                onChanged: (value) {
                  n = int.parse(value);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(
                  onPressed: () {
                    myObject.decrease();
                    setState(() {});
                  },
                  icon: const Icon(Icons.remove),
                  label: const Text('Giảm'),
                ),
                const SizedBox(width: 5),
                OutlinedButton.icon(
                  onPressed: () {
                    myObject.increase();
                    setState(() {});
                  },
                  icon: const Icon(Icons.add),
                  label: const Text('Tăng'),
                ),
                const SizedBox(width: 5),
                OutlinedButton.icon(
                  onPressed: () {
                    myObject.square();
                    setState(() {});
                  },
                  icon: const Icon(Icons.square_foot),
                  label: const Text('Bình phương'),
                ),
                const SizedBox(width: 5),
                OutlinedButton.icon(
                  onPressed: () {
                    int exponent = 3;
                    int result = myObject.power(exponent);
                    myObject.value = result; // Cập nhật giá trị của myObject
                    setState(() {});
                  },
                  icon: const Icon(Icons.exposure),
                  label: const Text('Lũy thừa (3)'),
                ),
                const SizedBox(width: 5),
                OutlinedButton.icon(
                  onPressed: () {
                    int result = myObject.power(n);
                    myObject.value = result; // Cập nhật giá trị của myObject
                    setState(() {});
                  },
                  icon: const Icon(Icons.exposure),
                  label: Text('Lũy thừa ($n)'),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}