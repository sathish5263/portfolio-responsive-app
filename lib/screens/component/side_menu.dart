import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_app/constants.dart';
import 'package:portfolio_app/screens/component/skills.dart';
//import 'package:portfolio_app/webview1.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../components/animated_progress_indication.dart';
import 'area_info.dart';
import 'coding.dart';
import 'knowledge.dart';
import 'my_info.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

class SideMenu extends StatelessWidget {
  SideMenu({
    super.key,
  });
  //final storage = FirebaseStorage.instance;

  _launchurl() async {
    const url = "https://github.com/sathish5263";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not launch the url";
    }
  }

  _launchurl1() async {
    const url = "https://www.instagram.com/high_flyer_v4/";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not launch the url";
    }
  }

  _launchurl2() async {
    const url = "https://www.linkedin.com/in/sathish-v-a74136247/";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not launch the url";
    }
  }

  Future openBrowserURL({
    required String url,
    bool inApp = false,
  }) async {
    if (await canLaunch(url)) {
      await launch(url,
          forceSafariVC: inApp, forceWebView: inApp, enableJavaScript: true);
    }
  }

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw "cannot launch";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SafeArea(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  const AreaInfoText(
                    title: "RESIDENCE",
                    text: "INDIA",
                  ),
                  const AreaInfoText(
                    title: "CITY",
                    text: "THANJAVUR",
                  ),
                  const AreaInfoText(
                    title: "AGE",
                    text: "21",
                  ),
                  const Skills(),
                  const SizedBox(height: defaultPadding / 2),
                  Coding(),
                  Knowledge(),
                  Divider(),
                  SizedBox(height: defaultPadding / 2),
                  TextButton(
                    onPressed: () async {
                      const resumeUrl =
                          "https://drive.google.com/file/d/1s3LJB1-XQJIO5h5tfuWRjX3MP9xWvYa0/view?usp=drivesdk";
                      if (await canLaunch(resumeUrl)) {
                        await launch(resumeUrl);
                      } else {
                        throw 'Could not launch resume URL';
                      }
                    },
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text(
                            "DOWNLOAD CV",
                            style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color,
                            ),
                          ),
                          SizedBox(width: defaultPadding / 2),
                          SvgPicture.asset(
                            "assets/icons/file-download-svgrepo-com.svg",
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: defaultPadding),
                    color: Color(0xFF24242E),
                    child: Row(
                      children: [
                        Spacer(),
                        IconButton(
                          onPressed: () async {
                            _launchurl2();
                            // final url =
                            //     'https://www.linkedin.com/in/sathish-v-a74136247/';
                            // if (await canLaunch(url)) {
                            //   await launch(url,
                            //       forceSafariVC: false,
                            //       forceWebView: true,
                            //       enableJavaScript: true);
                            // }
                          },
                          icon: SvgPicture.asset(
                              "assets/icons/linkedin-svgrepo-com.svg",
                              color: Colors.white),
                        ),
                        IconButton(
                          onPressed: () async {
                            _launchurl();
                            // final url = 'https://github.com/sathish5263';
                            // if (await canLaunch(url)) {
                            //   await launch(url,
                            //       forceSafariVC: false,
                            //       forceWebView: true,
                            //       enableJavaScript: true);
                            // }
                          },
                          icon: SvgPicture.asset(
                              "assets/icons/github-142-svgrepo-com.svg",
                              color: Colors.white),
                        ),
                        IconButton(
                          onPressed: () async {
                            _launchurl1();
                            // _launchURL(
                            //     "https://www.instagram.com/high_flyer_v4/");
                          },
                          icon: SvgPicture.asset(
                              "assets/icons/instagram-167-svgrepo-com.svg",
                              color: Colors.white),
                        ),
                        Spacer(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

 




//C:\Users\HP\OneDrive\Desktop\dart\apk\sample\portfolio_app\assets\icons\check.svg



