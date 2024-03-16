import 'package:fluent_ui/fluent_ui.dart';
import 'package:sot_richpresence/components/background/background.dart';
import 'package:sot_richpresence/components/activities/activity_company_widget.dart';
import 'package:sot_richpresence/components/separator/separator.dart';
import 'package:sot_richpresence/models/activities/activity.dart';
import 'package:sot_richpresence/services/activities/activity_service.dart';
import 'package:sot_richpresence/services/responsive_service/responsive_service.dart';

class ChooseActivityCompanyPage extends StatefulWidget {
  const ChooseActivityCompanyPage({super.key});

  @override
  State<ChooseActivityCompanyPage> createState() => _ChooseActivityCompanyPageState();
}

class _ChooseActivityCompanyPageState extends State<ChooseActivityCompanyPage> {
  @override
  Widget build(BuildContext context) {
    return NavigationView(
        content: SotBackground(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                    children: [
                      Text("Choisissez une société", style: TextStyle(fontSize: 24, color: Colors.white)),
                      SizedBox(height: 20),
                      Separator(icon: "sloop"),
                      SizedBox(height: 40),
                      Expanded(
                        child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: ResponsiveService.getPadding(MediaQuery.of(context).size.width, ratio: 1.5)),
              child: GridView.count(
                  childAspectRatio: 2,
                  crossAxisCount: ResponsiveService.getColumns(MediaQuery.of(context).size.width, ratio: 1.5),
                  children: List.generate(ActivityService.activityCategories.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: GestureDetector(
                          onTap: () async {
                            Navigator.pop(context, await Navigator.pushNamed(context, '/choose_activity',
                                arguments: ActivityService.activityCategories[index]) as Activity);
                          },
                          child: CompanyWidget(company: ActivityService.activityCategories[index])),
                    );
                  })),
                        ),
                      ),
                    ],
                  ),
            )));
  }
}
