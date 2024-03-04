import 'package:fluent_ui/fluent_ui.dart';
import 'package:sot_richpresence/components/companies/company.dart';
import 'package:sot_richpresence/services/activities/activity_service.dart';

class ChooseActivityCompanyPage extends StatefulWidget {
  const ChooseActivityCompanyPage({super.key});

  @override
  State<ChooseActivityCompanyPage> createState() => _ChooseActivityCompanyPageState();
}

class _ChooseActivityCompanyPageState extends State<ChooseActivityCompanyPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: List.generate(ActivityService.activityCategories.length, (index) {
      return CompanyWidget(company: ActivityService.activityCategories[index]);
    }));
  }
}
