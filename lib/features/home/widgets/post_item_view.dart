import 'package:provider_mvc_sample/base/base_imports.dart';

class PostItemView extends StatelessWidget {
  final dynamic data;
  const PostItemView({
    super.key,
    this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Flexible(
            child: Text(
              data["title"],
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
