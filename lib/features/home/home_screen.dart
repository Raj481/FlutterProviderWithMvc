import 'package:provider_mvc_sample/base/base_imports.dart';
import 'package:provider_mvc_sample/features/home/widgets/post_item_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await context.read<HomeProvider>().getUserPost();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (_, controller, child) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Posts".toUpperCase(),
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          body: (controller.getPosts.isNotEmpty)
              ? ListView.builder(
                  itemCount: controller.getPosts.length,
                  itemBuilder: (_, index) {
                    return PostItemView(
                      data: controller.getPosts[index],
                    );
                  },
                )
              : SizedBox.shrink(),
        );
      },
    );
  }
}
