import 'package:flutter/material.dart';

void main(){
  runApp(
    const SmartCounterApp2()
  );
}

class SmartCounterApp2 extends StatelessWidget {
  const SmartCounterApp2({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove the debug banner,
      home: CounterScreen(), //
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key}); // Constructor for the counter screen widget

  @override
  State<CounterScreen> createState() => _CounterScreenState();  // Create the state for the counter screen
}


class _CounterScreenState extends State<CounterScreen> { // State class for the counter screen
  int _count = 0; // Initialize the counter value to 0

  void _incrementCounter() {
    setState(() {
      _count++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Color.fromARGB(255, 62, 17, 125),
      backgroundColor: const Color.fromARGB(255, 216, 210, 225),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Counter",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 20), // Add some spacing between the text and the counter value
            Text(
              "$_count", 
              style: const TextStyle(
                fontSize: 84,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Press the buttons below",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black45,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton:Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "decrease",
            onPressed: (){
              setState(() {
                if(_count > 0){
                  _count--;
                }
              });
            },
            backgroundColor: Colors.redAccent,
            child: const Icon(Icons.remove, color: Colors.white),
          ),
          const SizedBox(width: 14), // Add some spacing between the buttons
          FloatingActionButton(
            heroTag: "increase",
            onPressed: _incrementCounter,
            backgroundColor: Colors.amberAccent,
            child: const Icon(Icons.add, color: Colors.white),
          ),
        ],
      ),
    ); // Scaffold provides the basic material design visual layout structure
  }  
}