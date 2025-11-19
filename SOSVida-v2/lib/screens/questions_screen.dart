// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:sosvida_new_flutter/l10n/app_localizations.dart'
    show AppLocalizations;
import 'answers_screen.dart';
import 'user_type_selection_screen.dart';

class QuestionsScreen extends StatefulWidget {
  final UserType userType;

  const QuestionsScreen({super.key, required this.userType});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen>
    with TickerProviderStateMixin {
  final List<int?> _answers = List.filled(15, null);
  int _currentQuestionIndex = 0;

  late AnimationController _questionFadeController;
  late Animation<double> _questionFadeAnimation;

  // Perguntas base da escala GDS-15 com chaves de localização
  final List<Map<String, dynamic>> _baseQuestions = [
    {
      'userKey': 'gdsQuestion1User',
      'professionalKey': 'gdsQuestion1Professional',
      'doctorKey': 'gdsQuestion1Doctor',
      'yesValue': 0,
      'noValue': 1,
    },
    {
      'userKey': 'gdsQuestion2User',
      'professionalKey': 'gdsQuestion2Professional',
      'doctorKey': 'gdsQuestion2Doctor',
      'yesValue': 1,
      'noValue': 0,
    },
    {
      'userKey': 'gdsQuestion3User',
      'professionalKey': 'gdsQuestion3Professional',
      'doctorKey': 'gdsQuestion3Doctor',
      'yesValue': 1,
      'noValue': 0,
    },
    {
      'userKey': 'gdsQuestion4User',
      'professionalKey': 'gdsQuestion4Professional',
      'doctorKey': 'gdsQuestion4Doctor',
      'yesValue': 1,
      'noValue': 0,
    },
    {
      'userKey': 'gdsQuestion5User',
      'professionalKey': 'gdsQuestion5Professional',
      'doctorKey': 'gdsQuestion5Doctor',
      'yesValue': 0,
      'noValue': 1,
    },
    {
      'userKey': 'gdsQuestion6User',
      'professionalKey': 'gdsQuestion6Professional',
      'doctorKey': 'gdsQuestion6Doctor',
      'yesValue': 1,
      'noValue': 0,
    },
    {
      'userKey': 'gdsQuestion7User',
      'professionalKey': 'gdsQuestion7Professional',
      'doctorKey': 'gdsQuestion7Doctor',
      'yesValue': 0,
      'noValue': 1,
    },
    {
      'userKey': 'gdsQuestion8User',
      'professionalKey': 'gdsQuestion8Professional',
      'doctorKey': 'gdsQuestion8Doctor',
      'yesValue': 1,
      'noValue': 0,
    },
    {
      'userKey': 'gdsQuestion9User',
      'professionalKey': 'gdsQuestion9Professional',
      'doctorKey': 'gdsQuestion9Doctor',
      'yesValue': 1,
      'noValue': 0,
    },
    {
      'userKey': 'gdsQuestion10User',
      'professionalKey': 'gdsQuestion10Professional',
      'doctorKey': 'gdsQuestion10Doctor',
      'yesValue': 1,
      'noValue': 0,
    },
    {
      'userKey': 'gdsQuestion11User',
      'professionalKey': 'gdsQuestion11Professional',
      'doctorKey': 'gdsQuestion11Doctor',
      'yesValue': 0,
      'noValue': 1,
    },
    {
      'userKey': 'gdsQuestion12User',
      'professionalKey': 'gdsQuestion12Professional',
      'doctorKey': 'gdsQuestion12Doctor',
      'yesValue': 1,
      'noValue': 0,
    },
    {
      'userKey': 'gdsQuestion13User',
      'professionalKey': 'gdsQuestion13Professional',
      'doctorKey': 'gdsQuestion13Doctor',
      'yesValue': 0,
      'noValue': 1,
    },
    {
      'userKey': 'gdsQuestion14User',
      'professionalKey': 'gdsQuestion14Professional',
      'doctorKey': 'gdsQuestion14Doctor',
      'yesValue': 1,
      'noValue': 0,
    },
    {
      'userKey': 'gdsQuestion15User',
      'professionalKey': 'gdsQuestion15Professional',
      'doctorKey': 'gdsQuestion15Doctor',
      'yesValue': 1,
      'noValue': 0,
    },
  ];

  @override
  void initState() {
    super.initState();
    _questionFadeController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _questionFadeAnimation = CurvedAnimation(
      parent: _questionFadeController,
      curve: Curves.easeIn,
    );
    _questionFadeController.forward();
  }

  @override
  void dispose() {
    _questionFadeController.dispose();
    super.dispose();
  }

  String _getQuestionText(int index) {
    final localizations = AppLocalizations.of(context)!;
    final question = _baseQuestions[index];

    switch (widget.userType) {
      case UserType.user:
        return '${index + 1}. ${_getLocalizedText(localizations, question['userKey'])}';
      case UserType.healthProfessional:
        return '${index + 1}. ${_getLocalizedText(localizations, question['professionalKey'])}';
      case UserType.doctor:
        return '${index + 1}. ${_getLocalizedText(localizations, question['doctorKey'])}';
    }
  }

  String _getLocalizedText(AppLocalizations localizations, String key) {
    // Mapeamento das chaves para os métodos de localização
    switch (key) {
      case 'gdsQuestion1User':
        return localizations.gdsQuestion1User;
      case 'gdsQuestion1Professional':
        return localizations.gdsQuestion1Professional;
      case 'gdsQuestion1Doctor':
        return localizations.gdsQuestion1Doctor;
      case 'gdsQuestion2User':
        return localizations.gdsQuestion2User;
      case 'gdsQuestion2Professional':
        return localizations.gdsQuestion2Professional;
      case 'gdsQuestion2Doctor':
        return localizations.gdsQuestion2Doctor;
      case 'gdsQuestion3User':
        return localizations.gdsQuestion3User;
      case 'gdsQuestion3Professional':
        return localizations.gdsQuestion3Professional;
      case 'gdsQuestion3Doctor':
        return localizations.gdsQuestion3Doctor;
      case 'gdsQuestion4User':
        return localizations.gdsQuestion4User;
      case 'gdsQuestion4Professional':
        return localizations.gdsQuestion4Professional;
      case 'gdsQuestion4Doctor':
        return localizations.gdsQuestion4Doctor;
      case 'gdsQuestion5User':
        return localizations.gdsQuestion5User;
      case 'gdsQuestion5Professional':
        return localizations.gdsQuestion5Professional;
      case 'gdsQuestion5Doctor':
        return localizations.gdsQuestion5Doctor;
      case 'gdsQuestion6User':
        return localizations.gdsQuestion6User;
      case 'gdsQuestion6Professional':
        return localizations.gdsQuestion6Professional;
      case 'gdsQuestion6Doctor':
        return localizations.gdsQuestion6Doctor;
      case 'gdsQuestion7User':
        return localizations.gdsQuestion7User;
      case 'gdsQuestion7Professional':
        return localizations.gdsQuestion7Professional;
      case 'gdsQuestion7Doctor':
        return localizations.gdsQuestion7Doctor;
      case 'gdsQuestion8User':
        return localizations.gdsQuestion8User;
      case 'gdsQuestion8Professional':
        return localizations.gdsQuestion8Professional;
      case 'gdsQuestion8Doctor':
        return localizations.gdsQuestion8Doctor;
      case 'gdsQuestion9User':
        return localizations.gdsQuestion9User;
      case 'gdsQuestion9Professional':
        return localizations.gdsQuestion9Professional;
      case 'gdsQuestion9Doctor':
        return localizations.gdsQuestion9Doctor;
      case 'gdsQuestion10User':
        return localizations.gdsQuestion10User;
      case 'gdsQuestion10Professional':
        return localizations.gdsQuestion10Professional;
      case 'gdsQuestion10Doctor':
        return localizations.gdsQuestion10Doctor;
      case 'gdsQuestion11User':
        return localizations.gdsQuestion11User;
      case 'gdsQuestion11Professional':
        return localizations.gdsQuestion11Professional;
      case 'gdsQuestion11Doctor':
        return localizations.gdsQuestion11Doctor;
      case 'gdsQuestion12User':
        return localizations.gdsQuestion12User;
      case 'gdsQuestion12Professional':
        return localizations.gdsQuestion12Professional;
      case 'gdsQuestion12Doctor':
        return localizations.gdsQuestion12Doctor;
      case 'gdsQuestion13User':
        return localizations.gdsQuestion13User;
      case 'gdsQuestion13Professional':
        return localizations.gdsQuestion13Professional;
      case 'gdsQuestion13Doctor':
        return localizations.gdsQuestion13Doctor;
      case 'gdsQuestion14User':
        return localizations.gdsQuestion14User;
      case 'gdsQuestion14Professional':
        return localizations.gdsQuestion14Professional;
      case 'gdsQuestion14Doctor':
        return localizations.gdsQuestion14Doctor;
      case 'gdsQuestion15User':
        return localizations.gdsQuestion15User;
      case 'gdsQuestion15Professional':
        return localizations.gdsQuestion15Professional;
      case 'gdsQuestion15Doctor':
        return localizations.gdsQuestion15Doctor;
      default:
        return key;
    }
  }

  String _getInstructions() {
    final localizations = AppLocalizations.of(context)!;
    switch (widget.userType) {
      case UserType.user:
        return localizations.userInstructions;
      case UserType.healthProfessional:
        return localizations.professionalInstructions;
      case UserType.doctor:
        return localizations.doctorInstructions;
    }
  }

  Color _getThemeColor() {
    switch (widget.userType) {
      case UserType.user:
        return const Color(0xFF4A90E2); // Azul
      case UserType.healthProfessional:
        return const Color(0xFF50C878); // Verde
      case UserType.doctor:
        return const Color(0xFF9B59B6); // Roxo
    }
  }

  void _setAnswer(int index, bool isYes) {
    setState(() {
      _answers[index] = isYes
          ? _baseQuestions[index]['yesValue']
          : _baseQuestions[index]['noValue'];
    });
  }

  int? _calculateTotal() {
    if (_answers.any((answer) => answer == null)) {
      return null;
    }
    return _answers.fold(0, (sum, answer) => sum! + answer!);
  }

  void _goToNextQuestion() {
    if (_answers[_currentQuestionIndex] == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content:
              Text('Por favor, selecione uma resposta antes de continuar.'),
          backgroundColor: Colors.redAccent,
        ),
      );
      return;
    }
    setState(() {
      if (_currentQuestionIndex < _baseQuestions.length - 1) {
        _currentQuestionIndex++;
        _questionFadeController.reset();
        _questionFadeController.forward();
      } else {
        _submitAnswers();
      }
    });
  }

  void _goToPreviousQuestion() {
    setState(() {
      if (_currentQuestionIndex > 0) {
        _currentQuestionIndex--;
        _questionFadeController.reset();
        _questionFadeController.forward();
      }
    });
  }

  void _submitAnswers() {
    final total = _calculateTotal();
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => AnswersScreen(
          score: total ?? 0,
          userType: widget.userType,
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
    final themeColor = _getThemeColor();
    final localizations = AppLocalizations.of(context)!;

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
                            backgroundColor: Colors.white.withOpacity(0.1),
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
                                color: const Color(0xFFFFD700).withOpacity(0.3),
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

                  // Barra de progresso
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 16.0),
                    child: LinearProgressIndicator(
                      value:
                          (_currentQuestionIndex + 1) / _baseQuestions.length,
                      backgroundColor: Colors.white.withOpacity(0.2),
                      valueColor: AlwaysStoppedAnimation<Color>(themeColor),
                      minHeight: 8,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  // Instruções específicas por tipo de usuário
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 8.0),
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: themeColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: themeColor.withOpacity(0.3)),
                      ),
                      child: Column(
                        children: [
                          Icon(
                            widget.userType == UserType.user
                                ? Icons.person
                                : widget.userType == UserType.healthProfessional
                                    ? Icons.health_and_safety
                                    : Icons.medical_services,
                            color: themeColor,
                            size: 32,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            _getInstructions(),
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.white70,
                              fontStyle: FontStyle.italic,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Pergunta atual
                  Expanded(
                    child: FadeTransition(
                      opacity: _questionFadeAnimation,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(24),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.08),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.15),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 20,
                                    offset: const Offset(0, 10),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    'Pergunta ${_currentQuestionIndex + 1} de ${_baseQuestions.length}',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: themeColor.withOpacity(0.8),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  Text(
                                    _getQuestionText(_currentQuestionIndex),
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      height: 1.4,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 32),

                                  // Botões de resposta
                                  _buildAnswerButton(
                                    localizations.yes,
                                    _answers[_currentQuestionIndex] ==
                                        _baseQuestions[_currentQuestionIndex]
                                            ['yesValue'],
                                    () =>
                                        _setAnswer(_currentQuestionIndex, true),
                                    themeColor,
                                  ),
                                  const SizedBox(height: 16),
                                  _buildAnswerButton(
                                    localizations.no,
                                    _answers[_currentQuestionIndex] ==
                                        _baseQuestions[_currentQuestionIndex]
                                            ['noValue'],
                                    () => _setAnswer(
                                        _currentQuestionIndex, false),
                                    themeColor,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Botões de navegação
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Botão Anterior
                        if (_currentQuestionIndex > 0)
                          Expanded(
                            child: Container(
                              height: 56,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(28),
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.2),
                                ),
                              ),
                              child: OutlinedButton.icon(
                                onPressed: _goToPreviousQuestion,
                                icon: const Icon(
                                  Icons.arrow_back,
                                  color: Colors.white70,
                                ),
                                label: const Text(
                                  'Anterior',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28),
                                  ),
                                ),
                              ),
                            ),
                          ),

                        if (_currentQuestionIndex > 0 &&
                            _currentQuestionIndex < _baseQuestions.length - 1)
                          const SizedBox(width: 16),

                        // Botão Próxima/Finalizar
                        Expanded(
                          child: Container(
                            height: 56,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  themeColor.withOpacity(0.8),
                                  themeColor,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(28),
                              boxShadow: [
                                BoxShadow(
                                  color: themeColor.withOpacity(0.4),
                                  blurRadius: 15,
                                  offset: const Offset(0, 5),
                                ),
                              ],
                            ),
                            child: ElevatedButton.icon(
                              onPressed: _goToNextQuestion,
                              icon: Icon(
                                _currentQuestionIndex ==
                                        _baseQuestions.length - 1
                                    ? Icons.check
                                    : Icons.arrow_forward,
                                color: Colors.white,
                              ),
                              label: Text(
                                _currentQuestionIndex ==
                                        _baseQuestions.length - 1
                                    ? 'Finalizar'
                                    : 'Próxima',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnswerButton(
      String text, bool isSelected, VoidCallback onPressed, Color themeColor) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: isSelected
            ? themeColor.withOpacity(0.8)
            : Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: isSelected ? themeColor : Colors.white.withOpacity(0.2),
          width: 2,
        ),
        boxShadow: isSelected
            ? [
                BoxShadow(
                  color: themeColor.withOpacity(0.4),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ]
            : null,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.white : Colors.white70,
          ),
        ),
      ),
    );
  }
}
