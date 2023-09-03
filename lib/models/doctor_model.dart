class DoctorModel {
  final String name;
  final String position;
  final int averageReview;
  final int totalReviews;
  final String profile;

  DoctorModel({
    required this.name,
    required this.position,
    required this.averageReview,
    required this.totalReviews,
    required this.profile,
  });
}

final List<DoctorModel> nearbyDoctors = [
  DoctorModel(
    name: "Dr. Vivek kumar",
    position: "Senior orthopedic surgeon",
    averageReview: 0,
    totalReviews: 0,
    profile: "assets/doctor_1.jpg",
  ),
  DoctorModel(
    name: 'Dr. Rahul Gautam',
    position: 'Senior surgeon',
    averageReview: 0,
    totalReviews: 0,
    profile: "assets/doctor_2.jpg",
  ),
  DoctorModel(
    name: 'Dr. Preeti Singh',
    position: 'Senior psychiatrist',
    averageReview: 0,
    totalReviews: 4,
    profile: "assets/doctor_3.jpg",
  ),
];
