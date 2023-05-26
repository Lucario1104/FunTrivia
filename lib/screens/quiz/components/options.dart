import 'package:flutter/material.dart';

// class options extends StatelessWidget {
//   const options({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 50,
//       padding: EdgeInsets.all(10),
//       decoration: BoxDecoration(
//           border: Border.all(color: Colors.grey),
//           borderRadius: BorderRadius.circular(50)
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Container(
//             height: 20, width: 20,
//             decoration: BoxDecoration(
//                 border: Border.all(color: Colors.grey),
//                 borderRadius: BorderRadius.circular(10)
//             ),
//           ),
//           Text('Option 1', style: TextStyle(color: Colors.grey, fontSize: 16),),
//         ],
//       ),
//     );
//   }
// }

class RadioButtonGroupWidget extends StatefulWidget {
  @override
  _RadioButtonGroupWidgetState createState() => _RadioButtonGroupWidgetState();
}

class _RadioButtonGroupWidgetState extends State<RadioButtonGroupWidget> {
  static const values = <String>['CnA', 'Coding', 'FEC', '.ai'];
  String selectedValue = values.first;

  final selectedColor = Colors.green;
  final unselectedColor = Colors.white;

  @override
  Widget build(BuildContext context) => Container(
    color: Colors.transparent,
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Divider(color: Colors.white),
          buildRadios(),
          Divider(color: Colors.white),
        ],
      ),
    ),
  );

  Widget buildRadios() => Theme(
    data: Theme.of(context).copyWith(
      unselectedWidgetColor: Colors.grey,
    ),
    child: Column(
      children: values.map(
            (value) {
          final selected = this.selectedValue == value;
          final color = selected ? selectedColor : unselectedColor;

          return RadioListTile<String>(
            value: value,
            groupValue: selectedValue,
            title: Text(
              value,
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            activeColor: selectedColor,
            onChanged: (value) =>
                setState(() => this.selectedValue = value!),
          );
        },
      ).toList(),
    ),
  );
}