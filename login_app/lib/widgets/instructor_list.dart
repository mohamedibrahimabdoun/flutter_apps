import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/instructor_tile.dart';
import '../providers/instructors_provider.dart';

class InstructorsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final instructors = Provider.of<Instructors>(context);

    return ListView.builder(
      itemCount: instructors.getInstructorsCount,
      itemBuilder: (context, index) {
        return InstructorTile(instructors.getInstructors[index]);
      },
    );
  }
}
