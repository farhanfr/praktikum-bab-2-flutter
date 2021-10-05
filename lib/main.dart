import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("MyApp"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: _screenWidth * (2 / 100)),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text("BERITA TERBARU"),
                  Text("PERTANDINGAN HARI INI")
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple, width: 3)),
              child: Column(
                children: [
                  Image.asset(
                    "images/img_1.jpg",
                    width: double.infinity,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                      child: Text("Costa Mendekat Ke Palmerias",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ))),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.purple[300],
                    padding: EdgeInsets.symmetric(
                        horizontal: _screenWidth * (2 / 100), vertical: 20),
                    child: const Text("Transfer"),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                separatorBuilder: (ctx,idx){
                  return const SizedBox(height: 15,);
                },
                itemBuilder: (ctx, idx) {
                  return Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 3)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 1, color: Colors.grey))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Image.asset(
                                  "images/img_2.jpg",
                                  width: double.infinity,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                        "Pique bilang wasit Untungkan madrid, koeman tepok jidat")
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Barcelona Feb 13, 2021"),
                        )
                      ],
                    ),
                  );
                }),
                const SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
