import 'package:flutter/material.dart';
import 'package:flutter_application_5/items.dart';
import 'package:flutter_application_5/newPage.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});


@override
Widget build(BuildContext context){
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Africa',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      useMaterial3: true,
      scaffoldBackgroundColor: const Color.fromARGB(154, 111, 111, 111)
    ),

    home: const HomePage()
    );
  }
}



class HomePage extends StatelessWidget{
  const HomePage({super.key});

@override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: const Text('Страны Африки', style: TextStyle(color: Color.fromARGB(247, 235, 235, 235))),
      backgroundColor: const Color.fromARGB(255, 29, 29, 29),
    ),
    body: Padding(
      padding: const EdgeInsets.all(15),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 500,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 30
        ),
        itemCount: countryList.length,
        itemBuilder: (BuildContext ctx, index) {
          return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 53, 53, 53),
              borderRadius: BorderRadius.circular(30)
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [InkWell(
                child: Image.asset(countryList[index].flag, width: 150),
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: ((context) => const NewPage())));}),
            const SizedBox(width: 60),
            Text(countryList[index].name, style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold, fontSize: 40)),
            const SizedBox(height: 5,),
            const Text('Площадь: ', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold, fontSize: 20)),
            Text(countryList[index].size.toString(), style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold, fontSize: 25)),
            const SizedBox(height: 5,),
            const Text('Население: ', style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold, fontSize: 20)),
            Text(countryList[index].population.toString(), style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold, fontSize: 15))
              ]
            ),
          );
        }
      ),
    )
  );
}
}