import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:home_school/main.dart';

void main() {
  runApp(const Sub());
}

String language = "";
String subject = "";

List<String> titles = [];

class Sub extends StatelessWidget {
  const Sub({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    language = args['Language'];
    subject = args['Subject'];

    print("LANG:" + language + "-SUB:" + subject);

    List<String> eng = [
      'Numbers & Alphabets',
      '[Intro,Tracing, Read] 1,3,5 Years ',
      '1 - Abc, 123  ( Sing)  Songs',
      '3- AE,  1-10  ( Trace) ',
      '5- AZ,  1-20  ( Read)',
      'one, two, three, four, five, six, seven, eight, nine, ten',
      'a, b, c, d, e, f, g, h, i, j, k, l, m, n,o, p, q, r, s, t, u, v, w,x, y, z'
    ];

    List<String> eng2 = [
      'Verbs & Nouns . ',
      '[Sing, Trace, WRead]',
      '',
      '[Verbs] ',
      'see',
      'know',
      'go',
      'Be',
      'Give',
      'Like',
      '',
      '[Nouns]',
      'People Names : John, Patrick ',
      'Objects.            : Table, Window',
      'Days Months    : Monday, January',
      'Colors                : Blue, Red,Black,White',
      'Transport          : Taxi, Bus, Train, Plane',
      '',
      '(The Days) ',
      'Monday, Tuesday, Wednesday, Thursday, Friday, Saturday and Sunday',
      '',
      '(The months) ',
      'January, February, March, April, May, June, July, August, September, October, November, December'
    ];

    List<String> eng3 = [
      'Vowel & Word Order',
      '[Sing, Trace, Read]',
      '',
      '*a, e, i, o, u.  (Vowel) ',
      '*object, Verb, subject. (Word Order) ',
      '',
      '*john, like, food',
      '*baby, go, to school',
    ];

    List<String> eng4 = [
      'Tenses [Sing, Write, Telling]',
      '*object, Verb, subject. (Word Order) ',
      '',
      '*baby, went, to school ',
      '*baby, go, to school',
      '*baby, will go, to school ',
      '',
      '*the cat, saw, the mouse ',
      '*the cat, see, the mouse ',
      '*the cat, will see, the mouse ',
      '',
      '-------------------------------------',
      'Daily Schedule  [5min, 10min,15min] ',
      '-------------------------------------',
      '(Before Break)',
      'Listening Session',
      'Singing Session. ',
      '',
      '(Break)',
      '',
      'Writing Session.  ',
      'Story Telling',
      '(Final Break)',
    ];

    List<String> eng5 = [
      'Here are some examples of each type of question:',
      '',
      '1. Who:',
      '- Who is the president of the United States?',
      '',
      '- Who wrote the book "To Kill a Mockingbird"?',
      '- Who is your favorite musician?',
      '',
      '2. What:',
      '- What is the capital of France?',
      '- What is your favorite food?',
      '- What time is the meeting?',
      '',
      '3. Where:',
      '- Where is the nearest hospital?',
      '- Where did you go on vacation?',
      '- Where is the library?',
      '',
      '4. When:',
      '- When is your birthday?',
      '- When does the store open?',
      '- When will the project be completed?',
      '',
      '5. Why:',
      '- Why did you choose this career?',
      '- Why is the sky blue?',
      '- Why do you like reading?',
      '',
      '6. How:',
      '- How do you get to work?',
      '- How do you make a cake?',
      '- How does the internet work?',
      '',
      '7. Which:',
      '- Which book do you prefer, "Harry Potter" or "The Lord of the Rings"?',
      '- Which city do you want to visit, Paris or Rome?',
      '- Which restaurant do you recommend?',
      '',
      '8. Whose:',
      '- Whose book is this?',
      '- Whose car is parked outside?',
      '- Whose idea was it to start the project?',
      '',
      '9. Whom:',
      '- Whom did you invite to the party?',
      '- Whom do you think will win the election?',
      '- Whom should I contact for more information'
    ];

    List<String> eng6 = [
      'Test',
      '1. What is your name?',
      'a) I am a student.',
      'b) My name is John.',
      'c) I like reading.',
      'd) I am from London.',
      'Answer: b) My name is John.',
      '',
      '2. Where are you from?',
      'a) I am a doctor.',
      'b) I like playing football.',
      'c) I am from New York.',
      'd) I am a teacher.',
      'Answer: c) I am from New York.',
      '',
      '3. What do you like doing?',
      'a) I like reading books.',
      'b) I am a student.',
      'c) I like watching TV.',
      'd) I am from Paris.',
      '',
      'Answer: a) I like reading books.',
      '4. How old are you?',
      'a) I am 25 years old.',
      'b) I am a teacher.',
      'c) I like playing tennis.',
      'd) I am from China.',
      'Answer: a) I am 25 years old.',
      '',
      '5. What is your favorite food?',
      'a) I like pizza.',
      'b) I am a doctor.',
      'c) I like playing basketball.',
      'd) I am from Japan.',
      'Answer: a) I like pizza.',
      '',
      '6. Where do you live?',
      'a) I live in London.',
      'b) I am a student.',
      'c) I like reading books.',
      'd) I am from Australia.',
      'Answer: a) I live in London.',
      '',
      '7. What do you do?',
      'a) I am a teacher.',
      'b) I like playing football.',
      'c) I am a doctor.',
      'd) I am a student.',
      'Answer: a) I am a teacher.',
      '',
      '8. How many siblings do you have?',
      'a) I have two siblings.',
      'b) I am from China.',
      'c) I like playing tennis.',
      'd) I am a doctor.',
      'Answer: a) I have two siblings.',
      '',
      '9. What is your favorite hobby?',
      'a) I like reading books.',
      'b) I am a student.',
      'c) I like playing basketball.',
      'd) I am from Japan.',
      'Answer: a) I like reading books.',
      '',
      '10. Where do you work?',
      'a) I work in a hospital.',
      'b) I am a teacher.',
      'c) I like playing football.',
      'd) I am from Australia.',
      'Answer: a) I work in a hospital.',
      '',
      'Let me know if you want me to clarify any of the answers!',
    ];

    List<String> spa = [
      'Numeros y alfabetos',
      '[Introducción, seguimiento, lectura] 1,3,5 años ',
      '1 - Abc, 123 (cantar) canciones ',
      '3- AE, 1-10 (Traza) ',
      '5- AZ, 1-20 (Leer)',
      'uno, dos, tres, cuatro, cinco, seis, siete, ocho, nueve, diez',
      'a, b, c, d, e, f, g, h, i, j, k, l, m, n,o, p, q, r, s, t, u, v, w,x, y, z'
    ];

    List<String> spa2 = [
      ' Verbos y sustantivos. ',
      '[Canta, rastrea, lee] ',
      '',
      '[Verbos] ',
      'Ver ',
      'Saber',
      'Ir ',
      'Estar',
      'Dar ',
      'Gustar',
      '',
      '[Sustantivos] ',
      'Nombres de personas. : John, Patrick ',
      'Objetos.                          : Mesa, Ventana ',
      'Días Meses.                   : Lunes, Enero ',
      'Colores.                          : Azul, Rojo, Negro, Blanco ',
      'Transporte                     : Taxi, Autobús, Tren, Avión',
      '',
      '(Dias) ',
      'Lunes, Martes, Miércoles, Jueves, Viernes, Sábado y Domingo',
      '',
      '(Meses) ',
      'Enero, Febrero, Marte, Abril, Mayo, Junio, Julio, Agosto, Septiembre, Octubre, Noviembre, Diciembre '
    ];

    List<String> spa3 = [
      ' Vocales y las palabras ',
      '[cantar, trazar, leer] ',
      '',
      '*a, e, i, o, u. (Vocal) ',
      '*objeto, verbo, sujeto. ',
      '(Orden de las palabras) ',
      '',
      '*juan, como, comida ',
      '*bebé, ve, a la escuela ',
    ];

    List<String> spa4 = [
      'Tiempos verbales ',
      '[cantar, escribir, contar] ',
      '',
      '*objeto, verbo, sujeto. ',
      '(Orden de las palabras) ',
      '',
      '*bebé, fue a la escuela ',
      '*bebé, ve a la escuela ',
      '*bebé, irá a la escuela ',
      '',
      '*el gato, la sierra, el ratón ',
      '*el gato, mira, el ratón ',
      '*el gato, verá, el ratón ',
      '',
      '------------------------------- ',
      'Horario diario [5 min, 10 min, 15 min] ',
      '------------------------------- ',
      '(Antes del descanso) ',
      'Sesión de escucha ',
      'Sesión de canto. ',
      '',
      '(Romper) ',
      'Sesión de escritura. ',
      'Contar historias ',
      '(Descanso final)',
    ];

    List<String> spa5 = [
      'A continuación se muestran algunos ejemplos de cada tipo de pregunta: ',
      '',
      '1. Quién: ',
      '- ¿Quién es el presidente de los Estados Unidos? ',
      '- ¿Quién escribió el libro "Matar a un ruiseñor"? ',
      '- ¿Quién es tu músico favorito? ',
      '',
      '2. Qué: ',
      '- ¿Cuál es la capital de Francia? ',
      '- ¿Cuál es tu comida favorita? ',
      '- ¿A qué hora es la reunión? ',
      '',
      '3. Dónde: ',
      '- ¿Dónde está el hospital más cercano? ',
      '- ¿A dónde fuiste de vacaciones? ',
      '- ¿Dónde está la biblioteca? ',
      '',
      '4. Cuando: ',
      '- ¿Cuándo es tu cumpleaños? ',
      '- ¿Cuándo abre la tienda? ',
      '- ¿Cuándo estará terminado el proyecto? ',
      '',
      '5. Por qué: ',
      '- ¿Por qué elegiste esta carrera? ',
      '- ¿Por qué el cielo es azul? ',
      '- ¿Por qué te gusta leer? ',
      '',
      '6. Cómo: ',
      '- ¿Cómo llegas al trabajo? ',
      '- ¿Cómo se hace un pastel? ',
      '- ¿Cómo funciona Internet? ',
      '',
      '',
      '7. Cuál: ',
      '- ¿Qué libro prefieres, "Harry Potter" o "El Señor de los Anillos"? ',
      '- ¿Qué ciudad quieres visitar, París o Roma? ',
      '- ¿Qué restaurante recomiendas? ',
      '',
      '8. Cuyo: - ¿De quién es este libro? ',
      '- ¿El coche de quién está estacionado afuera? ',
      '- ¿De quién fue la idea de iniciar el proyecto? ',
      '',
      '9. Quién: ',
      '- ¿A quién invitaste a la fiesta? ',
      '- ¿Quién crees que ganará las elecciones? ',
      '- ¿A quién debo contactar para obtener más información? ',
    ];

    List<String> spa6 = [
      'Prueba',
      '',
      '1. ¿Cuál es tu nombre?',
      'a) Soy estudiante.',
      'b) Me llamo Juan.',
      'c) Me gusta leer.',
      'd) Soy de Londres.',
      'Respuesta: b) Me llamo Juan.',
      '',
      '2. ¿De dónde eres?',
      'a) Soy médico.',
      'b) Me gusta jugar fútbol.',
      'c) Soy de Nueva York.',
      'd) Soy profesor.',
      'Respuesta: c) Soy de Nueva York.',
      '',
      '3. ¿Qué te gusta hacer?',
      'a) Me gusta leer libros.',
      'b) Soy estudiante.',
      'c) Me gusta ver televisión.',
      'd) Soy de París.',
      'Respuesta: a) Me gusta leer libros.',
      '',
      '4. ¿Cuántos años tienes?',
      'a) Tengo 25 años.',
      'b) Soy profesor.',
      'c) Me gusta jugar tenis.',
      'd) Soy de China.',
      'Respuesta: a) Tengo 25 años.',
      '',
      '5. ¿Cuál es tu comida favorita?',
      'a) Me gusta la pizza.',
      'b) Soy médico.',
      'c) Me gusta jugar baloncesto.',
      'd) Soy de Japón.',
      'Respuesta: a) Me gusta la pizza.',
      '',
      '6. ¿Dónde vives?',
      'a) Vivo en Londres.',
      'b) Soy estudiante.',
      'c) Me gusta leer libros.',
      'd) Soy de Australia.',
      'Respuesta: a) Vivo en Londres.',
      '',
      '7. ¿Qué haces?',
      'a) Soy profesor.',
      'b) Me gusta jugar fútbol.',
      'c) Soy médico.',
      'd) Soy estudiante.',
      'Respuesta: a) Soy profesor.',
      '',
      '8. ¿Cuántos hermanos tienes?',
      'a) Tengo dos hermanos.',
      'b) Soy de China.',
      'c) Me gusta jugar tenis.',
      'd) Soy médico.',
      'Respuesta: a) Tengo dos hermanos.',
      '',
      '9. ¿Cuál es tu pasatiempo favorito?',
      'a) Me gusta leer libros.',
      'b) Soy estudiante.',
      'c) Me gusta jugar baloncesto.',
      'd) Soy de Japón.',
      'Respuesta: a) Me gusta leer libros.',
      '',
      '10. ¿Dónde trabajas?',
      'a) Trabajo en un hospital.',
      'b) Soy profesor.',
      'c) Me gusta jugar fútbol.',
      'd) Soy de Australia.',
      'Respuesta: a) Trabajo en un hospital.',
      '',
      '¡Espero que te sea útil!',
    ];

    List<String> fre = [
      'Chiffres et alphabets',
      '[Intro, traçage, lecture] 1,3,5 ans ',
      '1 - Abc, 123 (chanter) chansons',
      '3-AE, 1-10 (Dessiner) ',
      '5-AZ, 1-20 (Lire)',
      'un, deux, trois, quatre, cinq, six, sept, huit, neuf, dix',
      'a, b, c, d, e, f, g, h, i, j, k, l, m, n,o, p, q, r, s, t, u, v, w,x, y, z'
    ];

    List<String> fre2 = [
      'Verbes et noms ',
      '[Chanter, Tracer, WRead]',
      '',
      '[Verbes] ',
      'Voir',
      'sais ',
      'Va',
      'Être',
      'Être',
      'Comme',
      '',
      '[Noms] ',
      'Noms de personnes   : John, Patrick Objets.                          : Table, Fenêtre ',
      'Jours Mois                   : Lundi, Janvier ',
      'Couleurs                       : Bleu, Rouge, Noir, Blanc ',
      'Transports                    : Taxi, Bus, Train, Avion',
      '',
      '(Jours) ',
      'Lundi, mardi, mercredi, jeudi, vendredi, samedi et dimanche',
      '',
      '(Mois) ',
      'Janvier, Février, Mars, Avril, Mai, Juin, Juillet, Août, Septembre, Octobre, Novembre, Décembre'
    ];

    List<String> fre3 = [
      ' voyelles et Ordre des mots',
      '[chanter, tracer, lire] ',
      '',
      '*a, e, je, o, u. (Voyelle) ',
      '*objet, Verbe, sujet. (Ordre des mots)',
      '',
      '*john, comme, la nourriture ',
      '*bébé, va, à l' 'école',
    ];

    List<String> fre4 = [
      'Temps [chanter, écrire, raconter]',
      '*objet, Verbe, sujet. (Ordre des mots)',
      '',
      '*bébé, je suis allé à l' 'école ',
      '*bébé, va à l' 'école ',
      '*bébé, j' 'irai à l' 'école ',
      '',
      '*le chat, la scie, la souris ',
      '*le chat, tu vois, la souris ',
      '*le chat, verra, la souris ',
      '',
      '--------------------------------------',
      'Programme quotidien [5min, 10min,15min] ',
      '--------------------------------------',
      '(Avant la pause) ',
      'Séance d' 'écoute ',
      'Séance de chant. ',
      '(Casser) ',
      '',
      'Séance d' 'écriture. ',
      'Raconter une histoire',
      '(Pause finale)',
    ];

    List<String> fre5 = [
      ' Voici la traduction du test de 10 questions en anglais de base vers le français :',
      '',
      '1. Comment t\'appelles-tu ?',
      'a) Je suis étudiant.',
      'b) Je m\'appelle Jean.',
      'c) J\'aime lire.',
      'd) Je suis de Londres.',
      'Réponse : b) Je m\'appelle Jean.',
      '',
      '2. D\'où es-tu ?',
      'a) Je suis médecin.',
      'b) J\'aime jouer au football.',
      'c) Je suis de New York.',
      'd) Je suis professeur.',
      'Réponse : c) Je suis de New York.',
      '',
      '3. Qu\'est-ce que tu aimes faire ?',
      'a) J\'aime lire des livres.',
      'b) Je suis étudiant.',
      'c) J\'aime regarder la télévision.',
      'd) Je suis de Paris.',
      'Réponse : a) J\'aime lire des livres.',
      '',
      '4. Quel âge as-tu ?',
      'a) J\'ai 25 ans.',
      'b) Je suis professeur.',
      'c) J\'aime jouer au tennis.',
      'd) Je suis de Chine.',
      'Réponse : a) J\'ai 25 ans.',
      '',
      '5. Quel est ton plat préféré ?',
      'a) J\'aime la pizza.',
      'b) Je suis médecin.',
      'c) J\'aime jouer au basket-ball.',
      'd) Je suis du Japon.',
      'Réponse : a) J\'aime la pizza.',
      '',
      '6. Où habites-tu ?',
      'a) J\'habite à Londres.',
      'b) Je suis étudiant.',
      'c) J\'aime lire des livres.',
      'd) Je suis d\'Australie.',
      'Réponse : a) J\'habite à Londres.',
      '',
      '7. Qu\'est-ce que tu fais ?',
      'a) Je suis professeur.',
      'b) J\'aime jouer au football.',
      'c) Je suis médecin.',
      'd) Je suis étudiant.',
      'Réponse : a) Je suis professeur.',
      '',
      '8. Combien de frères et sœurs as-tu ?',
      'a) J\'ai deux frères et sœurs.',
      'b) Je suis de Chine.',
      'c) J\'aime jouer au tennis.',
      'd) Je suis médecin.',
      'Réponse : a) J\'ai deux frères et sœurs.',
      '',
      '9. Quel est ton passe-temps préféré ?',
      'a) J\'aime lire des livres.',
      'b) Je suis étudiant.',
      'c) J\'aime jouer au basket-ball.',
      'd) Je suis du Japon.',
      'Réponse : a) J\'aime lire des livres.',
      '',
      '10. Où travailles-tu ?',
      'a) Je travaille dans un hôpital.',
      'b) Je suis professeur.',
      'c) J\'aime jouer au football.',
      'd) Je suis d\'Australie.',
      'Réponse : a) Je travaille dans un hôpital.',
      '',
      'J\'espère que cela vous sera utile !',
    ];

    List<String> fre6 = [
      'Voici quelques exemples de chaque type de question : ',
      '',
      '1. Qui : ',
      '- Qui est le président des États-Unis ? ',
      '- Qui a écrit le livre « To Kill a Mockingbird » ? ',
      '- Quel est ton musicien préféré ? ',
      '',
      '2. Quoi : - Quelle est la capitale de la France ? ',
      '- Quel est ton plat préféré ? ',
      '- À quelle heure est la réunion ?',
      '',
      '3. Où : ',
      '- Où est l\'hôpital le plus proche ? ',
      '- Où es-tu allé en vacances ? ',
      '- Où est la bibliothèque ? ',
      '',
      '4. Quand : ',
      '- C\'est quand votre anniversaire? ',
      '- Quand ouvre le magasin ? ',
      '- Quand le projet sera-t-il terminé ? ',
      '',
      '5. Pourquoi : ',
      '- Pourquoi as-tu choisi cette carrière ? ',
      '- Pourquoi le ciel est-il bleu ? ',
      '- Pourquoi aimes-tu lire ? ',
      '',
      '6. Comment : - Comment arrivez-vous au travail ? ',
      '- Comment fait-on un gâteau ? ',
      '- Comment fonctionne Internet ? ',
      '',
      '7. Lequel : ',
      '- Quel livre préférez-vous, « Harry Potter » ou « Le Seigneur des Anneaux » ? ',
      '- Quelle ville souhaites',
      '-tu visiter, Paris ou Rome ? ',
      '- Quel restaurant recommandez-vous ? ',
      '',
      '8. Dont : - A qui est ce livre ? ',
      '- Quelle voiture est garée dehors ?',
      '- Qui a eu l\'idée de démarrer le projet ? ',
      '',
      '9. Qui : - Qui as-tu invité à la fête ? ',
      '- Selon vous, qui remportera les élections ? ',
      '- À qui dois',
      '-je m\'adresser pour plus d\'informations ? ',
      '',
      'Faites-moi savoir si vous souhaitez plus d\'exemples !',
    ];

    List<String> zul = [
      'Izinombolo Nezinhlamvu',
      '[Isingeniso,Ukulandelela, Funda] Iminyaka eyi-1,3,5 ',
      '1 - Abc, 123 ( Hlabelelani) Izingoma',
      '3- AE, 1-10 ( Dweba) ',
      '5- AZ, 1-20 ( Funda)',
      'eyodwa, ezimbili, ezintathu, ezine, ezinhlanu, eziyisithupha, eziyisikhombisa, eziyisishiyagalombili, eziyisishiyagalolunye, eziyishumi',
      '1.2 a, b, c, d, e, f, g, h, i, j, k, l, m, n,o, p, q, r, s, t, u, v, w,x, y, z'
    ];

    List<String> zul2 = [
      'Izenzo namabizo. ',
      '[Hlabelela, Dweba, WRead]',
      '',
      '[Izenzo] ',
      'Ukubona',
      'Ukwazi',
      'Kuhamba',
      'Ukuba',
      'Ukunika',
      'Ukuthanda',
      '',
      '[Amabizo] ',
      'Amagama Abantu. : John, Patrick ',
      'Izinto.                        : Itafula, Iwindi ',
      'Izinsuku Izinyanga  : UMsombuluko, Masingana ',
      'Imibala.                     : Luhlaza, Bomvu, Mnyama, Mhlophe',
      'Ezokuthutha.           : Itekisi, Ibhasi, Isitimela, Indiza',
      '',
      '(Izinsuku) ',
      'UMsombuluko, uLwesibili, uLwesithathu, uLwesine, uLwesihlanu, uMgqibelo, iSonto',
      '',
      '(Izinyanga) ',
      'Umansingana, Unhlolanja, Mbasa, uNdasa, uNhlaba, uNhlangulana, uNtulikazi, uNcwaba, uMandulo, uMfumfu, uLwezi, uZibandlela ',
    ];

    List<String> zul3 = [
      'Unkamisa Nokuhleleka Kwegama [Hlabelela, Dweba, Funda]',
      '',
      '*a,e,i,o,u. (Unkamisa) ',
      '*into, Isenzo, isihloko. (I Order)',
      '',
      '*ujohn, uthanda, ukudla ',
      '*ingane, iya, eskoleni ',
    ];

    List<String> zul4 = [
      'Izikhathi [Hlabelela, Bhala, Tshela]',
      '',
      '*into, Isenzo, isihloko. (I- Order)',
      '',
      '*ingane, ihambile, iya esikoleni ',
      '*ingane, iyahamba, iya esikoleni ',
      '*Ingane, izohamba, iye esikoleni ',
      '',
      '*ikati, labona, igundane ',
      '*ikati, libona, igundane ',
      '*ikati, lizobona, igundane ',
      '',
      '------------------------------------ ',
      'Isheduli Yansuku zonke [5min, 10min,15min] ',
      '------------------------------------ ',
      '(Ngaphambi Kwekhefu) ',
      'Iseshini Yokulalela(indaba yegundane) ',
      'Iseshini Yokucula. (Alph & Noz song) ',
      '(Ikhefu) ',
      '',
      'Iseshini Yokubhala. (idundane lidla umbila) ',
      'Ukuxoxa Indaba (phinda indaba) ',
      '(Ikhefu lokugcina)',
    ];

    List<String> zul5 = [
      'Nansi ukuhunyushwa kokuhlolwa kwemibuzo eyi-10 ngesiNgisi esiyisisekelo kuya esiZulwini:',
      '',
      '1. Ungubani igama lakho?',
      'a) Ngeyimfundi.',
      'b) Igama lami nguJohn.',
      'c) Ngithanda ukufunda.',
      'd) Ngiphuma eLondon.',
      'Jibu: b) Igama lami nguJohn.',
      '',
      '2. Uphuma kuphi?',
      'a) Ngeyimokudla.',
      'b) Ngithanda ukudlala ibhola.',
      'c) Ngiphuma eNew York.',
      'd) Ngeyimprofesa.',
      'Jibu: c) Ngiphuma eNew York.',
      '',
      '3. Uthanda ukuthini?',
      'a) Ngithanda ukufunda incwadi.',
      'b) Ngiyimfundi.',
      'c) Ngithanda ukudlala ibhola.',
      'd) Ngiphuma eParis.',
      'Jibu: a) Ngithanda ukufunda incwadi.',
      '',
      '4. Uneminyaka emingaki?',
      'a) Ngineyiminyaka engama-25.',
      'b) Ngiyimprofesa.',
      'c) Ngithanda ukudlala itenis.',
      'd) Ngiphuma eChina.',
      'Jibu: a) Ngineyiminyaka engama-25.',
      '',
      '5. Uphendula kuphi?',
      'a) Ngiphendula eLondon.',
      'b) Ngiyimfundi.',
      'c) Ngithanda ukufunda incwadi.',
      'd) Ngiphuma eAustralia.',
      'Jibu: a) Ngiphendula eLondon.',
      '',
      '6. Uthanda ukudlala nini?',
      'a) Ngithanda ukudlala ibhola.',
      'b) Ngiyimfundi.',
      'c) Ngithanda ukudlala itenis.',
      'd) Ngiphuma eJapan.',
      'Jibu: a) Ngithanda ukudlala ibhola.',
      '',
      '7. Uphuma kuphi?',
      'a) Ngiphuma eChina.',
      'b) Ngiyimokudla.',
      'c) Ngithanda ukudlala itenis.',
      'd) Ngiyimprofesa.',
      'Jibu: a) Ngiphuma eChina.',
      '',
      '8. Unabantu abangaki ophuma nabo?',
      'a) Nginebantwana ababili.',
      'b) Ngiphuma eChina.',
      'c) Ngithanda ukudlala itenis.',
      'd) Ngiyimokudla.',
      'Jibu: a) Nginebantwana ababili',
      '',
      '9. Uphendula kuphi?',
      'a) Ngiphendula esibhedlela.',
      'b) Ngiyimprofesa.',
      'c) Ngithanda ukudlala ibhola.',
      'd) Ngiphuma eAustralia.',
      'Jibu: a) Ngiphendula esibhedlela.',
      '',
      'Ngiyabonga!',
    ];

    List<String> zul6 = [
      'Nazi izibonelo zohlobo ngalunye lombuzo: ',
      '',
      '1. Ubani: ',
      '- Ubani umongameli wase-United States? ',
      '- Ubani owabhala incwadi ethi "To Kill a Mockingbird"? ',
      '- Ubani umculi omthandayo? ',
      '',
      '2. Yini: ',
      '- Iyini inhloko-dolobha yaseFrance? ',
      '- Yikuphi ukudla okuthandayo? ',
      '- Uyini isikhathi somhlangano? ',
      '',
      '3. Kuphi: ',
      '- Sikuphi isibhedlela esiseduze? ',
      '- Uya kuphi eholidini? ',
      '- Uphi umtapo wolwazi? ',
      '',
      '4. Nini: ',
      '- Lunini usuku lwakho lokuzalwa? ',
      '- Sivula nini isitolo? ',
      '- Izoqedwa nini iphrojekthi? ',
      '',
      '5. Kungani: ',
      '- Kungani ukhethe lo msebenzi? ',
      '- Kungani isibhakabhaka siluhlaza? ',
      '- Kungani uthanda ukufunda? ',
      '',
      '6. Kanjani: ',
      '- Ufika kanjani emsebenzini? ',
      '- Ulenza kanjani ikhekhe? ',
      '- Isebenza kanjani i-inthanethi? ',
      '',
      '7. Yini: ',
      '- Iyiphi incwadi oyithandayo, "Harry Potter" noma "The Lord of the Rings"? ',
      '- Yiliphi idolobha ofuna ukulivakashela, iParis noma iRoma? ',
      '- Iyiphi indawo yokudlela oyincomayo? ',
      '',
      '8. Okabani: ',
      '- Ekabani le ncwadi? ',
      '- Ekabani imoto epakwe ngaphandle? ',
      '- Bekuwumbono kabani ukuqala iphrojekthi? ',
      '',
      '9. Ubani: ',
      '- Ubani ommemele ephathini? ',
      '- Ucabanga ukuthi ubani ozowina ukhetho? ',
      '- Ubani okufanele ngixhumane naye ukuze ngithole ulwazi olwengeziwe? ',
      '',
      'Ngazise uma ungathanda izibonelo ezengeziwe!',
    ];

    if (language == "ENGLISH") {
      if (subject == "one") {
        titles = eng;
      } else if (subject == "two") {
        titles = eng2;
      } else if (subject == "three") {
        titles = eng3;
      } else if (subject == "four") {
        titles = eng4;
      } else if (subject == "five") {
        titles = eng5;
      } else if (subject == "six") {
        titles = eng6;
      }
    } else if (language == "SPANISH") {
      if (subject == "one") {
        titles = spa;
      } else if (subject == "two") {
        titles = spa2;
      } else if (subject == "three") {
        titles = spa3;
      } else if (subject == "four") {
        titles = spa4;
      } else if (subject == "five") {
        titles = spa5;
      } else if (subject == "six") {
        titles = spa6;
      }
    } else if (language == "FRENCH") {
      if (subject == "one") {
        titles = fre;
      } else if (subject == "two") {
        titles = fre2;
      } else if (subject == "three") {
        titles = fre3;
      } else if (subject == "four") {
        titles = fre4;
      } else if (subject == "five") {
        titles = fre5;
      } else if (subject == "six") {
        titles = fre6;
      }
    } else if (language == "ZULU") {
      if (subject == "one") {
        titles = zul;
      } else if (subject == "two") {
        titles = zul2;
      } else if (subject == "three") {
        titles = zul3;
      } else if (subject == "four") {
        titles = zul4;
      } else if (subject == "five") {
        titles = zul5;
      } else if (subject == "six") {
        titles = zul6;
      }
    }

    return MaterialApp(
      title: 'HOME SCHOOL',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'SK'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
            // TRY THIS: Try changing the color here to a specific color (to
            // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
            // change color while the other colors stay the same.
            backgroundColor: Colors.black,
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Row(
              children: [
                text_(context, "HOME SCHOOL"),
                Spacer(),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MyApp()),
                      );
                    },
                    child: Icon(Icons.menu, color: Colors.white))
              ],
            )),
        body: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/back.png"),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(children: [
              Spacer(),
              cont(
                  context,
                  titles[0].length >= 24
                      ? titles[0].toString().substring(0, 24)
                      : titles[0].toString()),
              Text(""),
              Container(
                  width: 300, // Set the width of the container
                  height: 300, // Set the height of the container
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromARGB(255, 117, 115, 115)),
                    color: Colors.black, // Set the background color
                    borderRadius: BorderRadius.circular(
                        20.0), // Set the border radius to make corners rounded
                  ),
                  child: ListView.builder(
                      itemCount: titles.length,
                      itemBuilder: (context, index) {
                        return row_(context, titles[index]);
                      })),
              // Text(""),
              // cont1(context),
              Spacer(),
              footer(context)
            ])) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

Widget cont1(context) {
  return Container(
      width: 300, // Set the width of the container
      height: 300, // Set the height of the container
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 117, 115, 115)),
        color: Colors.black, // Set the background color
        borderRadius: BorderRadius.circular(
            20.0), // Set the border radius to make corners rounded
      ),
      child: Column(
        children: [
          Text(" "),
          row_(context, titles[1]),
          Divider(),
          row_(context, titles[2]),
          row_(context, titles[3]),
          row_(context, titles[4]),
          Text(""),
          row_(context, titles[5]),
          row_(context, titles[6])
        ],
      ));
}

Widget row_(context, text_) {
  return Row(
    children: [
      Text(""),
      Icon(
        Icons.chevron_right,
        color: Colors.white,
      ),
      Expanded(
        child: Text(
          text_,
          softWrap: true,
          overflow: TextOverflow.visible,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 11.0, color: Colors.white),
        ),
      )
    ],
  );
}

Widget cont(context, text_) {
  return Container(
      width: 300, // Set the width of the container
      height: 80, // Set the height of the container
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 117, 115, 115)),
        color: Colors.black, // Set the background color
        borderRadius: BorderRadius.circular(
            20.0), // Set the border radius to make corners rounded
      ),
      child: Row(
        children: [
          Text(" "),
          Row(
            children: [
              Icon(
                Icons.apps,
                color: Colors.white,
              ),
              Text(
                '   $text_',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 19.0, color: Colors.white),
              ),
            ],
          )
        ],
      ));
}

Widget text_(context, text_) {
  return Text(
    ' $text_',
    textAlign: TextAlign.left,
    style: TextStyle(fontSize: 23.0, color: Colors.white),
  );
}

Widget footer(context) {
  return Container(
      width: 500, // Set the width of the container
      height: 30, // Set the height of the container
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 117, 115, 115)),
        color: Colors.black, // Set the background color
        borderRadius: BorderRadius.circular(
            0), // Set the border radius to make corners rounded
      ),
      child: Row(children: [
        Spacer(),
        Icon(Icons.help_outline, color: Colors.white),
        Spacer()
      ]));
}
