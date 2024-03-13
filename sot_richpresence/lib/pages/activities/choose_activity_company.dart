import 'package:fluent_ui/fluent_ui.dart';
import 'package:sot_richpresence/components/background/background.dart';
import 'package:sot_richpresence/components/companies/company.dart';
import 'package:sot_richpresence/components/separator/separator.dart';
import 'package:sot_richpresence/services/activities/activity_service.dart';

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
            child: Column(
      children: [
        Text("Choisissez une société", style: TextStyle(fontSize: 24, color: Colors.white)),
        SizedBox(height: 20),
        Separator(icon: "sloop"),
        SizedBox(height: 40),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.count(
              childAspectRatio: 2,
                crossAxisCount: 3,
                children: List.generate(ActivityService.activityCategories.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CompanyWidget(company: ActivityService.activityCategories[index]),
                  );
                })),
          ),
        ),
      ],
    )));
  }
}
