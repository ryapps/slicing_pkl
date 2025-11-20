import '../data/models/project_item.dart';

class ProjectService {
  Future<List<ProjectItem>> fetchRecentProjects() async {
    await Future.delayed(const Duration(milliseconds: 500));

    return [
      ProjectItem(
        imageUrl: "https://www.shutterstock.com/image-photo/male-worker-cleaning-windows-modern-600nw-2634134445.jpg",
        title: "New Window Project",
        subtitle: "Window Remodeling",
        date: "12 Sept 2022",
      ),
      ProjectItem(
        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDvQGMbgj_9EjUvmXgHwfM-Kf6dWlaafPz_A&s",
        title: "Alex Home Roofing",
        subtitle: "Roofing",
        date: "12 Sept 2022",
      ),
      ProjectItem(
        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDvQGMbgj_9EjUvmXgHwfM-Kf6dWlaafPz_A&s",
        title: "Alex Home Roofing",
        subtitle: "Roofing",
        date: "12 Sept 2022",
      ),
    ];
  }
}
