import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyApp(),
    );
  }
}

Widget bodyApp() {
  // birinchi kuk chiziqli Ramka
  return Container(
    color: Colors.blue,
    margin: const EdgeInsets.all(15),
    // birinchi kuk chiziqli ramka ichidagi oq yuza
    child: Container(
      color: Colors.white,
      margin: const EdgeInsets.all(10),
      //vertikal kontainer'lar joylashuvi
      child: Column(
        children: [
          // 1-text uchun joy va yozuv
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 10),
              alignment: Alignment.topLeft,
              child: const Text(
                'Column',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
            ),
          ),
          //1- qora ramka uchun joy
          Expanded(
            flex: 5,
            //1-qora ramka boshlanishi
            child: Container(
              color: Colors.black,
              //ko'k va qora ramka orasidagi masofa
              margin: const EdgeInsets.symmetric(horizontal: 9),
              //qora ramka tugashi va oq yuza
              child: Container(
                color: Colors.white,
                //bu 1-qora ramka qalinligi
                margin: const EdgeInsets.all(10),
                //2-text uchun joy yaratilgan
                child: Container(
                  padding: const EdgeInsets.only(left: 10),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Fixed height container',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
          //indigo rangli katta Container
          Expanded(
            flex: 16,
            child: Container(
              //ko'k va indigo orasidagi masofa
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              color: Colors.indigo,
              //indigo qalinligi
              padding: const EdgeInsets.all(10),
              child: Container(
                color: Colors.white,
                //gorizontal Containerlar qo'yish uchun
                child: Row(
                  children: [
                    //qizil Container taraf uchun
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          //text uchun
                          Expanded(
                            child: Container(
                              //bu padding textni o'ngga suradi
                              padding: const EdgeInsets.only(left: 20),
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                'Row',
                                style: TextStyle(
                                    color: Colors.indigo, fontSize: 20),
                              ),
                            ),
                          ),
                          //qizil Container uchun
                          Expanded(
                            flex: 10,
                            child: Container(
                              //indigo va qizil ramkalar orasidagi masofa
                              margin: const EdgeInsets.only(left: 7, bottom: 7),
                              color: Colors.red,
                              //qizil ramka ichidagi oq tekislik
                              child: Container(
                                color: Colors.white,
                                //qizil ramka qalinligi
                                margin: const EdgeInsets.all(9),
                                //text pozition
                                alignment: Alignment.centerLeft,
                                padding:const EdgeInsets.only(left: 20),
                                child:  const Text(
                            'Expanded Chart',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    // 2-qora Container uchun
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.black,
                        //qora va indigo orasidagi masofa
                        margin: const EdgeInsets.all(7),
                        //qora ramka qalinligi
                        padding: const EdgeInsets.all(9),
                        //qora text uchun
                        child: Container(
                          color: Colors.white,
                          //text pazitsiyasi
                          alignment: Alignment.topLeft,
                          child: const Text(
                            'Fixed width container',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
