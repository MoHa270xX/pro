import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Widgets Showcase",
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 120),
        TextExampel(),
        SizedBox(height: 25),
        iconExampel(),
        SizedBox(height: 25),
        ElevatedButtonExample(),
        SizedBox(height: 25),
        OutlinedButtonExample(),
        SizedBox(height: 20),
        TextButtonExample(),
        SizedBox(height: 30),
        CheckBoxExample(
          value: true,
          onChanged: (newValue) => print("Checkbox clicked: $newValue"),
        ),
        RadioExampel(
          value: true,
          onChanged: (value) {
            print("Radio Click:$value");
          },
        ),
        RadioExampe2(
           value: true,
          onChanged: (value) {
            print("Radio Click:$value");
          },
        ),
      ],
    );
  }
}

class TextExampel extends StatelessWidget {
  const TextExampel({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hello Flutter !",
        style: TextStyle(
          color: Colors.black,
          fontSize: 32,
          fontWeight: FontWeight.bold,
          shadows: [
            Shadow(blurRadius: 4, color: Colors.green, offset: Offset(2, 2)),
          ],
        ),
      ),
    );
  }
}

class iconExampel extends StatelessWidget {
  const iconExampel({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.star, size: 80, color: Colors.yellow);
  }
}

class ElevatedButtonExample extends StatelessWidget {
  const ElevatedButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            shadowColor: Colors.black,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 18,
              right: 18,
              top: 4,
              bottom: 4,
            ),
            child: Text("Elevated Button"),
          ),
        ),
      ),
    );
  }
}

class OutlinedButtonExample extends StatelessWidget {
  const OutlinedButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          foregroundColor: Colors.deepPurple,
          side: BorderSide(color: Colors.deepPurple, width: 3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 18,
            right: 18,
            top: 4,
            bottom: 4,
          ),
          child: Text("Outlined Button"),
        ),
      ),
    );
  }
}

class TextButtonExample extends StatelessWidget {
  const TextButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          foregroundColor: Color(0xffF7B44A),
          backgroundColor: Color(0xffF7B44A).withOpacity(0.2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 8,
            bottom: 8,
          ),
          child: Text("Text Button"),
        ),
      ),
    );
  }
}

class CheckBoxExample extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;

  const CheckBoxExample({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
          activeColor: Colors.grey,
          checkColor: Colors.white,
          side: BorderSide(color: Colors.grey, width: 2),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        Text("Accept Terms", style: TextStyle(fontSize: 20)),
      ],
    );
  }
}

class RadioExampel extends StatelessWidget {
  const RadioExampel({required this.value, required this.onChanged, super.key});
  final bool value;
  final void Function(bool?)? onChanged;
  final bool selectedValue = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Radio<bool>(
          value: value,
          groupValue: selectedValue,
          onChanged: onChanged,
          activeColor: Colors.grey,
        ),
        Text("Option A", style: TextStyle(fontSize: 20)),
      ],
    );
  }
}

class RadioExampe2 extends StatelessWidget {
  const RadioExampe2({required this.value, required this.onChanged, super.key});
  final bool value;
  final void Function(bool?)? onChanged;
  final bool selectedValue = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Radio<bool>(
          value: value,
          groupValue: selectedValue,
          onChanged: onChanged,
          hoverColor: Colors.grey,
        ),
        Text("Option B", style: TextStyle(fontSize: 20)),
      ],
    );
  }
}
