import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Love Expression',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(title: 'Love Expression'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        backgroundColor: Colors.white,
        body:
        Center(
          child: 
          
          Column(
            
            children: [
              Text('LOVE EXPRESSION'),
              SizedBox(height: 200),
              SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          width: 200,
                          height: 400,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        width: 200,
                                        height: 180,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow[600],
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: 
                                        Image.asset('assets/images/Arreglo_1-removebg-preview.png'),
                                      ),
                                       SizedBox(height: 5),
                                       Text('(16 rosas)',
                                       style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.0,fontWeight: FontWeight.bold,
                                      ),
                                      ),
                                    ] 
                                    ),
                            SizedBox(height: 20),
                            Text('\$90.000 COP',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                            ), 
                            SizedBox(height: 6),
                            Text('(Precio sujeto a temporada)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(height: 30),
                            Text('El arreglo viene con una tarjeta personalizada para incluir un mensaje.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10),
                            Text('(El domicilio no viene incluido)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),),
          
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          width: 200,
                          height: 400,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        width: 200,
                                        height: 180,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow[600],
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: 
                                        Image.asset('assets/images/Arreglo_2-removebg-preview.png'),
                                      ),
                                       SizedBox(height: 5),
                                       Text('(16 rosas)',
                                       style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.0,fontWeight: FontWeight.bold,
                                      ),
                                      ),
                                    ] 
                                    ),
                            SizedBox(height: 20),
                            Text('\$90.000 COP',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                            ), 
                            SizedBox(height: 6),
                            Text('(Precio sujeto a temporada)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(height: 30),
                            Text('El arreglo viene con una tarjeta personalizada para incluir un mensaje.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10),
                            Text('(El domicilio no viene incluido)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),),
          
          
                                ],
                              )
                            ],
                          ),
                          
                        ),
                        SizedBox(width: 20),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          width: 200,
                          height: 400,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        width: 200,
                                        height: 180,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow[600],
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: 
                                        Image.asset('assets/images/Arreglo_3-removebg-preview.png'),
                                      ),
                                       SizedBox(height: 5),
                                       Text('(20 rosas)',
                                       style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.0,fontWeight: FontWeight.bold,
                                      ),
                                      ),
                                    ] 
                                    ),
                            SizedBox(height: 20),
                            Text('\$75.000 COP',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                            ), 
                            SizedBox(height: 6),
                            Text('(Precio sujeto a temporada)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(height: 30),
                            Text('El arreglo viene con una tarjeta personalizada para incluir un mensaje.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10),
                            Text('(El domicilio no viene incluido)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),),
                            
          
                                ],
                              )
                            ],
                          ),
                          
                        ),
                        SizedBox(width: 20),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          width: 200,
                          height: 400,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        width: 200,
                                        height: 180,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow[600],
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: 
                                        Image.asset('assets/images/Arreglo_4-removebg-preview.png'),
                                      ),
                                       SizedBox(height: 5),
                                       Text('(18 rosas)',
                                       style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.0,fontWeight: FontWeight.bold,
                                      ),
                                      ),
                                    ] 
                                    ),
                            SizedBox(height: 20),
                            Text('\$85.000 COP',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                            ), 
                            SizedBox(height: 6),
                            Text('(Precio sujeto a temporada)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(height: 30),
                            Text('El arreglo viene con una tarjeta personalizada para incluir un mensaje.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10),
                            Text('(El domicilio no viene incluido)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),),
                            
          
                                ],
                              )
                            ],
                          ),
                          
                        ),
                        SizedBox(width: 20),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          width: 200,
                          height: 400,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        width: 200,
                                        height: 180,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow[600],
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: 
                                        Image.asset('assets/images/Arreglo_5-removebg-preview.png'),
                                      ),
                                       SizedBox(height: 5),
                                       Text('(6 rosas y 5 girasoles)',
                                       style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.0,fontWeight: FontWeight.bold,
                                      ),
                                      ),
                                    ] 
                                    ),
                            SizedBox(height: 20),
                            Text('\$55.000 COP',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                            ), 
                            SizedBox(height: 6),
                            Text('(Precio sujeto a temporada)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(height: 30),
                            Text('El arreglo viene con una tarjeta personalizada para incluir un mensaje.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10),
                            Text('(El domicilio no viene incluido)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),),
                            
          
                                ],
                              )
                            ],
                          ),
                          
                        ),
                        SizedBox(width: 20),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          width: 200,
                          height: 400,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        width: 200,
                                        height: 180,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow[600],
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: 
                                        Image.asset('assets/images/Arreglo_6-removebg-preview.png'),
                                      ),
                                       SizedBox(height: 5),
                                       Text('(18 rosas)',
                                       style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.0,fontWeight: FontWeight.bold,
                                      ),
                                      ),
                                    ] 
                                    ),
                            SizedBox(height: 20),
                            Text('\$85.000 COP',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                            ), 
                            SizedBox(height: 6),
                            Text('(Precio sujeto a temporada)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(height: 30),
                            Text('El arreglo viene con una tarjeta personalizada para incluir un mensaje.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10),
                            Text('(El domicilio no viene incluido)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),),
                            
          
                                ],
                              )
                            ],
                          ),
                          
                        ),
                        SizedBox(width: 20),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          width: 200,
                          height: 400,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        width: 200,
                                        height: 180,
                                        decoration: BoxDecoration(
                                          color: Colors.yellow[600],
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: 
                                        Image.asset('assets/images/Arreglo_7-removebg-preview.png'),
                                      ),
                                       SizedBox(height: 5),
                                       Text('(12 rosas)',
                                       style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.0,fontWeight: FontWeight.bold,
                                      ),
                                      ),
                                    ] 
                                    ),
                            SizedBox(height: 20),
                            Text('\$65.000 COP',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                            ), 
                            SizedBox(height: 6),
                            Text('(Precio sujeto a temporada)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(height: 30),
                            Text('El arreglo viene con una tarjeta personalizada para incluir un mensaje.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10),
                            Text('(El domicilio no viene incluido)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),),
                            
          
                                ],
                              )
                            ],
                          ),
                          
                        ),
                      ],
                    )
                    ),
              ),
            ],
                
          ),
    ),
    ),
    );
  }
}
         