import 'package:fluent_ui/fluent_ui.dart';
import 'package:sot_richpresence/components/background/background.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return NavigationView(
      content: SotBackground(
        child: Center(
          child: Row(
            
          ),
        )
      ),
    );
  }
}