import 'package:flutter/material.dart';

class DescriptionBox extends StatelessWidget {
  DescriptionBox({super.key});


  @override
  Widget build(BuildContext context) {

//textstyle
  var myPrimaryTextStyle =
      TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
  var mysecondaryTextStyle =
      TextStyle(color: Theme.of(context).colorScheme.primary);

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
      ),
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // delivery fee
          Column(
            children: [
              Text('\$0.99',style: myPrimaryTextStyle,),
              Text('Delivery fee',style: mysecondaryTextStyle),
            ],
          ),

          //delivery time
          Column(
            children: [
              Text('5-30 minutes',style: myPrimaryTextStyle,),
              Text('Delivery time',style: mysecondaryTextStyle),
            ],
          ),
        ],
      ),
    );
  }
}
