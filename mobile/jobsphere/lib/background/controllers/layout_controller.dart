import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';
import 'package:jobsphere/background/models/jobs_model.dart';
import 'package:jobsphere/background/service/api.dart';
import 'package:jobsphere/background/service/classifier.dart';
import 'package:loadany/loadany.dart';

class LayoutController extends GetxController {
  Classifier classifier = Classifier();
  AdvancedDrawerController advancedDrawerController = AdvancedDrawerController();
  LoadStatus dashboardListStatus = LoadStatus.normal;
  int currentLayout = 0;
  int dashboardPageNumber = 1;
  List<Results>? dashboardSearchResults = [];
  String mlPredict = 'Software Engineering';
  int bookmarkCount = 3;

  toggleLeft(){
    advancedDrawerController.toggleDrawer();
  }

  addBookmark(){
    if(dashboardSearchResults!.length > bookmarkCount){
      bookmarkCount++;
    }
    update();
  }

  removeBookmark(){
    if(bookmarkCount > 0){
      bookmarkCount--;
    }
    update();
  }

  predictJob() async {
    List<double> result = classifier.classify('This user has experience in 10 years of programing background.');
    print('ai predict here ============>>>>>>>  ${result.toString()}');
    /// get category name here to overwrite "mlPredict" variable
    /// then show jobs at dashboard layout
    dashboardLoadMore();
  }

  Future<void> dashboardLoadMore() async {
    dashboardListStatus = LoadStatus.loading;
    API().getJobs(JobsModel(), ['category=$mlPredict&'], dashboardPageNumber).then((model) {
      dashboardPageNumber++;
      dashboardSearchResults!.addAll(model.results);
      if(model.results.length < 1){
        dashboardListStatus = LoadStatus.completed;
      }else{
        dashboardListStatus = LoadStatus.normal;
      }
      update();
    });
  }

}