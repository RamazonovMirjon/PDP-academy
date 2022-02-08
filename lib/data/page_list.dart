import '../models/page_model.dart';
import '../tasks/1.dart';
import '../tasks/2.dart';
import '../tasks/3.dart';

class PageData {
  static final List<PageModel> _pages = [
    PageModel('Containers_1.1', '20.01.2022', '_image', const Page1()),
    PageModel('Containers_1.2', '20.01.2022', '_image', const Page2()),
    PageModel('Containers_1.3', '20.01.2022', '_image', const Page3()),
  ];

  static List<PageModel> get pages => _pages;
}
