// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sosvida_new_flutter/l10n/app_localizations.dart'
    show AppLocalizations;
import 'suicidal_ideation_screen.dart';
import 'user_type_selection_screen.dart';
import '../data/recommendations_dictionary.dart';
import 'home_screen.dart';

class AnswersScreen extends StatefulWidget {
  final int score;
  final UserType userType;
  final int? ssiScore;

  const AnswersScreen({
    super.key,
    required this.score,
    required this.userType,
    this.ssiScore,
  });

  @override
  State<AnswersScreen> createState() => _AnswersScreenState();
}

class _AnswersScreenState extends State<AnswersScreen>
    with TickerProviderStateMixin {
  late AnimationController _fadeController;
  late AnimationController _slideController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    _fadeController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    _slideController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeInOut,
    ));

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _slideController,
      curve: Curves.easeOutCubic,
    ));

    _startAnimations();
  }

  void _startAnimations() async {
    await Future.delayed(const Duration(milliseconds: 200));
    _fadeController.forward();
    _slideController.forward();
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _slideController.dispose();
    super.dispose();
  }

  String _getResultMessage(AppLocalizations l10n) {
    if (widget.score <= 5) {
      return l10n.normalNoDepression;
    } else if (widget.score <= 10) {
      return l10n.mildDepression;
    } else {
      return l10n.severeDepression;
    }
  }

  Color _getResultColor() {
    if (widget.score <= 5) {
      return const Color(0xFF50C878); // Verde
    } else if (widget.score <= 10) {
      return const Color(0xFFFFA500); // Laranja
    } else {
      return const Color(0xFFE53E3E); // Vermelho
    }
  }

  Color _getBeckRiskColor() {
    if (widget.ssiScore == null) return Colors.grey;

    final riskColor =
        RecommendationsDictionary.getBeckRiskColor(widget.ssiScore!);
    switch (riskColor) {
      case 'green':
        return const Color(0xFF50C878);
      case 'orange':
        return const Color(0xFFFFA500);
      case 'red':
        return const Color(0xFFE53E3E);
      case 'darkred':
        return const Color(0xFF8B0000);
      default:
        return Colors.grey;
    }
  }

  String _getUserTypeLabel(AppLocalizations l10n) {
    switch (widget.userType) {
      case UserType.user:
        return l10n.userTypeUser;
      case UserType.healthProfessional:
        return l10n.userTypeHealthProfessional;
      case UserType.doctor:
        return l10n.userTypeDoctor;
    }
  }

  Color _getUserTypeColor() {
    switch (widget.userType) {
      case UserType.user:
        return const Color(0xFF4A90E2);
      case UserType.healthProfessional:
        return const Color(0xFF50C878);
      case UserType.doctor:
        return const Color(0xFF9B59B6);
    }
  }

  String _getUserTypeString() {
    switch (widget.userType) {
      case UserType.user:
        return 'autoteste';
      case UserType.healthProfessional:
        return 'profissional';
      case UserType.doctor:
        return 'medico';
    }
  }

  String _getGDSRecommendations() {
    // Só mostrar recomendações GDS quando score < 11 (não precisa fazer Beck)
    if (widget.score >= 11) {
      return '';
    }

    return RecommendationsDictionary.getGDSRecommendation(
      widget.score,
      _getUserTypeString(),
    );
  }

  String _getBeckRecommendations() {
    // Só mostrar recomendações Beck quando já fez o teste
    if (widget.ssiScore == null) {
      return '';
    }

    return RecommendationsDictionary.getBeckRecommendation(
      widget.ssiScore!,
      _getUserTypeString(),
    );
  }

  bool _shouldShowCVVButton() {
    return RecommendationsDictionary.shouldShowCVVButton(
      widget.ssiScore,
      widget.score,
    );
  }

  String _getBeckRiskLevel(AppLocalizations l10n) {
    if (widget.ssiScore == null) return '';
    final level = RecommendationsDictionary.getBeckRiskLevel(widget.ssiScore!);

    switch (level) {
      case 'Baixo':
        return l10n.lowRisk;
      case 'Moderado':
        return l10n.moderateRisk;
      case 'Alto':
        return l10n.highRisk;
      case 'Crítico':
        return l10n.criticalRisk;
      default:
        return level;
    }
  }

  Future<void> _callCVV() async {
    try {
      // Tenta fazer a ligação usando platform channel
      const platform = MethodChannel('flutter/platform');
      await platform.invokeMethod('makePhoneCall', {'phoneNumber': '188'});
    } catch (e) {
      // Se falhar, mostra um diálogo com o número
      if (mounted) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: const Color(0xFF2C2C2C),
            title: Text(
              AppLocalizations.of(context)!.emergencyContact,
              style: const TextStyle(color: Colors.white),
            ),
            content: Text(
              AppLocalizations.of(context)!.cvvDescription,
              style: const TextStyle(color: Colors.white),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    }
  }

  void _navigateToSSI(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            SuicidalIdeationScreen(
          userType: widget.userType,
          gdsScore: widget.score,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1.0, 0.0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final gdsRecommendations = _getGDSRecommendations();
    final beckRecommendations = _getBeckRecommendations();
    final shouldShowSSI = widget.score >= 11 && widget.ssiScore == null;
    final beckRiskLevel = _getBeckRiskLevel(l10n);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF1A1A2E),
              Color(0xFF16213E),
              Color(0xFF0F3460),
            ],
          ),
        ),
        child: Stack(
          children: [
            // Background logo com opacidade
            Positioned.fill(
              child: Opacity(
                opacity: 0.05,
                child: Image.asset(
                  'assets/logo_transparente.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SafeArea(
              child: AnimatedBuilder(
                animation: _fadeController,
                builder: (context, child) {
                  return FadeTransition(
                    opacity: _fadeAnimation,
                    child: SlideTransition(
                      position: _slideAnimation,
                      child: Column(
                        children: [
                          // Header
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () => Navigator.pop(context),
                                  icon: const Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                  style: IconButton.styleFrom(
                                    backgroundColor:
                                        Colors.white.withOpacity(0.1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                // Logo pequeno no header
                                Container(
                                  width: 32,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0xFFFFD700)
                                            .withOpacity(0.3),
                                        blurRadius: 8,
                                        spreadRadius: 1,
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'assets/logo_transparente.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                const Text(
                                  'SOSVida',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Expanded(
                            child: SingleChildScrollView(
                              padding: const EdgeInsets.all(24.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 20),

                                  // Título da tela
                                  ShaderMask(
                                    shaderCallback: (bounds) =>
                                        const LinearGradient(
                                      colors: [
                                        Colors.white,
                                        Color(0xFFFFD700),
                                      ],
                                    ).createShader(bounds),
                                    child: Text(
                                      l10n.resultsTitle,
                                      style: const TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),

                                  const SizedBox(height: 30),

                                  // Card do perfil do usuário
                                  _buildInfoCard(
                                    icon: Icons.person,
                                    iconColor: _getUserTypeColor(),
                                    title: l10n.profile,
                                    value: _getUserTypeLabel(l10n),
                                  ),
                                  const SizedBox(height: 20),

                                  // Card do resultado GDS
                                  _buildResultCard(
                                    title: l10n.gdsResult,
                                    score: widget.score,
                                    message: _getResultMessage(l10n),
                                    color: _getResultColor(),
                                  ),

                                  // Card do resultado SSI se disponível
                                  if (widget.ssiScore != null) ...[
                                    const SizedBox(height: 20),
                                    _buildResultCard(
                                      title: l10n.beckResult,
                                      score: widget.ssiScore!,
                                      message: beckRiskLevel,
                                      color: _getBeckRiskColor(),
                                      isBeck: true,
                                    ),
                                  ],

                                  // Card para aplicar teste de Beck se necessário
                                  if (shouldShowSSI) ...[
                                    const SizedBox(height: 20),
                                    _buildActionCard(
                                      icon: Icons.warning_amber,
                                      iconColor: Colors.orange,
                                      title: l10n.additionalEvaluation,
                                      description:
                                          l10n.additionalEvaluationDesc,
                                      buttonText: l10n.applyBeckScale,
                                      onPressed: () => _navigateToSSI(context),
                                      buttonColor: Colors.orange,
                                    ),
                                  ],

                                  // Recomendações GDS
                                  if (gdsRecommendations.isNotEmpty) ...[
                                    const SizedBox(height: 20),
                                    _buildRecommendationsCard(
                                      title: l10n.recommendations,
                                      content: gdsRecommendations,
                                      color: _getResultColor(),
                                    ),
                                  ],

                                  // Recomendações Beck
                                  if (beckRecommendations.isNotEmpty) ...[
                                    const SizedBox(height: 20),
                                    _buildRecommendationsCard(
                                      title: l10n.beckRecommendations,
                                      content: beckRecommendations,
                                      color: _getBeckRiskColor(),
                                    ),
                                  ],

                                  // Botão CVV
                                  if (_shouldShowCVVButton()) ...[
                                    const SizedBox(height: 20),
                                    _buildActionCard(
                                      icon: Icons.phone,
                                      iconColor: Colors.redAccent,
                                      title: l10n.emergencyContact,
                                      description: l10n.cvvDescription,
                                      buttonText: l10n.callCVV,
                                      onPressed: _callCVV,
                                      buttonColor: Colors.redAccent,
                                    ),
                                  ],

                                  const SizedBox(height: 40),
                                ],
                              ),
                            ),
                          ),

                          // Botão para retornar ao início
                          Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Container(
                              width: double.infinity,
                              height: 60,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF4A90E2),
                                    Color(0xFF3468B2),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xFF4A90E2)
                                        .withOpacity(0.4),
                                    blurRadius: 15,
                                    offset: const Offset(0, 5),
                                  ),
                                ],
                              ),
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.pushAndRemoveUntil(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation,
                                              secondaryAnimation) =>
                                          const HomeScreen(),
                                      transitionsBuilder: (context, animation,
                                          secondaryAnimation, child) {
                                        return FadeTransition(
                                            opacity: animation, child: child);
                                      },
                                    ),
                                    (Route<dynamic> route) => false,
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                icon: const Icon(
                                  Icons.home,
                                  color: Colors.white,
                                ),
                                label: Text(
                                  l10n.returnToHome,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String value,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.08),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.white.withOpacity(0.15),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: iconColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Icon(
              icon,
              color: iconColor,
              size: 24,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildResultCard({
    required String title,
    required int score,
    required String message,
    required Color color,
    bool isBeck = false,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color.withOpacity(0.15),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: color.withOpacity(0.5),
        ),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.2),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Pontuação: ',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                ),
              ),
              Text(
                '$score',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              color: color.withOpacity(0.3),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              message,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecommendationsCard({
    required String title,
    required String content,
    required Color color,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.08),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.white.withOpacity(0.15),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            content,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white70,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionCard({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String description,
    required String buttonText,
    required VoidCallback onPressed,
    required Color buttonColor,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: iconColor.withOpacity(0.15),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: iconColor.withOpacity(0.5),
        ),
        boxShadow: [
          BoxShadow(
            color: iconColor.withOpacity(0.2),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: iconColor,
            size: 40,
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: iconColor,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white70,
              height: 1.4,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          Container(
            width: double.infinity,
            height: 56,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  buttonColor.withOpacity(0.8),
                  buttonColor,
                ],
              ),
              borderRadius: BorderRadius.circular(28),
              boxShadow: [
                BoxShadow(
                  color: buttonColor.withOpacity(0.4),
                  blurRadius: 15,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
              child: Text(
                buttonText,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
