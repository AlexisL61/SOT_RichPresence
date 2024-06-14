import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:sot_richpresence/components/buttons/icon_button.dart';
import 'package:sot_richpresence/components/dialogs/sot_dialog.dart';
import 'package:sot_richpresence/components/texts/styles.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CreditDialog extends StatelessWidget {
  const CreditDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SOTDialog(
        child: SizedBox(
      width: 500,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(tr("_app_title"),
              textAlign: TextAlign.center, style: SotTextStyles.mediumYellow),
          SizedBox(height: 20),
          Text(tr("_app_description"),
              textAlign: TextAlign.center, style: SotTextStyles.mediumWhite),
          SizedBox(height: 40),
          Text(tr("_app_developer", namedArgs: {"developer": "AlexisL61"}),
              textAlign: TextAlign.center, style: SotTextStyles.mediumWhite),
          SizedBox(height: 20),
          SotIconButton(
              onPressed: () {
                launchUrlString(
                    "https://github.com/AlexisL61/SOT_RichPresence");
              },
              icon: FluentIcons.heart)
        ],
      ),
    ));
  }
}
