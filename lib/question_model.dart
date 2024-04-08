class Question {
  final String questionText;
  final List<Answer> answerList;

  Question(this.questionText, this.answerList);
}
class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions(){
  List<Question> list = [];
  //Menambahkan pertanyaan dan jawaban
  list.add(Question(
    "Apa bahasa pemrograman yang umum digunakan untuk pengembangan aplikasi Android native?",
    [
      Answer("Java", true),
      Answer("Swift", false),
      Answer("Kotlin", false),
      Answer("C#", false),
    ],
  ));

  list.add(Question(
    "Apa yang bukan merupakan framework pengembangan aplikasi mobile?",
    [
      Answer("React Native", false),
      Answer("Flutter", false),
      Answer("Angular", true),
      Answer("Xamarin", false),
    ],
  ));

  list.add(Question(
    "Apa IDE yang umum digunakan untuk mengembangkan aplikasi iOS?",
    [
      Answer("Android Studio", false),
      Answer("Eclipse", false),
      Answer("Xcode", true),
      Answer("Visual Studio", false),
    ],
  ));

  list.add(Question(
    "Bahasa utama untuk pengembangan aplikasi iOS adalah?",
    [
      Answer("Java", false),
      Answer("Objective-C", true),
      Answer("Swift", false),
      Answer("C++", false),
    ],
  ));

  list.add(Question(
    "Apa singkatan dari SDK?",
    [
      Answer("Software Development Kit", true),
      Answer("System Development Kit", false),
      Answer("Source Development Kit", false),
      Answer("Software Deployment Kit", false),
    ],
  ));

  list.add(Question(
    "Siapa pencipta Flutter?",
    [
      Answer("Apple", false),
      Answer("Google", true),
      Answer("Facebook", false),
      Answer("Microsoft", false),
    ],
  ));

  list.add(Question(
    "Apa kepanjangan dari API?",
    [
      Answer("Application Programming Interface", true),
      Answer("Advanced Programming Interface", false),
      Answer("Application Program Interface", false),
      Answer("Advanced Program Interface", false),
    ],
  ));

  list.add(Question(
    "Apa yang dimaksud dengan APK?",
    [
      Answer("Android Packet Kit", false),
      Answer("Android Programming Kit", false),
      Answer("Android Package Kit", true),
      Answer("Android Program Kit", false),
    ],
  ));

  list.add(Question(
    "Manakah yang bukan platform untuk pengembangan aplikasi mobile?",
    [
      Answer("Android", false),
      Answer("iOS", false),
      Answer("Windows", false),
      Answer("Linux", true),
    ],
  ));

  list.add(Question(
    "Apa itu Stateful Widget dalam Flutter?",
    [
      Answer("Widget yang memiliki keadaan yang dapat berubah selama masa hidup aplikasi", true),
      Answer("Widget yang memiliki keadaan yang tetap selama masa hidup aplikasi", false),
      Answer("Widget yang hanya berfungsi sebagai tata letak", false),
      Answer("Widget yang berfungsi sebagai pengontrol navigasi", false),
    ],
  ));

  return list;
}