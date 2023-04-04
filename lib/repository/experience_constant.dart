


import 'package:portfolio/model/project.dart';

class ExperienceConstant {

  static DateTime workingSince = DateTime(2020, 6);

static String ownWork="Own";

  static List<String> workedIn=[
    "CriterionTech PVT LTD",
    "Grow By Exx PVT LTD",
  ];


  static List<Project> projectList=[
    Project(
      name: "Portfolio Website",
      company: ownWork,
      images: [
        "assets/portfolio_s1.png",
        "assets/portfolio_s2.png",
        "assets/portfolio_s3.png",
      ],
      website: "https://portfolio-71eef.web.app/",
    ),
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
        appStore: "https://apps.apple.com/in/app/digidoctor-max/id1539882666"
    ),

    Project(
        name: "CT Employee Portal",
        company: workedIn[0],
        images: [
          "https://play-lh.googleusercontent.com/EHde850ttHwKgmKRYRi9TjijbCGX7izBNFpHVQWfAAeptUNfOeUJHAMH5h-tGE2NwbE_=w5120-h2880-rw",
          "https://play-lh.googleusercontent.com/l3KlPcgCShXsr6yHkEK-CeVTRUri5VBc0k_Uycyt69DMzfNC6I4jNCvdoyJ3qXtid4U=w5120-h2880-rw",
          "https://play-lh.googleusercontent.com/BGO72WYTjmgQukXvH5-9BEaZ57wULyn1CAMQmzvl0mb4CHWTxUtk_cWqBhukbOKUuA=w5120-h2880-rw"
        ],
        playStore: "https://play.google.com/store/apps/details?id=com.criteriontech.employee_portal",
    ),

    Project(
        name: "Organic Delight",
        company: workedIn[0],
        images: [
          "https://play-lh.googleusercontent.com/kRmGEpCjGR9JBuMXZwm-td8DoubS9ohx6psmVhmTpuy6F_2Ab6xaWIxZElHm5ubF7bw=w5120-h2880-rw",
          "https://play-lh.googleusercontent.com/834G90e8-_jqICn-hQwPA53i4BopL3n_Fqw1ctVmO1UXx4d5nSP8xCjvHzJXV40TW_w=w5120-h2880-rw",
          "https://play-lh.googleusercontent.com/YnT0chPULF2x2Qv9s-B9avlTUpA1m1E4oC_lRTB6MQB5XuC3rjJMjyCFuUVout8ukAc=w5120-h2880-rw"
        ],
        playStore: "https://play.google.com/store/apps/details?id=com.criteriontech.organic_delight",
    ),

    Project(
        name: "ERA Student Portal",
        company: workedIn[0],
        images: [
          "https://play-lh.googleusercontent.com/eSaCP2oEwsvvVIq0WThGyEZc8sevIhbYowtnrbyh_n7MBiZwMZyFSMMqrn66V4BAVQ=w5120-h2880-rw",
          "https://play-lh.googleusercontent.com/VsjcrYbJGNRsi6BiF0yY8GK2jNOQ_9-k3oGdYN3-EfrIAubfsTRBj3SAyJhLUidpVQ=w5120-h2880-rw",
          "https://play-lh.googleusercontent.com/WUd1ofgqjJgdz9zeoyS55oFUEyEAEgKTLc37MUtEcI5rOzyr4GQ3ETp3710qgD9z-BN4=w5120-h2880-rw"
        ],
        playStore: "https://play.google.com/store/apps/details?id=com.criteriontech.euportal",
        appStore: "https://apps.apple.com/in/app/era-student-portal/id1580069618"
    ),

    Project(
        name: "CARE Learning App",
        company: workedIn[0],
        images: [
          "https://play-lh.googleusercontent.com/_Sw_b9QK7mJi2Yu3YZoCorBurMkZG9WYDQygDexG4lKPePvzFkL2-Ip-Jr3q8Cvtug=w5120-h2880-rw",
          "https://play-lh.googleusercontent.com/gs-KbJMBgi_z8gNePqZxmogVnR3uVVFmsWfkj8_Uzmdu0dMaxjhN9G92KunpZVXMtKE=w5120-h2880-rw",
          "https://play-lh.googleusercontent.com/p1ZUIMr-8V7gYYPuYz8E9gHfPKLA-2FGffiguqScBnLTid-xnDHOEgNQC690Opj4K4s=w5120-h2880-rw"
        ],
        playStore: "https://play.google.com/store/apps/details?id=com.care.criteriontech.android",
        appStore: "https://apps.apple.com/in/app/care-learning-app/id1381459569"
    ),

    Project(
        name: "Hiz TV",
        company: workedIn[0],
        images: [
          "https://play-lh.googleusercontent.com/2SgS6BhCCsm_wSHoMchZGMXBxG1Cgn5zqIi58UjVJOzVJpS1DAKCamP6JTi0uY21Fj13=w5120-h2880-rw",
          "https://play-lh.googleusercontent.com/cuewXcrshSqpUatnEzVIlNZjw4HuC0ZMdkslRsETES4vyW2eGR1dC8c4HQYlLUTXaqVp=w5120-h2880-rw",
          "https://play-lh.googleusercontent.com/s_4ERrwZglbX98JyRvLt11BSiTHsDAnN4c84ISNn1R0akWqANY_cL1601e0WaF2aYPk=w5120-h2880-rw"
        ],
        playStore: "https://play.google.com/store/apps/details?id=com.hiztv.android",
    ),

    Project(
        name: "DigiDoctor Max",
        company: workedIn[0],
        images: [
          "https://play-lh.googleusercontent.com/et2L2k3Lj6WH59wnVzNRwaO4EIXg4HogIXKHNfGncjkYWb6U5ViyQujxwm3I2gQReYgB=w5120-h2880-rw",
          "https://play-lh.googleusercontent.com/tcTf0GSR78DDw-4ixGNBHXIZaAGk08a530kvQ0JEnPwCQ3bdMbimLaAzpvoKYTm2PWw=w5120-h2880-rw",
          "https://play-lh.googleusercontent.com/ewRvAPCwOxcir16hk4EzE5EsKV8gvc0xTZCvfAZFVgIj5UvMpg1Dh5Sgto0zfGxkigc=w5120-h2880-rw"
        ],
        playStore: "https://play.google.com/store/apps/details?id=com.criteriontech.digidoctormax",
        appStore: "https://apps.apple.com/in/app/digidoctor-max/id1539882666"
    ),


  ];
}