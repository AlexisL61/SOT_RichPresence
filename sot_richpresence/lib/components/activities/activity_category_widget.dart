import 'package:fluent_ui/fluent_ui.dart';
import 'package:sot_richpresence/components/activities/activity_widget.dart';
import 'package:sot_richpresence/models/activities/activity_category.dart';

class ActivityCategoryWidget extends StatelessWidget {
  final ActivityCategory activityCategory;

  const ActivityCategoryWidget({super.key, required this.activityCategory});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(activityCategory.name, style: TextStyle(fontSize: 24, color: Colors.white)),
        SizedBox(height: 20),
        GridView.count(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            children: List.generate(activityCategory.activities.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: ActivityWidget(activity: activityCategory.activities[index]),
              );
            })),
      ],
    );
  }
}
