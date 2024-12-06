import 'package:dartayat_project/constant.dart';
import 'package:flutter/material.dart';

class StudentManagement extends StatelessWidget {
  const StudentManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 26, right: 16, left: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back))),
                    const Expanded(
                      flex: 7,
                      child: SearchAboutStudent(),
                    ),
                  ],
                ),
               const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // طااااااااااااااااااااااارق اكتب في onPressed:
                    TextButton(
                        onPressed: () {},
                        child:const Text(
                          "اضافة",
                          style: TextStyle(
                              color: Color(0xff5A5353),
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        )),
                   const Text(
                      "ادارة الطلاب",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )
                  ],
                ),
               const SizedBox(
                  height: 12,
                ),
               const Padding(
                  padding:  EdgeInsets.only(bottom: 30),
                  child: ListOfStudents(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ListOfStudents extends StatelessWidget {
  const ListOfStudents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(top: 10, right: 12, left: 12),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
        const  Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  "المستوي",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    "الكود",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "الاسم",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
         const Divider(),
          ListView.separated(
              separatorBuilder: (context, index) => const Divider(
                    color: Colors.grey,
                  ),
              itemCount: 40,
              physics:const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Text(
                            "الرابع",
                            maxLines: 2,
                            textDirection: TextDirection.ltr,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 14),
                          )),
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            overflow: TextOverflow.clip,
                            maxLines: 2,
                            "2000200",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: Text(
                            " خالد ابراهيم خالد محمد ",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 14),
                            textDirection: TextDirection.rtl,
                          ))
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }
}

class SearchAboutStudent extends StatefulWidget {
  const SearchAboutStudent({
    super.key,
  });

  @override
  State<SearchAboutStudent> createState() => _SearchAboutStudentState();
}

class _SearchAboutStudentState extends State<SearchAboutStudent> {
  TextEditingController textSearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      transformAlignment: AlignmentDirectional.center,
      height: 46,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: Center(
        child: TextField(
          controller: textSearchController,
          cursorHeight: 23,
          textDirection: TextDirection.rtl,
          decoration: const InputDecoration(
              hintText: "ابحث باسم الطالب",
              hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
              hintTextDirection: TextDirection.rtl,
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(borderSide: BorderSide.none)),
        ),
      ),
    );
  }
}
