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
  String userName = ""; // لتخزين اسم المستخدم
  String userCode = ""; // لتخزين كود التعريف

  // دالة لإظهار نافذة إدخال النص
  void showInputDialog(BuildContext context, String title, Function(String) onSave) {
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
              onSave(controller.text); // حفظ النص المُدخل
              Navigator.pop(context); // إغلاق النافذة
            },
            child: Text("حفظ"),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context), // إغلاق بدون حفظ
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
          // الصندوق العلوي مع الصورة
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
          SizedBox(height: 20), // مسافة بين الصندوق والمحتوى التالي

          // زر لإدخال اسم المستخدم
          ElevatedButton(
            onPressed: () {
              showInputDialog(
                context,
                "أدخل اسم المستخدم",
                (text) {
                  setState(() {
                    userName = text; // حفظ اسم المستخدم
                  });
                },
              );
            },
            style: ElevatedButton.styleFrom(
             // لون النص
              shape: RoundedRectangleBorder( // زوايا مستديرة
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.symmetric(horizontal: 120, vertical: 20), // تعديل الحجم
              shadowColor: Colors.black.withOpacity(0.3), // تأثير الظل
              elevation: 5, // تأثير الظل عند الضغط
            ),
            child: Text(userName.isEmpty ? "أدخل اسم المستخدم" : "اسم المستخدم: $userName"),
          ),

          SizedBox(height: 20), // مسافة بين الزرين

          // زر لإدخال كود التعريف
          ElevatedButton(
            onPressed: () {
              showInputDialog(
                context,
                "أدخل كود التعريف",
                (text) {
                  setState(() {
                    userCode = text; // حفظ كود التعريف
                  });
                },
              );
            },
            style: ElevatedButton.styleFrom(
              // لون النص
              shape: RoundedRectangleBorder( // زوايا مستديرة
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.symmetric(horizontal: 120, vertical: 20), // تعديل الحجم
              shadowColor: Colors.black.withOpacity(0.3), // تأثير الظل
              elevation: 5, // تأثير الظل عند الضغط
            ),
            child: Text(userCode.isEmpty ? "أدخل كود التعريف" : "كود التعريف: $userCode"),
          ),
          SizedBox(height: 20), // مسافة بين النص وزر "تواصل مع الإدارة"

          // سطر يحتوي على النص "هل تواجه مشكلة؟" وزر "تواصل مع الإدارة"
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // النص
              TextButton(
                onPressed: () {
                  // أكشن عند الضغط على الزر
                  print("تم الضغط على التواصل مع الإدارة");
                },
                child: Text(
                 'هل توجه مشكله؟',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: 8), // مسافة صغيرة بين النص والزر

              // زر "تواصل مع الإدارة"
              TextButton(
                onPressed: () {
                  // أكشن عند الضغط على الزر
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
            ],
          ),
          ElevatedButton(
            onPressed: () {
              // أكشن عند الضغط على الزر "تسجيل"
              print("تم الضغط على تسجيل");
            },
            style: ElevatedButton.styleFrom(
disabledBackgroundColor: Colors.black,
               // لون النص
              shape: RoundedRectangleBorder( // زوايا مستديرة
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15), // تعديل الحجم
              shadowColor: Colors.black.withOpacity(0.3), // تأثير الظل
              elevation: 5, // تأثير الظل عند الضغط
            ),
            child: Text("تسجيل",style: TextStyle(color: Colors.black),),
          ),
        ],
      ),
    );
  }
}
