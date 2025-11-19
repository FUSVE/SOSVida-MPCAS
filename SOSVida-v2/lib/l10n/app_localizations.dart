import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('pt')
  ];

  /// No description provided for @additionalEvaluation.
  ///
  /// In pt, this message translates to:
  /// **'Avaliação Adicional Recomendada'**
  String get additionalEvaluation;

  /// No description provided for @additionalEvaluationDesc.
  ///
  /// In pt, this message translates to:
  /// **'Devido ao resultado da escala GDS, recomendamos a aplicação da Escala de Ideação Suicida de Beck.'**
  String get additionalEvaluationDesc;

  /// No description provided for @appTitle.
  ///
  /// In pt, this message translates to:
  /// **'SOSVida'**
  String get appTitle;

  /// No description provided for @applyBeckScale.
  ///
  /// In pt, this message translates to:
  /// **'Aplicar Escala de Ideação Suicida'**
  String get applyBeckScale;

  /// No description provided for @back.
  ///
  /// In pt, this message translates to:
  /// **'Voltar'**
  String get back;

  /// No description provided for @beckInstructions.
  ///
  /// In pt, this message translates to:
  /// **'Responda às perguntas com sinceridade:'**
  String get beckInstructions;

  /// No description provided for @beckRecommendations.
  ///
  /// In pt, this message translates to:
  /// **'Recomendações da Escala Beck'**
  String get beckRecommendations;

  /// No description provided for @beckResult.
  ///
  /// In pt, this message translates to:
  /// **'Resultado da Escala de Ideação Suicida de Beck'**
  String get beckResult;

  /// No description provided for @beckTitle.
  ///
  /// In pt, this message translates to:
  /// **'Escala de Ideação Suicida de Beck'**
  String get beckTitle;

  /// No description provided for @callCVV.
  ///
  /// In pt, this message translates to:
  /// **'LIGAR PARA CVV 188'**
  String get callCVV;

  /// No description provided for @continueButton.
  ///
  /// In pt, this message translates to:
  /// **'Continuar'**
  String get continueButton;

  /// No description provided for @criticalRisk.
  ///
  /// In pt, this message translates to:
  /// **'Crítico'**
  String get criticalRisk;

  /// No description provided for @cvvDescription.
  ///
  /// In pt, this message translates to:
  /// **'Centro de Valorização da Vida , Ligação gratuita 24h por dia'**
  String get cvvDescription;

  /// No description provided for @doctor.
  ///
  /// In pt, this message translates to:
  /// **'Médico'**
  String get doctor;

  /// No description provided for @doctorDescription.
  ///
  /// In pt, this message translates to:
  /// **'Médico com capacidade de prescrição'**
  String get doctorDescription;

  /// No description provided for @doctorInstructions.
  ///
  /// In pt, this message translates to:
  /// **'Avaliação clínica GDS-15. Considere histórico medicamentoso e comorbidades na interpretação.'**
  String get doctorInstructions;

  /// No description provided for @emergencyContact.
  ///
  /// In pt, this message translates to:
  /// **'🚨 CONTATO DE EMERGÊNCIA'**
  String get emergencyContact;

  /// No description provided for @english.
  ///
  /// In pt, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @finishEvaluation.
  ///
  /// In pt, this message translates to:
  /// **'Finalizar Avaliação'**
  String get finishEvaluation;

  /// No description provided for @finishTest.
  ///
  /// In pt, this message translates to:
  /// **'Finalizar'**
  String get finishTest;

  /// No description provided for @gdsInstructions.
  ///
  /// In pt, this message translates to:
  /// **'Responda às perguntas com base em como você se sente:'**
  String get gdsInstructions;

  /// No description provided for @gdsQuestion10Doctor.
  ///
  /// In pt, this message translates to:
  /// **'Paciente refere queixas subjetivas de memória?'**
  String get gdsQuestion10Doctor;

  /// No description provided for @gdsQuestion10Professional.
  ///
  /// In pt, this message translates to:
  /// **'O Sr./Sra. acha que tem mais problemas de memória que outras pessoas?'**
  String get gdsQuestion10Professional;

  /// No description provided for @gdsQuestion10User.
  ///
  /// In pt, this message translates to:
  /// **'Você acha que tem mais problemas de memória que outras pessoas?'**
  String get gdsQuestion10User;

  /// No description provided for @gdsQuestion11Doctor.
  ///
  /// In pt, this message translates to:
  /// **'Paciente demonstra prazer em viver?'**
  String get gdsQuestion11Doctor;

  /// No description provided for @gdsQuestion11Professional.
  ///
  /// In pt, this message translates to:
  /// **'O Sr./Sra. acha que é maravilhoso estar vivo(a)?'**
  String get gdsQuestion11Professional;

  /// No description provided for @gdsQuestion11User.
  ///
  /// In pt, this message translates to:
  /// **'Você acha que é maravilhoso estar vivo(a)?'**
  String get gdsQuestion11User;

  /// No description provided for @gdsQuestion12Doctor.
  ///
  /// In pt, this message translates to:
  /// **'Paciente apresenta sentimentos de inutilidade?'**
  String get gdsQuestion12Doctor;

  /// No description provided for @gdsQuestion12Professional.
  ///
  /// In pt, this message translates to:
  /// **'O Sr./Sra. se sente inútil?'**
  String get gdsQuestion12Professional;

  /// No description provided for @gdsQuestion12User.
  ///
  /// In pt, this message translates to:
  /// **'Você se sente inútil?'**
  String get gdsQuestion12User;

  /// No description provided for @gdsQuestion13Doctor.
  ///
  /// In pt, this message translates to:
  /// **'Paciente mantém níveis adequados de energia?'**
  String get gdsQuestion13Doctor;

  /// No description provided for @gdsQuestion13Professional.
  ///
  /// In pt, this message translates to:
  /// **'O Sr./Sra. se sente cheio(a) de energia?'**
  String get gdsQuestion13Professional;

  /// No description provided for @gdsQuestion13User.
  ///
  /// In pt, this message translates to:
  /// **'Você se sente cheio(a) de energia?'**
  String get gdsQuestion13User;

  /// No description provided for @gdsQuestion14Doctor.
  ///
  /// In pt, this message translates to:
  /// **'Paciente apresenta desesperança?'**
  String get gdsQuestion14Doctor;

  /// No description provided for @gdsQuestion14Professional.
  ///
  /// In pt, this message translates to:
  /// **'O Sr./Sra. se sente sem esperança?'**
  String get gdsQuestion14Professional;

  /// No description provided for @gdsQuestion14User.
  ///
  /// In pt, this message translates to:
  /// **'Você se sente sem esperança?'**
  String get gdsQuestion14User;

  /// No description provided for @gdsQuestion15Doctor.
  ///
  /// In pt, this message translates to:
  /// **'Paciente apresenta comparações negativas com outros?'**
  String get gdsQuestion15Doctor;

  /// No description provided for @gdsQuestion15Professional.
  ///
  /// In pt, this message translates to:
  /// **'O Sr./Sra. acha que os outros têm mais sorte que você?'**
  String get gdsQuestion15Professional;

  /// No description provided for @gdsQuestion15User.
  ///
  /// In pt, this message translates to:
  /// **'Você acha que os outros têm mais sorte que você?'**
  String get gdsQuestion15User;

  /// No description provided for @gdsQuestion1Doctor.
  ///
  /// In pt, this message translates to:
  /// **'Paciente refere estar satisfeito(a) com sua vida?'**
  String get gdsQuestion1Doctor;

  /// No description provided for @gdsQuestion1Professional.
  ///
  /// In pt, this message translates to:
  /// **'O Sr./Sra. está satisfeito(a) com sua vida?'**
  String get gdsQuestion1Professional;

  /// No description provided for @gdsQuestion1User.
  ///
  /// In pt, this message translates to:
  /// **'Você está satisfeito(a) com sua vida?'**
  String get gdsQuestion1User;

  /// No description provided for @gdsQuestion2Doctor.
  ///
  /// In pt, this message translates to:
  /// **'Paciente interrompeu muitas atividades habituais?'**
  String get gdsQuestion2Doctor;

  /// No description provided for @gdsQuestion2Professional.
  ///
  /// In pt, this message translates to:
  /// **'O Sr./Sra. interrompeu muitas de suas atividades?'**
  String get gdsQuestion2Professional;

  /// No description provided for @gdsQuestion2User.
  ///
  /// In pt, this message translates to:
  /// **'Você interrompeu muitas de suas atividades?'**
  String get gdsQuestion2User;

  /// No description provided for @gdsQuestion3Doctor.
  ///
  /// In pt, this message translates to:
  /// **'Paciente refere sensação de vida vazia?'**
  String get gdsQuestion3Doctor;

  /// No description provided for @gdsQuestion3Professional.
  ///
  /// In pt, this message translates to:
  /// **'O Sr./Sra. acha sua vida vazia?'**
  String get gdsQuestion3Professional;

  /// No description provided for @gdsQuestion3User.
  ///
  /// In pt, this message translates to:
  /// **'Você acha sua vida vazia?'**
  String get gdsQuestion3User;

  /// No description provided for @gdsQuestion4Doctor.
  ///
  /// In pt, this message translates to:
  /// **'Paciente apresenta aborrecimento frequente?'**
  String get gdsQuestion4Doctor;

  /// No description provided for @gdsQuestion4Professional.
  ///
  /// In pt, this message translates to:
  /// **'O Sr./Sra. se aborrece com frequência?'**
  String get gdsQuestion4Professional;

  /// No description provided for @gdsQuestion4User.
  ///
  /// In pt, this message translates to:
  /// **'Você se aborrece com frequência?'**
  String get gdsQuestion4User;

  /// No description provided for @gdsQuestion5Doctor.
  ///
  /// In pt, this message translates to:
  /// **'Paciente refere sentir-se bem na maior parte do tempo?'**
  String get gdsQuestion5Doctor;

  /// No description provided for @gdsQuestion5Professional.
  ///
  /// In pt, this message translates to:
  /// **'O Sr./Sra. se sente bem com a vida na maior parte do tempo?'**
  String get gdsQuestion5Professional;

  /// No description provided for @gdsQuestion5User.
  ///
  /// In pt, this message translates to:
  /// **'Você se sente bem com a vida na maior parte do tempo?'**
  String get gdsQuestion5User;

  /// No description provided for @gdsQuestion6Doctor.
  ///
  /// In pt, this message translates to:
  /// **'Paciente apresenta temores ou ansiedade antecipatória?'**
  String get gdsQuestion6Doctor;

  /// No description provided for @gdsQuestion6Professional.
  ///
  /// In pt, this message translates to:
  /// **'O Sr./Sra. teme que algo ruim lhe aconteça?'**
  String get gdsQuestion6Professional;

  /// No description provided for @gdsQuestion6User.
  ///
  /// In pt, this message translates to:
  /// **'Você teme que algo ruim lhe aconteça?'**
  String get gdsQuestion6User;

  /// No description provided for @gdsQuestion7Doctor.
  ///
  /// In pt, this message translates to:
  /// **'Paciente mantém humor alegre na maior parte do tempo?'**
  String get gdsQuestion7Doctor;

  /// No description provided for @gdsQuestion7Professional.
  ///
  /// In pt, this message translates to:
  /// **'O Sr./Sra. se sente alegre a maior parte do tempo?'**
  String get gdsQuestion7Professional;

  /// No description provided for @gdsQuestion7User.
  ///
  /// In pt, this message translates to:
  /// **'Você se sente alegre a maior parte do tempo?'**
  String get gdsQuestion7User;

  /// No description provided for @gdsQuestion8Doctor.
  ///
  /// In pt, this message translates to:
  /// **'Paciente refere sentimentos de desamparo?'**
  String get gdsQuestion8Doctor;

  /// No description provided for @gdsQuestion8Professional.
  ///
  /// In pt, this message translates to:
  /// **'O Sr./Sra. se sente desamparado(a) com frequência?'**
  String get gdsQuestion8Professional;

  /// No description provided for @gdsQuestion8User.
  ///
  /// In pt, this message translates to:
  /// **'Você se sente desamparado(a) com frequência?'**
  String get gdsQuestion8User;

  /// No description provided for @gdsQuestion9Doctor.
  ///
  /// In pt, this message translates to:
  /// **'Paciente apresenta isolamento social ou evitação?'**
  String get gdsQuestion9Doctor;

  /// No description provided for @gdsQuestion9Professional.
  ///
  /// In pt, this message translates to:
  /// **'O Sr./Sra. prefere ficar em casa a sair e fazer coisas novas?'**
  String get gdsQuestion9Professional;

  /// No description provided for @gdsQuestion9User.
  ///
  /// In pt, this message translates to:
  /// **'Você prefere ficar em casa a sair e fazer coisas novas?'**
  String get gdsQuestion9User;

  /// No description provided for @gdsResult.
  ///
  /// In pt, this message translates to:
  /// **'Resultado da Escala GDS'**
  String get gdsResult;

  /// No description provided for @gdsTitle.
  ///
  /// In pt, this message translates to:
  /// **'Escala de Depressão Geriátrica (GDS-15)'**
  String get gdsTitle;

  /// No description provided for @gdsUserTitle.
  ///
  /// In pt, this message translates to:
  /// **'Autoteste - Escala GDS'**
  String get gdsUserTitle;

  /// No description provided for @gdsProfessionalTitle.
  ///
  /// In pt, this message translates to:
  /// **'Avaliação Profissional - GDS'**
  String get gdsProfessionalTitle;

  /// No description provided for @gdsDoctorTitle.
  ///
  /// In pt, this message translates to:
  /// **'Avaliação Médica - GDS'**
  String get gdsDoctorTitle;

  /// No description provided for @generalRecommendations.
  ///
  /// In pt, this message translates to:
  /// **'Recomendações Gerais'**
  String get generalRecommendations;

  /// No description provided for @healthProfessional.
  ///
  /// In pt, this message translates to:
  /// **'Profissional de Saúde'**
  String get healthProfessional;

  /// No description provided for @healthProfessionalDescription.
  ///
  /// In pt, this message translates to:
  /// **'Profissional da área de saúde não prescritor'**
  String get healthProfessionalDescription;

  /// No description provided for @highRisk.
  ///
  /// In pt, this message translates to:
  /// **'Alto'**
  String get highRisk;

  /// No description provided for @importantNotice.
  ///
  /// In pt, this message translates to:
  /// **'Esta é uma avaliação preliminar. Para um diagnóstico preciso, consulte um profissional de saúde mental.'**
  String get importantNotice;

  /// No description provided for @languageSelection.
  ///
  /// In pt, this message translates to:
  /// **'Selecionar Idioma'**
  String get languageSelection;

  /// No description provided for @lowRisk.
  ///
  /// In pt, this message translates to:
  /// **'Baixo'**
  String get lowRisk;

  /// No description provided for @mildDepression.
  ///
  /// In pt, this message translates to:
  /// **'Depressão leve'**
  String get mildDepression;

  /// No description provided for @moderateRisk.
  ///
  /// In pt, this message translates to:
  /// **'Moderado'**
  String get moderateRisk;

  /// No description provided for @newEvaluation.
  ///
  /// In pt, this message translates to:
  /// **'Nova Avaliação'**
  String get newEvaluation;

  /// No description provided for @nextQuestion.
  ///
  /// In pt, this message translates to:
  /// **'Próxima'**
  String get nextQuestion;

  /// No description provided for @no.
  ///
  /// In pt, this message translates to:
  /// **'Não'**
  String get no;

  /// No description provided for @normalNoDepression.
  ///
  /// In pt, this message translates to:
  /// **'Normal - Sem sinais de depressão'**
  String get normalNoDepression;

  /// No description provided for @portuguese.
  ///
  /// In pt, this message translates to:
  /// **'Português'**
  String get portuguese;

  /// No description provided for @previousQuestion.
  ///
  /// In pt, this message translates to:
  /// **'Anterior'**
  String get previousQuestion;

  /// No description provided for @profile.
  ///
  /// In pt, this message translates to:
  /// **'Perfil'**
  String get profile;

  /// No description provided for @professionalInstructions.
  ///
  /// In pt, this message translates to:
  /// **'Aplicar em ambiente reservado. Explique ao paciente que as perguntas se referem à última semana.'**
  String get professionalInstructions;

  /// No description provided for @recommendations.
  ///
  /// In pt, this message translates to:
  /// **'Recomendações'**
  String get recommendations;

  /// No description provided for @resultsTitle.
  ///
  /// In pt, this message translates to:
  /// **'Resultado da Avaliação'**
  String get resultsTitle;

  /// No description provided for @returnToHome.
  ///
  /// In pt, this message translates to:
  /// **'Voltar ao Início'**
  String get returnToHome;

  /// No description provided for @riskLevel.
  ///
  /// In pt, this message translates to:
  /// **'Nível de Risco'**
  String get riskLevel;

  /// No description provided for @score.
  ///
  /// In pt, this message translates to:
  /// **'Pontuação'**
  String get score;

  /// No description provided for @selectProfile.
  ///
  /// In pt, this message translates to:
  /// **'Selecione seu Perfil'**
  String get selectProfile;

  /// No description provided for @selectProfileDescription.
  ///
  /// In pt, this message translates to:
  /// **'Selecione seu perfil para uma avaliação personalizada:'**
  String get selectProfileDescription;

  /// No description provided for @selectUserType.
  ///
  /// In pt, this message translates to:
  /// **'Selecione seu perfil:'**
  String get selectUserType;

  /// No description provided for @severeDepression.
  ///
  /// In pt, this message translates to:
  /// **'Depressão severa'**
  String get severeDepression;

  /// No description provided for @specificRecommendations.
  ///
  /// In pt, this message translates to:
  /// **'Recomendações Específicas'**
  String get specificRecommendations;

  /// No description provided for @startTest.
  ///
  /// In pt, this message translates to:
  /// **'Iniciar Avaliação'**
  String get startTest;

  /// No description provided for @user.
  ///
  /// In pt, this message translates to:
  /// **'Usuário'**
  String get user;

  /// No description provided for @userDescription.
  ///
  /// In pt, this message translates to:
  /// **'Pessoa interessada em avaliar sua saúde mental'**
  String get userDescription;

  /// No description provided for @userInstructions.
  ///
  /// In pt, this message translates to:
  /// **'Responda como você tem se sentido na última semana. Seja honesto(a) consigo mesmo(a).'**
  String get userInstructions;

  /// No description provided for @userTypeDoctor.
  ///
  /// In pt, this message translates to:
  /// **'Médico'**
  String get userTypeDoctor;

  /// No description provided for @userTypeDoctorDesc.
  ///
  /// In pt, this message translates to:
  /// **'Médicos prescritores'**
  String get userTypeDoctorDesc;

  /// No description provided for @userTypeHealthProfessional.
  ///
  /// In pt, this message translates to:
  /// **'Profissional de Saúde'**
  String get userTypeHealthProfessional;

  /// No description provided for @userTypeHealthProfessionalDesc.
  ///
  /// In pt, this message translates to:
  /// **'Psicólogos, enfermeiros, etc.'**
  String get userTypeHealthProfessionalDesc;

  /// No description provided for @userTypeUser.
  ///
  /// In pt, this message translates to:
  /// **'Autoteste'**
  String get userTypeUser;

  /// No description provided for @userTypeUserDesc.
  ///
  /// In pt, this message translates to:
  /// **'Para uso pessoal'**
  String get userTypeUserDesc;

  /// No description provided for @welcomeSubtitle.
  ///
  /// In pt, this message translates to:
  /// **'Avaliação de Saúde Mental'**
  String get welcomeSubtitle;

  /// No description provided for @welcomeTitle.
  ///
  /// In pt, this message translates to:
  /// **'Bem-vindo ao SOSVida'**
  String get welcomeTitle;

  /// No description provided for @yes.
  ///
  /// In pt, this message translates to:
  /// **'Sim'**
  String get yes;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'pt':
      return AppLocalizationsPt();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
