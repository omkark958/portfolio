import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:portfolio/api/api.api.dart';
import 'package:portfolio/config.dart';
import 'package:portfolio/routes/routes.route.dart';
import 'package:universal_html/html.dart' as uni_html;

void main() async {
  Map<String, String>? configuration = Config().config();
  await initServices(configuration);
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  Future<void> _refreshPage() async {
    if (kIsWeb) {
      uni_html.window.location.reload();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      getPages: Routes().routes,
      builder: (context, child) {
        return RefreshIndicator(
          onRefresh: _refreshPage,
          child: ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: child ?? const SizedBox(),
              ),
            ],
          ),
        );
      },
    );
  }
}

Future<void> initServices(Map<String, String>? configuration) async {
  Get.put<ApiService>(ApiService(baseUrl: configuration!["url"]));
}
