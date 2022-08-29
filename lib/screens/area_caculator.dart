import 'package:area_calculator/screens/widgets/custom_area_text_field.dart';
import 'package:area_calculator/screens/widgets/shape_container.dart';
import 'package:flutter/material.dart';

class AreaCalculatorScreen extends StatefulWidget {
  const AreaCalculatorScreen({super.key});

  @override
  State<AreaCalculatorScreen> createState() => _AreaCalculatorScreenState();
}

class _AreaCalculatorScreenState extends State<AreaCalculatorScreen> {
  List<String> shapes = [
    'Rectangle',
    'Triangle',
  ];
  String currentShape = 'Rectangle';
  String result = '0';
  double width = 0;
  double height = 0;

  final TextEditingController widthController = TextEditingController();
  final TextEditingController heightController = TextEditingController();

  @override
  void initState() {
    currentShape = 'Rectangle';
    result = '0';
    widthController.addListener(() {
      updateWidth;
    });
    widthController.addListener(() {
      updateHeight;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Area Calculator'),
      ),
      body: Container(
        margin: const EdgeInsets.only(
          top: 15.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Drop Down Button
              DropdownButton(
                value: currentShape,
                items: shapes.map((String value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: ((shape) {
                  setState(() {
                    currentShape = shape.toString();
                  });
                }),
              ),
              // Shape of container
              ShapeContainer(shape: currentShape),

              // Width Widget
              AreaTextField(
                controller: widthController,
                hint: 'Width',
              ),

              // Height Widget
              AreaTextField(
                controller: heightController,
                hint: 'Height',
              ),
              Container(
                margin: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  onPressed: calculateArea,
                  child: const Text(
                    'Calculate Area',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              Text(
                result,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.green[700],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void calculateArea() {
    double area = 0;

    if (currentShape.toString() == 'Rectangle') {
      area = width * height;
    } else if (currentShape.toString() == 'Triangle') {
      area = width * height / 2;
    } else {
      area = 0;
    }
    setState(() {
      print(area);
      result = 'The area is $area';
    });
  }

  void updateWidth() {
    setState(() {
      if (widthController.text != '') {
        width = double.parse(widthController.text);
      } else {
        width = 0;
      }
    });
    print(width);
  }

  void updateHeight() {
    setState(() {
      if (heightController.text != '') {
        height = double.parse(heightController.text);
      } else {
        height = 0;
      }
    });
    print(height);
  }
}
