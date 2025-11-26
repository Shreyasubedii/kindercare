class TeacherProfileModel {
  final String name;
  final String subject;
  final String email;
  final String bio;
  final String profileImage;
  final int experience;
  final int students;
  final int classes;

  final List<String> qualifications;
  final List<String> skills;

  TeacherProfileModel({
    required this.name,
    required this.subject,
    required this.email,
    required this.bio,
    required this.profileImage,
    required this.experience,
    required this.students,
    required this.classes,
    required this.qualifications,
    required this.skills,
  });
}
