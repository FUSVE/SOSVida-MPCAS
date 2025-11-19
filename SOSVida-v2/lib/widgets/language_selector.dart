// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/language_provider.dart';

class LanguageSelector extends StatelessWidget {
  final bool showLabel;
  final double iconSize;

  const LanguageSelector({
    super.key,
    this.showLabel = true,
    this.iconSize = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageProvider>(
      builder: (context, languageProvider, child) {
        return PopupMenuButton<String>(
          icon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: iconSize,
                height: iconSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Colors.white30, width: 1),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(3),
                  child: _buildFlagIcon(
                      languageProvider.currentLocale.languageCode),
                ),
              ),
              if (showLabel) ...[
                const SizedBox(width: 8),
                Text(
                  languageProvider.isPortuguese ? 'PT' : 'EN',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ],
          ),
          color: const Color(0xFF2C2C2C),
          itemBuilder: (context) => [
            PopupMenuItem<String>(
              value: 'pt',
              child: Row(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.white30, width: 1),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(3),
                      child: _buildFlagIcon('pt'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    'Português (BR)',
                    style: TextStyle(color: Colors.white),
                  ),
                  if (languageProvider.isPortuguese) ...[
                    const Spacer(),
                    const Icon(Icons.check, color: Colors.green, size: 20),
                  ],
                ],
              ),
            ),
            PopupMenuItem<String>(
              value: 'en',
              child: Row(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.white30, width: 1),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(3),
                      child: _buildFlagIcon('en'),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    'English (US)',
                    style: TextStyle(color: Colors.white),
                  ),
                  if (languageProvider.isEnglish) ...[
                    const Spacer(),
                    const Icon(Icons.check, color: Colors.green, size: 20),
                  ],
                ],
              ),
            ),
          ],
          onSelected: (String languageCode) {
            languageProvider.setLanguage(languageCode);
          },
        );
      },
    );
  }

  Widget _buildFlagIcon(String languageCode) {
    if (languageCode == 'pt') {
      // Bandeira do Brasil usando Container com gradiente
      return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF009639), // Verde
              Color(0xFFFEDF00), // Amarelo
              Color(0xFF002776), // Azul
            ],
            stops: [0.0, 0.5, 1.0],
          ),
        ),
        child: const Center(
          child: Text(
            '🇧🇷',
            style: TextStyle(fontSize: 16),
          ),
        ),
      );
    } else {
      // Bandeira dos EUA usando Container com gradiente
      return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFB22234), // Vermelho
              Color(0xFFFFFFFF), // Branco
              Color(0xFF3C3B6E), // Azul
            ],
            stops: [0.0, 0.5, 1.0],
          ),
        ),
        child: const Center(
          child: Text(
            '🇺🇸',
            style: TextStyle(fontSize: 16),
          ),
        ),
      );
    }
  }
}

class LanguageSelectorDialog extends StatelessWidget {
  const LanguageSelectorDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageProvider>(
      builder: (context, languageProvider, child) {
        return AlertDialog(
          backgroundColor: const Color(0xFF2C2C2C),
          title: const Text(
            'Selecionar Idioma / Select Language',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Opção Português
              InkWell(
                onTap: () {
                  languageProvider.setLanguage('pt');
                  Navigator.pop(context);
                },
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: languageProvider.isPortuguese
                        ? Colors.green.withOpacity(0.2)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: languageProvider.isPortuguese
                          ? Colors.green
                          : Colors.white30,
                      width: 1,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.white30, width: 1),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(3),
                          child: Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFF009639), // Verde
                                  Color(0xFFFEDF00), // Amarelo
                                  Color(0xFF002776), // Azul
                                ],
                                stops: [0.0, 0.5, 1.0],
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                '🇧🇷',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Português',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Brasil',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (languageProvider.isPortuguese)
                        const Icon(Icons.check_circle, color: Colors.green),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              // Opção Inglês
              InkWell(
                onTap: () {
                  languageProvider.setLanguage('en');
                  Navigator.pop(context);
                },
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: languageProvider.isEnglish
                        ? Colors.green.withOpacity(0.2)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: languageProvider.isEnglish
                          ? Colors.green
                          : Colors.white30,
                      width: 1,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.white30, width: 1),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(3),
                          child: Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFFB22234), // Vermelho
                                  Color(0xFFFFFFFF), // Branco
                                  Color(0xFF3C3B6E), // Azul
                                ],
                                stops: [0.0, 0.5, 1.0],
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                '🇺🇸',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'English',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'United States',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (languageProvider.isEnglish)
                        const Icon(Icons.check_circle, color: Colors.green),
                    ],
                  ),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
