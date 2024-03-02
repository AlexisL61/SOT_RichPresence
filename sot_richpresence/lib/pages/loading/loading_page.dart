import 'package:fluent_ui/fluent_ui.dart';
import 'package:sot_richpresence/components/background/background.dart';
import 'package:sot_richpresence/components/buttons/small_button.dart';
import 'package:sot_richpresence/components/buttons/squared_button.dart';
import 'package:sot_richpresence/components/clippers/company_clipper.dart';
import 'package:sot_richpresence/components/panels/large_panel.dart';
import 'package:sot_richpresence/components/panels/small_panel.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return NavigationView(
      content: SotBackground(
        child: Row(children: [
          SmallButton(
            onPressed: () {},
            text: "Lorem ipsum dolor imset lorem",
          ),
          ClipPath(clipper: CompanyClipper(), clipBehavior: Clip.hardEdge, child:SmallPanel(
            title: "Sea of Thieves",
            image: NetworkImage("https://avatars.githubusercontent.com/u/30233189?v=4"),
            child: SmallButton(
              onPressed: () {},
              text: "Lorem ipsum dolor imset lorem",
            ),
          )),
          SizedBox(
            width:500,
            child: LargePanel(
              title: "Sea of Thieves",
              description: "Petite description",
              image: NetworkImage("https://rare-assets.azureedge.net/compass/18914f1fb285b18cc7641bc053c857c4d8c428b6.jpg"),
              child: Container(
                child: Row(
                  children: [
                    SmallButton(
                      onPressed: () {},
                      text: "Lorem ipsum dolor imset lorem",
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: SquaredButton(child:Container(
              color: Colors.red,
                  child: Row(
                    children: [
                      SmallButton(
                        onPressed: () {},
                        text: "Lorem ipsum dolor imset lorem",
                      ),
                    ],
                  ),
                ),),
          ),
        ]),
      ),
    );
  }
}
