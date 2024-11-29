import 'package:curso_flutterweb/curso_package/views/landing_view.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://zimaquloazgxlsrkansg.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InppbWFxdWxvYXpneGxzcmthbnNnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzIwNzk5OTEsImV4cCI6MjA0NzY1NTk5MX0.yrX23ncF2_Eyi4Uc31Xum7CaAR6UWsTCynexXUeFwQ4',
  );

  // final instance = Supabase.instance.client;

  // Object response;

  // // var response = await instance
  // //     .from('notes') // Cambia esto por el nombre real de tu tabla
  // //     .insert({
  // //   'category': 1, // Reemplaza con un valor válido
  // //   'title': 'Mi ola', // Título del contenido
  // //   'content': 'Este es el contenido de la nota', // Cuerpo del contenido
  // //   'status': 0,
  // // });

  // response = await instance
  //     .from('notes') // Nombre de la tabla
  //     .select('*'); // Seleccionar todas las columnas

  // print('Datos: $response');

  // print('---------------------------------------------------------');

  // //obtener por id

  // response = await instance
  //     .from('notes') // Nombre de la tabla
  //     .select('*') // Seleccionar todas las columnas
  //     .eq('id', 1) // Filtrar por ID
  //     .single(); // Obtener solo un registro

  // print('Datos por ID: $response');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.anaheimTextTheme(),
      ),
      home: const LandingView(),
    );
  }
}
