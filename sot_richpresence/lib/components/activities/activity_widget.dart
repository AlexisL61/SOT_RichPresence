import 'package:fluent_ui/fluent_ui.dart';
import 'package:sot_richpresence/components/clippers/activity_clipper.dart';
import 'package:sot_richpresence/models/activities/activity.dart';

class ActivityWidget extends StatelessWidget {
  final Activity activity;

  const ActivityWidget({super.key, required this.activity});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: ActivityClipper(),
        child: Container(
          color: Colors.black.withOpacity(0.5),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(activity.name, style: TextStyle(fontSize: 24, color: Colors.white)),
                SizedBox(height: 20),
                Image.network(activity.image, fit: BoxFit.contain),
              ],
            ),
          ),
        ));
  }
}
