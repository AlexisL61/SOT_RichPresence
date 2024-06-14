import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:sot_richpresence/components/clippers/activity_clipper.dart';
import 'package:sot_richpresence/components/colors/colors.dart';
import 'package:sot_richpresence/components/texts/styles.dart';
import 'package:sot_richpresence/models/activities/activity.dart';
import 'package:sot_richpresence/services/translations/translations_service.dart';

class ActivityWidget extends StatelessWidget {
  final Activity activity;

  const ActivityWidget({super.key, required this.activity});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop(activity);
          },
          child: ClipPath(
              clipper: ActivityClipper(),
              child: Container(
                color: Colors.black.withOpacity(0.5),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            onlineTr(activity.name),
                            style: SotTextStyles.mediumWhite,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 20),
                        Image.network(activity.image, fit: BoxFit.contain),
                        SizedBox(height: 20),
                        _buildTime(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(onlineTr(activity.description),
                              style: SotTextStyles.smallWhite),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
        ),
      ],
    );
  }

  Widget _buildTime() {
    List<Widget> widgets = [];
    for (int i = 0; i < activity.length; i++) {
      widgets.add(Image.asset(
        "assets/icons/time.webp",
        color: SotColors.white,
      ));
    }
    for (int i = 0; i < 5 - activity.length; i++) {
      widgets.add(Image.asset(
        "assets/icons/time.webp",
        color: SotColors.darkYellow,
      ));
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("${tr("_length")} ", style: SotTextStyles.smallWhite),
        SizedBox(width: 5),
        ...widgets.expand((element) => [element, SizedBox(width: 5)]).toList()
      ],
    );
  }
}
