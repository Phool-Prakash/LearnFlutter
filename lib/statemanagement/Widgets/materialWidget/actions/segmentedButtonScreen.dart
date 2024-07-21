import 'package:flutter/material.dart';

import 'package:flutter_learn/paddingExtension/paddingExtension.dart';

class SegmentedButtonScreen extends StatefulWidget {
  const SegmentedButtonScreen({super.key});

  @override
  State<SegmentedButtonScreen> createState() => _SegmentedButtonScreenState();
}

class _SegmentedButtonScreenState extends State<SegmentedButtonScreen> {
  Calender calenderView = Calender.day;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('Single Choice').padAll(10),
            const SingleChoice(),
            const SizedBox(
              height: 15,
            ),
            const MultipleChoice()
          ],
        ),
      ),
    );
  }
}

enum Calender { day, week, month, year }

class SingleChoice extends StatefulWidget {
  const SingleChoice({super.key});

  @override
  State<SingleChoice> createState() => _SingleChoiceState();
}

class _SingleChoiceState extends State<SingleChoice> {
  Calender calenderView = Calender.day;
  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Calender>(
        segments: const <ButtonSegment<Calender>>[
          ButtonSegment<Calender>(
            value: Calender.day,
            label: Text('Day'),
            icon: Icon(Icons.calendar_view_day),
          ),
          ButtonSegment<Calender>(
            value: Calender.week,
            label: Text('Week'),
            icon: Icon(Icons.calendar_view_week),
          ),
          ButtonSegment(
              value: Calender.month,
              label: Text('Month'),
              icon: Icon(Icons.calendar_view_month)),
          ButtonSegment(
              value: Calender.year,
              label: Text('Year'),
              icon: Icon(Icons.calendar_today)),
        ],
        selected: <Calender>{
          calenderView
        },
        onSelectionChanged: (Set<Calender> newSelection) {
          setState(() {
            calenderView = newSelection.first;
          });
        });
  }
}

///MultipleChoice
enum Sizes { extraSmall, small, medium, large, extraLarge }

class MultipleChoice extends StatefulWidget {
  const MultipleChoice({super.key});

  @override
  State<MultipleChoice> createState() => _MultipleChoiceState();
}

class _MultipleChoiceState extends State<MultipleChoice> {
  Set<Sizes> selection = <Sizes>{Sizes.large, Sizes.extraLarge};

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Sizes>(
      segments: const <ButtonSegment<Sizes>>[
        ButtonSegment<Sizes>(value: Sizes.extraSmall, label: Text('XS')),
        ButtonSegment<Sizes>(value: Sizes.small, label: Text('S')),
        ButtonSegment<Sizes>(value: Sizes.medium, label: Text('M')),
        ButtonSegment<Sizes>(value: Sizes.large, label: Text('L')),
        ButtonSegment<Sizes>(value: Sizes.extraLarge, label: Text('XL'))
      ],
      selected: selection,
      onSelectionChanged: (Set<Sizes> newSelection) {
        setState(() {
          selection = newSelection;
        });
      },
      multiSelectionEnabled: true,
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text('Date').padAll(10)],
      ),
    );
  }
}
