import 'package:university_app/src/bll/models/ientity.dart';

class Profession implements IEntity {
  @override
  String image;

  @override
  String name;

  Profession({this.name, this.image});
}
