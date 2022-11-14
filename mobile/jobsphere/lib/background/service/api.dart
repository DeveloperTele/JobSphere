import 'package:get/get.dart';
import 'package:jobsphere/background/models/xsphere_model.dart';

class API extends GetConnect {

  Future<T> getJobs<T>(XsphereModel model, List<String> query, int page) async {
    String url = Uri.encodeFull('https://www.themuse.com/api/public/jobs?${query.join()}page=$page');
    Response res = await get(url);
    if (res.body != null) {
      return model.parse(res.body) as T;
    } else {
      throw Exception('fail to load');
    }
  }

}