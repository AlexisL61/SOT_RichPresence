import 'package:easy_localization/easy_localization.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:sot_richpresence/components/activities/activity_category_widget.dart';
import 'package:sot_richpresence/components/navigation/naviagtion_view.dart';
import 'package:sot_richpresence/components/separator/separator.dart';
import 'package:sot_richpresence/components/texts/styles.dart';
import 'package:sot_richpresence/models/activities/activity_company.dart';

class ChooseActivityRoute extends StatelessWidget {
  const ChooseActivityRoute({super.key});

  @override
  Widget build(BuildContext context) {
    ActivityCompany company =
        ModalRoute.of(context)!.settings.arguments as ActivityCompany;
    return ChooseActivityPage(company: company);
  }
}

class ChooseActivityPage extends StatefulWidget {
  final ActivityCompany company;
  const ChooseActivityPage({super.key, required this.company});

  @override
  State<ChooseActivityPage> createState() => _ChooseActivityPageState();
}

class _ChooseActivityPageState extends State<ChooseActivityPage> {
  @override
  Widget build(BuildContext context) {
    return SotNavigationView(
        showBackButton: true,
        content: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(tr("_activity_select_title"),
                  style: SotTextStyles.mediumWhite),
              SizedBox(height: 20),
              Separator(icon: "sloop"),
              SizedBox(height: 40),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListView(
                      children: List.generate(widget.company.categories.length,
                          (index) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ActivityCategoryWidget(
                          activityCategory: widget.company.categories[index]),
                    );
                  })),
                ),
              ),
            ],
          ),
        ));
  }
}
