// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:audiochatapp/tips1/tips1.dart';
import 'package:audiochatapp/tips10/urlview.dart';
import 'package:audiochatapp/tips11/pdfView.dart';
import 'package:audiochatapp/tips12/responsive.dart';
import 'package:audiochatapp/tips13/isfirstRun.dart';
import 'package:audiochatapp/tips14/resizeImage.dart';
import 'package:audiochatapp/tips15/wa.dart';
import 'package:audiochatapp/tips16/focusNode.dart';
import 'package:audiochatapp/tips17/celebration.dart';
import 'package:audiochatapp/tips18/zoomWid.dart';
import 'package:audiochatapp/tips19/stepperWid.dart';
import 'package:audiochatapp/tips2/userList.dart';
import 'package:audiochatapp/tips20/scroll.dart';
import 'package:audiochatapp/tips21/crearefolder.dart';
import 'package:audiochatapp/tips22/write_files.dart';
import 'package:audiochatapp/tips23/tips23.dart';
import 'package:audiochatapp/tips24/shimmer_effect.dart';
import 'package:audiochatapp/tips25/tips25.dart';
import 'package:audiochatapp/tips26/tips26.dart';
import 'package:audiochatapp/tips27/tips27.dart';
import 'package:audiochatapp/tips28/tips28.dart';
import 'package:audiochatapp/tips29/tips29.dart';
import 'package:audiochatapp/tips30/tips30.dart';
import 'package:audiochatapp/tips31/tips31.dart';
import 'package:audiochatapp/tips5/online.dart';
import 'package:audiochatapp/tips6/searchSuggestion.dart';
import 'package:audiochatapp/tips7/textformValidation.dart';
import 'package:audiochatapp/tips8/showCase.dart';
import 'package:audiochatapp/tips9/webView.dart';
import 'package:get/get.dart';

final Color mainColor = Color.fromARGB(255, 5, 143, 97);
bool isDarkTheme = false;

final List<TIPS> tipsList = [
  TIPS(label: "1", title: "Search In Flutter", go: SearchScreen()),
  TIPS(
      label: "2",
      title: "Chatting with Firebase",
      go: UserList(
        tips: "2",
      )),
  TIPS(
      label: "3",
      title: "Chatting with Firebase Including Image",
      go: UserList(
        tips: "3",
      )),
  TIPS(
      label: "4",
      title: "Chatting with Firebase Including Voice",
      go: UserList(
        tips: "4",
      )),
  TIPS(label: "5", title: "Show User Online/offline", go: Online()),
  TIPS(
      label: "6",
      title: "Search Suggestion With TextField",
      go: SearchSuggestion()),
  TIPS(label: "7", title: "TextFormField Validation", go: TextFormValidation()),
  TIPS(label: "8", title: "TextTheme In Flutter", go: MyWidget()),
  TIPS(label: "9", title: "Web-View In Flutter", go: WebViewWid()),
  TIPS(label: "10", title: "Url launcher In Flutter", go: URLLauncherWid()),
  TIPS(label: "11", title: "PDF Preview and Print In Flutter", go: PDFView()),
  TIPS(
      label: "12", title: "Responsiveness In Flutter", go: ResponsivenessWid()),
  TIPS(label: "13", title: "Is First Run In Flutter", go: IsFirstWidget()),
  TIPS(
      label: "14",
      title: "Resize and crop Image In Flutter",
      go: ResizeImageWidget()),
  TIPS(
      label: "15",
      title: "Send Message To WhatsApp Contacts & Groups In Flutter",
      go: WhatsAppChat()),
  TIPS(label: "16", title: "FocusNode In Flutter", go: FocusNodeWid()),
  TIPS(label: "17", title: "Celebration In Flutter", go: Celebration()),
  TIPS(label: "18", title: "Zoom In Flutter", go: ZoomWid()),
  TIPS(label: "19", title: "Stepper In Flutter", go: StepprWid()),
  TIPS(label: "20", title: "Silver AppBar In Flutter", go: ScrollWidget()),
  TIPS(
      label: "21",
      title: "Create Folder & Files In Flutter",
      go: CreateFolderScreen()),
  TIPS(
      label: "22",
      title: "Write To and Read From Files In Flutter",
      go: WriteFileScreen()),
  TIPS(label: "23", title: "Rotation In Flutter", go: Tips23()),
  TIPS(label: "24", title: "Shimmer Effect In Flutter", go: ShimmerEffect()),
  TIPS(label: "25", title: "Searchable DropDown In Flutter", go: Tips25()),
  TIPS(
      label: "26",
      title: "Move Widget Up When Keyboard Appears In Flutter",
      go: Tips26()),
  TIPS(label: "27", title: "Pie Chart and Bar Graph In Flutter", go: Tips27()),
  TIPS(label: "28", title: "Numeral System In Flutter", go: Tips28()),
  TIPS(label: "29", title: "Pagination In Flutter", go: Tips29()),
  TIPS(
      label: "30",
      title: "Persistant Bottom Navigation Bar In Flutter",
      go: Tips30()),
  TIPS(label: "31", title: "Fetch Images from Firebase Storage", go: Tips31()),
];

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Flutter 30 Tips", back: false),
      body:
          //  UserList(
          //   tips: "4",
          // )
          ListView.separated(
        itemCount: tipsList.length,
        itemBuilder: (_, i) {
          return tips(tipsList[i].label!, tipsList[i].title!, tipsList[i].go!);
        },
        separatorBuilder: (_, i) {
          return Container(
            width: double.infinity,
            height: 2,
            color: mainColor.withOpacity(0.1),
          );
        },
      ),
    );
  }

  Widget tips(String label, String title, Widget go) {
    return ListTile(
      title: Text(
        "Flutter Tips $label",
        style: TextStyle(
            fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black),
      ),
      trailing: Text(
        "FT $label",
        style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 28,
            color: mainColor.withOpacity(0.35)),
      ),
      subtitle: Text(
        title,
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w900, color: mainColor),
      ),
      tileColor: mainColor.withOpacity(0.2),
      onTap: () => Get.to(go),
    );
  }
}

AppBar customAppBar(String title, {bool back = true}) {
  return AppBar(
      toolbarHeight: back ? 60 : 100,
      backgroundColor: isDarkTheme ? mainColor.withOpacity(0.1) : mainColor,
      automaticallyImplyLeading: back,
      centerTitle: true,
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: isDarkTheme ? mainColor : Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25),
      ));
}

class TIPS {
  String? label, title;
  Widget? go;
  TIPS({this.go, this.label, this.title});
}
