


import 'package:portfolio/model/project.dart';

class ExperienceConstant {

  static DateTime workingSince = DateTime(2020, 6);



  static List<String> workedIn=[
    "CriterionTech PVT LTD",
    "Grow By Exx PVT LTD",
  ];


  static List<Project> projectList=[
    Project(
      name: "Digi Doctor",
      company: workedIn[0],
      images: [
        "https://play-lh.googleusercontent.com/L9hy79pvXfQSfd3-UiS530xew-1Q4iYxtY6eXMuu9ee-LtroeCjNCwUc9zs3Fj5DKQ=w5120-h2880-rw",
        "https://play-lh.googleusercontent.com/L9hy79pvXfQSfd3-UiS530xew-1Q4iYxtY6eXMuu9ee-LtroeCjNCwUc9zs3Fj5DKQ=w2560-h1440-rw",
        "https://play-lh.googleusercontent.com/6MTd1APaK7LJF7QR0fbTnuczvZ32TP5Lxi7WXHTs-IEK72WxzwTj4j-D3q_ldqwngibT=w2560-h1440-rw"
      ],
      playStore: "https://play.google.com/store/apps/details?id=com.digidoctor.android&hl=en&gl=US",
      appStore: "https://apps.apple.com/in/app/digidoctor-max/id1539882666"
    ),

    Project(
        name: "Digi Doctor HIS",
        company: workedIn[0],
        images: [
          "https://play-lh.googleusercontent.com/WP9Xf8QkW1-m2ZU0rDz4LTu3nER-LiYG1IqmeWrdqNoF6-edbv_EEMYzPdy_HLj6u2s=w2560-h1440-rw",
          "https://play-lh.googleusercontent.com/3iCePlNN-lcck1ctp3z70uqmAoFp_AYzq15mWJk24GHjkVI412asNA0C7e_k78_1lZI=w2560-h1440-rw",
          "https://play-lh.googleusercontent.com/XsOSjjla_s5bG6XAuIHieLWlUC7Ei2oT36C_AJxun1H-EN2z4t_rxNK1fjTshtDIWC0D=w2560-h1440-rw"
        ],
        playStore: "https://play.google.com/store/apps/details?id=com.his.android&hl=en&gl=US",
        appStore: "https://play.google.com/store/apps/details?id=com.his.android&hl=en&gl=US"
    ),
  ];
}