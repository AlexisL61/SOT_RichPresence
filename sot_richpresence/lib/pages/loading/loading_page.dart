import 'package:fluent_ui/fluent_ui.dart';
import 'package:sot_richpresence/components/background/background.dart';
import 'package:sot_richpresence/components/buttons/small_button.dart';
import 'package:sot_richpresence/components/buttons/squared_button.dart';
import 'package:sot_richpresence/components/clippers/squared_button_clipper.dart';
import 'package:sot_richpresence/components/panels/large_panel.dart';
import 'package:sot_richpresence/components/panels/small_panel.dart';
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
    controller.init().then((value) {
      Navigator.of(context).pushReplacementNamed('/home');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      content: SotBackground(
          child: Center(
        child: Text("Loading...", style: TextStyle(color: Colors.white)),
      )),
    );
  }
}
