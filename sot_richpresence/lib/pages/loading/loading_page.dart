import 'package:fluent_ui/fluent_ui.dart';
import 'package:sot_richpresence/components/navigation/naviagtion_view.dart';
import 'package:sot_richpresence/components/texts/styles.dart';
import 'package:sot_richpresence/pages/loading/loading_page_controller.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    LoadingPageController controller = LoadingPageController();
    controller.init(context).then((value) {
      Navigator.of(context).pushReplacementNamed('/home');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SotNavigationView(
      content: Center(
        child: Text("Loading...", style: SotTextStyles.mediumWhite),
      ),
    );
  }
}
