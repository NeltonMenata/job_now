import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_now/routes/routes.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() {
    return MyPage();
  }
}

class MyPage extends State<WelcomePage> {
  final login = "/login";
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: Routes.routes,
      home: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            /*
            appBar: AppBar(
              title: const Text("Meu Titulo"),
              backgroundColor: Colors.white,
              elevation: 0,
            ),*/

            body: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.white,
                          Colors.blue,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: Get.width * 0.09,
                            left: Get.width * 0.05,
                            bottom: Get.width * 0.09,
                          ),
                          child: Text(
                            "SEJA BEM VINDO A NOSSA PLATAFORMA",
                            style: TextStyle(
                                fontSize: Get.width * 0.08,
                                fontFamily: "Comfortaa",
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            //top: Get.width * 0.09,
                            left: Get.width * 0.05,
                            right: Get.width * 0.05,
                            bottom: Get.width * 0.09,
                          ),
                          child: Text(
                            "Encontre aqui o seu 1º Emprego sem sair de casa!",
                            style: TextStyle(
                                fontSize: Get.width * 0.04,
                                fontFamily: "Comfortaa",
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: Get.width,
                          height: Get.width,
                          child: Image.asset(
                            "assets/img/welcome.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 20, top: Get.width * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          width: Get.width * 0.4,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Get.toNamed(login);
                            },
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.03,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          width: Get.width * 0.4,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black,
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Registar",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
