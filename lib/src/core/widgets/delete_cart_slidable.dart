import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class DeleteCartSlidable extends StatelessWidget {
  const DeleteCartSlidable(
      {super.key, required this.child, required this.deleteItem});
  final Widget child;
  final Function(BuildContext context) deleteItem;
  @override
  Widget build(BuildContext context) {
   // final l10n = context.l10n;
    return Slidable(
      child: child,
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        extentRatio: 0.3,
        children: [
          SlidableAction(
            onPressed: deleteItem,
            backgroundColor: const Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
    );
  }
}
