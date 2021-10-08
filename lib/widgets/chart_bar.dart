import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  ChartBar(this.label, this.spendingAmount, this.spendingPctOfTotal);
  final String label;
  final double spendingAmount;
  final double spendingPctOfTotal;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 20.0,
          child: FittedBox(
            child: Text('\$${spendingAmount.toStringAsFixed(0)}'),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          height: 60,
          width: 10,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.0),
                  color: Color.fromRGBO(220, 220, 220, 1),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              FractionallySizedBox(
                heightFactor: spendingPctOfTotal,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(label),
      ],
    );
  }
}
