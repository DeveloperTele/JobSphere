import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:jobsphere/background/constants/style_constants.dart';
import 'package:lottie/lottie.dart';

final introLayouts = [
  PageViewModel(
    title: "Application",
    body: 'JobSphere ကို Htun Aung Linn မှ Flutter ဖြင့် develop လုပ်ထားခြင်းဖြစ်ပါသည်။ Testing ပြုလုပ်ရန်သာ ရည်ရွယ်ထားပါသဖြင့် Publish Release လုပ်ရန် မသင့်တော်ပါ။',
    //body: "JobSphere application is developed by Htun Aung Linn and this app is only for testing purpose.",
    image: Lottie.asset('assets/lottie/testing.json', width: 350),
    decoration: pageDecoration,
  ),
  PageViewModel(
    title: "Artificial Intelligent",
    body: 'Tensorflow ရဲ့ Machine Learning Model အသုံးပြုထားပြီး Job Seeker ရဲ့ Resume မှရရှိသော Info ဖြင့် သူနှင့်ပတ်သက်သောအလုပ် သူ့ရဲ့မျှော်မှန်းလစာကို ခန့်မှန်းကာ Vacancy များကို ရှာပေးသွားမှာ ဖြစ်ပါတယ်',
    //body: "Machine learning model will predict job position and expected salary for applicant. But it's not possible to collect all dataset to train, so I used public and opensource dataset and train.",
    image: Lottie.asset('assets/lottie/ai.json', width: 350),
    decoration: pageDecoration,
  ),
  PageViewModel(
    title: "Backend",
    body: "Backend ကို nodejs ဖြင့် Develop လုပ်ထားပြီး Tensorflow model မှ Prediction လုပ်ပေးရန် အဓိက ရည်ရွယ်ထားပါသည်။",
    image: Lottie.asset('assets/lottie/website.json', width: 350),
    decoration: pageDecoration,
  ),
  PageViewModel(
    title: "Best Wishes",
    body: 'JobSphere Application ကို သဘောကျမယ်လို့ မျှော်လင့်ပါတယ်',
    //body: "Web application also developed by Flutter",
    image: Lottie.asset('assets/lottie/like.json', width: 350),
    decoration: pageDecoration,
  ),
];