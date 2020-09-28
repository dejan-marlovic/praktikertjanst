import '../models/resource.dart';

class CourseRoom extends Resource {
  CourseRoom();

  String background_image;
  List<String> video_ids = [];
  List<String> resources_ids = [];
  List<String> document_ids = [];
}
