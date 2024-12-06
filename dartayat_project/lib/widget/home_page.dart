import 'package:dartayat_project/views/student_management.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String userName = "";
  String userCode = "";

  void showInputDialog(
      BuildContext context, String title, Function(String) onSave) {
    TextEditingController controller = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: TextField(
          controller: controller,
          decoration: InputDecoration(hintText: "اكتب هنا..."),
        ),
        actions: [
          TextButton(
            onPressed: () {
              onSave(controller.text);
              Navigator.pop(context);
            },
            child: Text("حفظ"),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("إلغاء"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Color(0xffAE9453),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image.asset(
                'asset/image.png',
                height: 100,
                width: 100,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 200),
            child: Text('تسجيل الدخول',
                style: TextStyle(color: Colors.black, fontSize: 22)),
          ),
          SizedBox(height: 100),
          ElevatedButton(
            onPressed: () {
              showInputDialog(
                context,
                "أدخل اسم المستخدم",
                (text) {
                  setState(() {
                    userName = text;
                  });
                },
              );
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.symmetric(horizontal: 120, vertical: 20),
              shadowColor: Colors.black.withOpacity(0.3),
              elevation: 5,
            ),
            child: Text(userName.isEmpty
                ? "أدخل اسم المستخدم"
                : "اسم المستخدم: $userName"),
          ),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              showInputDialog(
                context,
                "أدخل كود التعريف",
                (text) {
                  setState(() {
                    userCode = text;
                  });
                },
              );
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.symmetric(horizontal: 120, vertical: 20),
              shadowColor: Colors.black.withOpacity(0.3),
              elevation: 5,
            ),
            child: Text(userCode.isEmpty
                ? "أدخل كود التعريف"
                : "كود التعريف: $userCode"),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [SizedBox(width: 8),
              TextButton(
                onPressed: () {
                  print("تم الضغط على التواصل مع الإدارة");
                },
                child: Text(
                  "تواصل مع الإدارة",
                  style: TextStyle(
                    color: Color(0xffAE9453),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              
              TextButton(
                onPressed: () {
                  print("تم الضغط على التواصل مع الإدارة");
                },
                child: Text(
                  'هل تواجه مشكلة؟',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: ElevatedButton(
              onPressed: () {
                print("تم الضغط على تسجيل");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StudentManagement(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 210, 180, 104),
                disabledBackgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                shadowColor: Colors.black.withOpacity(0.3),
                elevation: 5,
              ),
              child: Text("تسجيل",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 251, 248, 248),
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }
}
