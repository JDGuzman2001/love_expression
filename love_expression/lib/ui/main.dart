import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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

  void _launchWhatsApp(String phoneNumber) async {
  String url = "https://wa.me/$phoneNumber";

  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'No se pudo abrir $url';
  }
}
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        backgroundColor: Colors.cyan[50],
        body:
        SingleChildScrollView(
          child: Center(
            child: 
            Column(
              children: [

                 Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      Positioned(
                        left: 0,
                        top: 0,
                        bottom: 0,
                        child: IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            // Aquí puedes agregar la lógica para desplazarte hacia la izquierda
                          },
                        ),
                      ),
                      
                      SizedBox(
                      height: 300,
                      width: 300,
                      child: Image.asset('assets/images/logo.png'),
                      ),

                      Positioned(
                        right: 0,
                        top: 0,
                        bottom: 0,
                        child: IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            // Aquí puedes agregar la lógica para desplazarte hacia la izquierda
                          },
                        ),
                      ),
                    ] 
                  ),
                
                
                      
                SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                        //padding: const EdgeInsets.all(20.0),
                        padding: const EdgeInsets.only(left: 40.0),
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
                                            //color: Colors.yellow[300],
                                            color: Colors.pink[50],
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
                                            //color: Colors.yellow[600],
                                            color: Colors.pink[50],
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
                                            //color: Colors.yellow[600],
                                            color: Colors.pink[50],
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
                                            //color: Colors.yellow[600],
                                            color: Colors.pink[50],
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
                                            //color: Colors.yellow[600],
                                            color: Colors.pink[50],
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
                                            //color: Colors.yellow[600],
                                            color: Colors.pink[50],
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
                                            //color: Colors.yellow[600],
                                            color: Colors.pink[50],
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
              
                SizedBox(height: 20),
                /* ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color?>(Colors.pink[50]),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )
                    )
                  ),
                  onPressed: (){
                    String phoneNumber = "+573184994962";
                    _launchWhatsApp(phoneNumber);
                  }, 
                  child: Text(
                    'Pedir por WhatsApp',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ), */
                  ElevatedButton.icon(
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  ),
  onPressed: () {
    String phoneNumber = "+573184994962";
    _launchWhatsApp(phoneNumber);
  },
  icon: Image.asset('assets/images/whatsapp.png', width: 30,),
  label: Text(
    'Pedir por WhatsApp',
    style: TextStyle(
      color: Colors.white,
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
    ),
  ),
),
                SizedBox(height: 80),
              ],
                  
            ),
            ),
        ),
    ),
    );
  }
}
         