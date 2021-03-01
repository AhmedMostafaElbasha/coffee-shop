import '../presentation/presentation.dart';

class AppRoutes {
  static String home = '/home_page';
  static String order = '/order_page';

  static var routes = {
    home: (_) => HomePage(),
    order: (_) => OrderPage(),
  };
}
