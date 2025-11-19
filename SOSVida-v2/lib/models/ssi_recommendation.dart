class SSIRecommendation {
  final int ssiScore;
  final String userRecommendation;
  final String professionalRecommendation;
  final String doctorRecommendation;
  final bool isVisible;
  final bool showCVVButton;
  final String riskLevel;
  final String riskDescription;

  SSIRecommendation({
    required this.ssiScore,
    required this.userRecommendation,
    required this.professionalRecommendation,
    required this.doctorRecommendation,
    this.isVisible = true,
    this.showCVVButton = false,
    this.riskLevel = 'Baixo',
    this.riskDescription = '',
  });

  Map<String, dynamic> toJson() {
    return {
      'ssiScore': ssiScore,
      'userRecommendation': userRecommendation,
      'professionalRecommendation': professionalRecommendation,
      'doctorRecommendation': doctorRecommendation,
      'isVisible': isVisible,
      'showCVVButton': showCVVButton,
      'riskLevel': riskLevel,
      'riskDescription': riskDescription,
    };
  }

  factory SSIRecommendation.fromJson(Map<String, dynamic> json) {
    return SSIRecommendation(
      ssiScore: json['ssiScore'] ?? 0,
      userRecommendation: json['userRecommendation'] ?? '',
      professionalRecommendation: json['professionalRecommendation'] ?? '',
      doctorRecommendation: json['doctorRecommendation'] ?? '',
      isVisible: json['isVisible'] ?? true,
      showCVVButton: json['showCVVButton'] ?? false,
      riskLevel: json['riskLevel'] ?? 'Baixo',
      riskDescription: json['riskDescription'] ?? '',
    );
  }

  SSIRecommendation copyWith({
    int? ssiScore,
    String? userRecommendation,
    String? professionalRecommendation,
    String? doctorRecommendation,
    bool? isVisible,
    bool? showCVVButton,
    String? riskLevel,
    String? riskDescription,
  }) {
    return SSIRecommendation(
      ssiScore: ssiScore ?? this.ssiScore,
      userRecommendation: userRecommendation ?? this.userRecommendation,
      professionalRecommendation: professionalRecommendation ?? this.professionalRecommendation,
      doctorRecommendation: doctorRecommendation ?? this.doctorRecommendation,
      isVisible: isVisible ?? this.isVisible,
      showCVVButton: showCVVButton ?? this.showCVVButton,
      riskLevel: riskLevel ?? this.riskLevel,
      riskDescription: riskDescription ?? this.riskDescription,
    );
  }
}

