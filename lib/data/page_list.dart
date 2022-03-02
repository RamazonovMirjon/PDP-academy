import 'package:pdp/models/page_model.dart';
import 'package:pdp/screens/1.dart';
import 'package:pdp/screens/2.dart';
import 'package:pdp/screens/3.dart';

class PageData {
  static final List<PageModel> _pages = [
    PageModel('Containers_1.1', '20.01.2022', '/1', const Page1()),
    PageModel('Containers_1.2', '20.01.2022', '/2', const Page2()),
    PageModel('Containers_1.3', '20.01.2022', '/3', const Page3()),
    PageModel('TabBar', '3.03.2022', '/4', const Page3()),
  ];

  static List<PageModel> get pages => _pages;
}
