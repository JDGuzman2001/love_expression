import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:love_expression/utils/backend.dart';
import 'package:intl/intl.dart';

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
  //Future<List<dynamic>>? flowersInformation;

  @override
  void initState() {
    super.initState();
    //flowersInformation = getflowersinformation();
    getflowersinformation().then((data) {
      setState(() {
        flowerData = data;
      });
    });
  }

  void _launchWhatsApp(String phoneNumber) async {
    String url = "https://wa.me/$phoneNumber";

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo abrir $url';
    }
  }

  int currentPage = 0;
  List<dynamic> flowerData = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        backgroundColor: Colors.cyan[50],
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 300,
                width: 300,
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (currentPage > 0) {
                          currentPage--;
                        }
                      });
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                  SizedBox(
                    //width: 800,
                    width: MediaQuery.of(context).size.width - 100,
                    height: 480,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: flowerData.length,
                      separatorBuilder: (context, index) => SizedBox(width: 20),
                      itemBuilder: (context, index) {
                        int numberOfRoses = flowerData[index]['No_rosas'];
                        int numberOfGirasoles = flowerData[index]['No_girasoles'];
                        int price = flowerData[index]['Price'];
                        String formattedPrice = NumberFormat('#,##0').format(price);

                        return Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                            ),
                            width: 300,
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.pink[50],
                                    ),
                                    width: 250, // Adjust the size of the flower image
                                    height: 250,
                                    child:
                                    Image.network(
                                      flowerData[index]['Imagen'],
                                    ),
                                ),
                                if (numberOfRoses > 0) ...[
                                  SizedBox(height: 5),
                                  Text(
                                    '($numberOfRoses rosas)',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                                if (numberOfGirasoles > 0) ...[
                                  SizedBox(height: 5),
                                  Text(
                                    '($numberOfGirasoles girasoles)',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],

                                SizedBox(height: 20),
                                Text(
                                  '\$$formattedPrice',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 6),
                                Text(
                                  '(Precio sujeto a temporada)',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 30),
                                Text(
                                  'El arreglo viene con una tarjeta personalizada para incluir un mensaje.',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '(El domicilio no viene incluido)',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      controller: ScrollController(initialScrollOffset: currentPage * 320),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (currentPage < flowerData.length - 1) {
                          currentPage++;
                        }
                      });
                    },
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
              /* FutureBuilder<List<dynamic>>(
                future: flowersInformation,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return SizedBox(
                      height: 480, // Set a larger height for the container
                      child: 
                            ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: snapshot.data!.length,
                              separatorBuilder: (context, index) => SizedBox(width: 0), // Add space between cards
                              itemBuilder: (context, index) {
                                int numberOfRoses = snapshot.data![index]['No_rosas'];
                                int numberOfGirasoles = snapshot.data![index]['No_girasoles'];
                                int price = snapshot.data![index]['Price'];
                                String formattedPrice = NumberFormat('#,##0').format(price);
                                return Padding(
                                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black,
                                      ),
                                    width: 300, // Set a fixed width for the flower card
                                    //color: Colors.black,
                                    child: Column(
                                        children: [
                                          
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: Colors.pink[50],
                                              ),
                                              width: 250, // Adjust the size of the flower image
                                              height: 250,
                                              child:
                                              Image.network(
                                                  snapshot.data![index]['Imagen'],
                                                ),
                                
                                            ),
                                            
                                          SizedBox(height: 5),
                                          if (numberOfRoses > 0)
                                          Text(
                                            '($numberOfRoses rosas)',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          if (numberOfGirasoles > 0)
                                          Text(
                                            '($numberOfGirasoles girasoles)',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        
                                          SizedBox(height: 20),
                                          Text(
                                            '\$$formattedPrice COP',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(height: 6),
                                          Text(
                                            '(Precio sujeto a temporada)',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(height: 30),
                                          Text(
                                            'El arreglo viene con una tarjeta personalizada para incluir un mensaje.',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            '(El domicilio no viene incluido)',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                );
                                },
                              ),
                            );
                          } else if (snapshot.hasError) {
                            return Text("${snapshot.error}");
                          }
                          return const CircularProgressIndicator();
                        },
              ), */

              SizedBox(height: 40),
              Container(
                height: 50,
                width: 300,
                child: ElevatedButton.icon(
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
                  icon: Image.asset(
                    'assets/images/whatsapp.png',
                    width: 30,
                  ),
                  label: Text(
                    'Pedir por WhatsApp',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}

