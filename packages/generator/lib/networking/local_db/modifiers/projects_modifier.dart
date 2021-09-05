import '../../../generator.dart';

import '../local_db.dart';

class ProjectsModifier {
  final DbData? dbData;

  ProjectsModifier(this.dbData);

  String? _name;

  void setName(String? name) {
    _name = name;
  }

  int get _projectIndex {
    return dbData!.projectList!.indexWhere((e) => e.name == _name);
  }

  List<Project>? get _projectList {
    return dbData!.projectList;
  }

  List<Project>? list({
    bool where(Project element)?,
  }) {
    if (where != null) {
      return _projectList!.where(where).toList();
    }
    return _projectList;
  }

  Project? get() {
    if (exists()) {
      return _projectList![_projectIndex];
    }
    return null;
  }

  bool exists() {
    return _projectIndex != -1;
  }
}
