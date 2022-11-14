import 'package:jobsphere/background/enum/data.dart';
import 'package:jobsphere/background/models/xsphere_model.dart';
import 'package:flutter/material.dart';

class JobsModel extends XsphereModel {
  int? page;
  int? total;
  List<Results>? results;

  JobsModel({this.page, this.total, this.results});

  @override
  XsphereModel parse(Map data) {
    return JobsModel.fromJson(data);
  }

  JobsModel.fromJson(Map json) {
    page = json['page'];
    total = json['total'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) { results!.add(Results.fromJson(v)); });
    }
  }

  Map toJson() {
    final Map data = {};
    data['page'] = page;
    data['total'] = total;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  String? contents;
  String? name;
  String? type;
  String? publicationDate;
  DateTime? postDate;
  String? duration;
  String? shortName;
  String? modelType;
  int? id;
  List<Locations>? locations;
  List<Category>? categories;
  List<Levels>? levels;
  Refs? refs;
  Company? company;

  Results({this.contents, this.name, this.type, this.publicationDate, this.shortName, this.modelType, this.id, this.locations, this.categories, this.levels, this.refs, this.company});

  Results.fromJson(Map<String, dynamic> json) {
    contents = json['contents'];
    name = json['name'];
    type = json['type'];
    publicationDate = json['publication_date'];
    postDate = DateTime.parse('$publicationDate');
    duration = getDuration(postDate!);
    shortName = json['short_name'];
    modelType = json['model_type'];
    id = json['id'];
    if (json['locations'] != null) {
      locations = <Locations>[];
      json['locations'].forEach((v) { locations!.add(Locations.fromJson(v)); });
    }
    if (json['categories'] != null) {
      categories = <Category>[];
      json['categories'].forEach((v) { categories!.add(Category.fromJson(v)); });
    }
    if (json['levels'] != null) {
      levels = <Levels>[];
      json['levels'].forEach((v) { levels!.add(Levels.fromJson(v)); });
    }
    refs = json['refs'] != null ? Refs.fromJson(json['refs']) : null;
    company = json['company'] != null ? Company.fromJson(json['company']) : null;
  }

  String getDuration(DateTime pd){
    Duration dif = DateTime.now().difference(pd);
    if(dif.inDays > 365){
      return '${dif.inDays%365} Y';
    }else if(dif.inDays > 0){
      return '${dif.inDays} D';
    }else if(dif.inHours > 0){
      return 'Today';
    }else{
      return 'Long time';
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['contents'] = contents;
    data['name'] = name;
    data['type'] = type;
    data['publication_date'] = publicationDate;
    data['short_name'] = shortName;
    data['model_type'] = modelType;
    data['id'] = id;
    if (locations != null) {
      data['locations'] = locations!.map((v) => v.toJson()).toList();
    }
    if (categories != null) {
      data['categories'] = categories!.map((v) => v.toJson()).toList();
    }
    if (levels != null) {
      data['levels'] = levels!.map((v) => v.toJson()).toList();
    }
    if (refs != null) {
      data['refs'] = refs!.toJson();
    }
    if (company != null) {
      data['company'] = company!.toJson();
    }
    return data;
  }
}

class Locations {
  String? name;

  Locations({this.name});

  Locations.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    return data;
  }
}

class Category {
  String? name;

  Category({this.name});

  Category.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    return data;
  }
}

class Levels {
  String? name;
  String? shortName;
  Color? color;

  Levels({this.name, this.shortName});

  Levels.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    shortName = json['short_name'];
    color = jobLevels['${json['short_name']}'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['short_name'] = shortName;
    return data;
  }
}

class Refs {
  String? landingPage;

  Refs({this.landingPage});

  Refs.fromJson(Map<String, dynamic> json) {
    landingPage = json['landing_page'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['landing_page'] = landingPage;
    return data;
  }
}

class Company {
  int? id;
  String? shortName;
  String? name;

  Company({this.id, this.shortName, this.name});

  Company.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    shortName = json['short_name'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['short_name'] = shortName;
    data['name'] = name;
    return data;
  }
}
