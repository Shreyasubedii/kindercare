import '../models/teacherProfileModel.dart';

class TeacherProfileService {
  Future<TeacherProfileModel> getTeacherProfile() async {
    // Simulate slow internet/API delay
    await Future.delayed(const Duration(seconds: 2));

    return TeacherProfileModel(
      name: "Ms. Anna Rana",
      subject: "Home Room Teacher",
      email: "anjana.rana@example.com",
      bio:
          "Passionate kids educator with 7+ years of experience in teaching primary and secondary level students.",
      experience: 7,
      students: 120,
      classes: 4,
      qualifications: [
        "B.Ed in Elementary Education",
        "M.A. in Child Psychology",
        "Certified Montessori Teacher",
      ],
      skills: [
        "Classroom Management",
        "Curriculum Development",
        "Student Counseling",
        "Creative Teaching Methods",
      ],
      profileImage: "https://randomuser.me/api/portraits/women/44.jpg",
    );
  }
}
