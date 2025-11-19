// Dicionário de Recomendações SOSVida
// Organizado por GDS e Beck com tipos de usuário
// VERSÃO COMPLETA - Todos os scores possíveis

// ignore_for_file: constant_identifier_names

class RecommendationsDictionary {
  // ========================================
  // RECOMENDAÇÕES GDS (Escala de Depressão Geriátrica)
  // Escala GDS vai de 0 a 15 pontos
  // ========================================

  // GDS Score 0-5 (Normal - Sem sinais de depressão)
  static const String gds_0_5_autoteste =
      '''• Mantenha atividades físicas regulares
• Pratique autocuidado como meditação e yoga
• Mantenha alimentação saudável
• Conviva com pessoas que transmitam paz e felicidade
• Tenha contato com a natureza
• Se necessário, realize psicoterapia preventiva''';

  static const String gds_0_5_profissional =
      '''• Orientar sobre práticas de autocuidado
• Recomendar atividades físicas regulares
• Sugerir psicoterapia preventiva se necessário
• Monitorar bem-estar geral
• Agendar reavaliação em 6 meses''';

  static const String gds_0_5_medico =
      '''• Abordagem preventiva não farmacológica
• Avaliar fatores de risco para depressão
• Considerar psicoterapia preventiva
• Monitorar evolução
• Retorno em 6 meses''';

  // GDS Score 6-10 (Depressão leve)
  static const String gds_6_10_autoteste = '''• Atividade física supervisionada
• Praticar autocuidado, como meditação e yoga
• Alimentação saudável
• Conviver com pessoas que lhe transmitam paz e felicidade
• Contato com a natureza
• Realizar psicoterapia''';

  static const String gds_6_10_profissional =
      '''• Orientar sobre práticas de autocuidado
• Recomendar atividades físicas supervisionadas
• Encaminhar para psicoterapia
• Monitorar evolução do quadro
• Agendar reavaliação em 3 meses''';

  static const String gds_6_10_medico = '''• Abordagem não farmacológica inicial
• Avaliar comorbidades e medicações em uso
• Prescrever psicoterapia
• Considerar medicação se não houver melhora
• Retorno em 30 dias''';

  // GDS Score 11-15 (Depressão moderada a grave)
  static const String gds_11_15_autoteste = '''• PROCURE AJUDA MÉDICA URGENTE
• Realize atividade física com supervisão profissional
• Mantenha psicoterapia regular
• Não interrompa medicações sem orientação médica
• Mantenha contato próximo com familiares e amigos
• Procure atividades que lhe dão prazer
• Se houver pensamentos de autolesão, procure emergência''';

  static const String gds_11_15_profissional =
      '''• Encaminhar para avaliação médica psiquiátrica URGENTE
• Implementar acompanhamento intensivo
• Avaliar risco de ideação suicida (aplicar escala Beck)
• Orientar família sobre sinais de alarme
• Psicoterapia intensiva indicada
• Retorno em 7-15 dias obrigatório''';
// • Considerar internação se houver risco''';

  static const String gds_11_15_medico = '''• DEPRESSÃO MODERADA A GRAVE
• Iniciar antidepressivo imediatamente
// • Avaliar necessidade de internação
• Descartar ideação suicida (aplicar escala Beck)
• Psicoterapia obrigatória
• Acompanhamento familiar necessário
• Retorno em 7-10 dias obrigatório
• Monitorar efeitos colaterais medicamentosos''';

  // ========================================
  // RECOMENDAÇÕES BECK SSI (Escala de Ideação Suicida)
  // Escala Beck vai de 0 a 38 pontos
  // ========================================

  // Beck Score 0 (Sem ideação suicida)
  static const String beck_0_autoteste =
      '''• Excelente! Não há sinais de ideação suicida
• Continue mantendo seus cuidados com a saúde mental
• Pratique atividades que lhe dão prazer
• Mantenha contato com pessoas queridas''';

  static const String beck_0_profissional =
      '''• Paciente sem ideação suicida atual
• Manter acompanhamento preventivo
• Orientar sobre sinais de alerta
• Retorno conforme necessidade''';

  static const String beck_0_medico = '''• Ausência de ideação suicida
• Manter tratamento atual se houver
• Monitorar evolução
• Retorno de rotina''';

  // Beck Score 1-2 (Ideação suicida mínima)
  static const String beck_1_2_autoteste =
//      '''• Ideação suicida muito leve detectada
// • Procure conversar com pessoas de confiança
// • Mantenha atividades prazerosas
// • Se os pensamentos aumentarem, procure ajuda profissional
// • Lembre-se: estes pensamentos podem passar''';
      '''• Procure conversar com pessoas de confiança
• Mantenha atividades prazerosas
• Se os pensamentos aumentarem, procure ajuda profissional
• Lembre-se: estes pensamentos podem passar''';

  static const String beck_1_2_profissional =
      '''• Ideação suicida mínima presente
• Investigar fatores desencadeantes
• Orientar sobre estratégias de enfrentamento
• Acompanhamento mais frequente
• Retorno em 15 dias''';

  static const String beck_1_2_medico = '''• Ideação suicida leve
• Avaliar necessidade de ajuste medicamentoso
• Intensificar psicoterapia
• Monitorar de perto
• Retorno em 7-15 dias''';

  // Beck Score 3-8 (Ideação suicida leve a moderada)
  static const String beck_3_8_autoteste =
      '''• É fundamental conversar com alguém sobre isso
• Mantenha-se próximo de pessoas que se importam com você
• Evite ficar sozinho por longos períodos
• Procurar por auxilio de equipe de saúde mental(Psiquiatra/Psicólogo) o mais breve possível
• Ligue para CVV 188 se precisar conversar''';

  static const String beck_3_8_profissional = '''• Ideação suicida presente
• Implementar plano de segurança
• Remover meios letais do ambiente(medicamentos, armas, cordas, pesticidas, facas) 
• Acionar rede de apoio familiar
• Encaminhar para avaliação médica URGENTE
• Praticar Atividades fisica supervisionada
• Praticar autocuidado, como Yoga e meditação
• Realizar psicoterapia,terapia cognitivo comportamental
• Garantir acesso rápido à serviços de crise como CVV 188
• Notificar a equipe de saúde mental
''';

  static const String beck_3_8_medico = '''• Ideação suicida presente
• Iniciar ou ajustar medicação antidepressiva
• Considerar terapia medicamentosa para controle agudo
• Praticar Atividades fisica supervisionada
• Praticar autocuidado, como Yoga e meditação
• Recomendar psicoterapia,terapia cognitivo comportamental e interpessoal
• Reduzir acesso a meios letais como armas de fogo ,armas brancas,cordas e medicamentos
• Recorrer a rede de suporte como familiares e amigos para auxílio emocional
• Em caso de rede de apoio frágil ou inexistente,baixo suporte social,avaliar necessidade de internação hospitalar''';

  // Beck Score 9-20 (Ideação suicida moderada a alta)
  static const String beck_9_20_autoteste =
      '''🚨 ATENÇÃO: Risco elevado de ideação suicida
• PROCURE AJUDA MÉDICA IMEDIATAMENTE
• Vá ao hospital ou pronto-socorro
• Não fique sozinho em nenhum momento
• LIGUE PARA CVV 188 - Centro de Valorização da Vida
• Remova todos os objetos que possam causar danos
• Sua vida é valiosa - há tratamento disponível''';

  static const String beck_9_20_profissional =
      '''🚨 ATENÇÃO: Ideação suicida moderada a alta
• ENCAMINHAR PARA EMERGÊNCIA PSIQUIÁTRICA IMEDIATAMENTE
• Não deixar paciente sozinho
• Acionar SAMU se necessário
• Implementar protocolo anti-suicídio
• Vigilância familiar constante
• Considerar internação psiquiátrica
• Documentar todas as ações''';

  static const String beck_9_20_medico =
      '''🚨 ATENÇÃO: Ideação suicida moderada a alta
• AVALIAR INTERNAÇÃO PSIQUIÁTRICA URGENTE
• Medicação antidepressiva + ansiolítico
• Protocolo anti-suicídio rigoroso
• Vigilância médica intensiva
• Avaliação psiquiátrica diária
• Suporte familiar obrigatório''';

  // Beck Score 21-30 (Ideação suicida grave)
  static const String beck_21_30_autoteste =
      '''🚨 EMERGÊNCIA: Risco grave de ideação suicida
• CHAME AMBULÂNCIA AGORA - 192
• LIGUE CVV 188 IMEDIATAMENTE
• Não fique sozinho nem por um segundo
• Peça ajuda a familiares ou amigos agora
• Você precisa de cuidados médicos urgentes
• Há tratamento eficaz disponível''';

  static const String beck_21_30_profissional =
      '''🚨 EMERGÊNCIA: Ideação suicida grave
• INTERNAÇÃO PSIQUIÁTRICA IMEDIATA E OBRIGATÓRIA
• Acionar serviços de emergência (SAMU/Bombeiros)
• Protocolo anti-suicídio máximo
• Vigilância ininterrupta
• Contenção física se necessário
• Família deve ser contactada imediatamente''';

  static const String beck_21_30_medico =
      '''🚨 EMERGÊNCIA: Ideação suicida grave
• INTERNAÇÃO COMPULSÓRIA IMEDIATA
• Medicação antidepressiva + antipsicótico + estabilizador
• Considerar ECT urgente
• Protocolo anti-suicídio rigoroso
• Vigilância médica ininterrupta
• Avaliação psiquiátrica a cada 6h''';

  // Beck Score 31-38 (Ideação suicida crítica)
  static const String beck_31_38_autoteste =
      '''🚨 EMERGÊNCIA CRÍTICA: Risco suicida crítico
• CHAME AMBULÂNCIA AGORA - 192
• LIGUE CVV 188 IMEDIATAMENTE
• NÃO FIQUE SOZINHO NEM POR UM SEGUNDO
• Alguém deve ficar com você até a ajuda chegar
• Remova TODOS os objetos perigosos
• Sua vida tem valor - existe esperança e tratamento''';

  static const String beck_31_38_profissional =
      '''🚨 EMERGÊNCIA CRÍTICA: Ideação suicida crítica
• ACIONAR TODOS OS PROTOCOLOS DE EMERGÊNCIA
• Internação psiquiátrica de máxima segurança
• Contenção física obrigatória se necessário
• Vigilância médica ininterrupta
• Protocolo de emergência psiquiátrica máximo
• Avaliação de risco contínua''';

  static const String beck_31_38_medico =
      '''🚨 EMERGÊNCIA CRÍTICA: Ideação suicida crítica
• INTERNAÇÃO EM UTI PSIQUIÁTRICA COM ISOLAMENTO
• Medicação de emergência (protocolo máximo)
• ECT de emergência imediata
• Contenção física e vigilância 24h
• Avaliação psiquiátrica a cada 2h
• Suporte médico intensivo''';

  // ========================================
  // MÉTODOS PARA ACESSAR AS RECOMENDAÇÕES
  // ========================================

  // Método para obter recomendações GDS
  static String getGDSRecommendation(int gdsScore, String userType) {
    String key = 'gds_';

    if (gdsScore <= 5) {
      key += '0_5_';
    } else if (gdsScore <= 10) {
      key += '6_10_';
    } else if (gdsScore <= 15) {
      key += '11_15_';
    } else {
      // Para scores > 15, usar a mesma recomendação do range mais alto
      key += '11_15_';
    }

    switch (userType.toLowerCase()) {
      case 'user':
      case 'autoteste':
        key += 'autoteste';
        break;
      case 'healthprofessional':
      case 'profissional':
        key += 'profissional';
        break;
      case 'doctor':
      case 'medico':
        key += 'medico';
        break;
      default:
        key += 'autoteste';
    }

    return _getRecommendationByKey(key);
  }

  // Método para obter recomendações Beck
  static String getBeckRecommendation(int beckScore, String userType) {
    String key = 'beck_';

    if (beckScore == 0) {
      key += '0_';
    } else if (beckScore <= 6) {
      //2
      key += '1_2_';
    } else if (beckScore == 7) {
      // =<
      key += '3_8_';
    } else if (beckScore <= 20) {
      key += '3_8_'; // key += '9_20_';
    } else if (beckScore <= 30) {
      key += '3_8_'; // key += '21_30_';
    } else {
      // Para scores > 30, usar o range crítico
      key += '3_8_'; // key += '31_38_';
    }

    switch (userType.toLowerCase()) {
      case 'user':
      case 'autoteste':
        key += 'autoteste';
        break;
      case 'healthprofessional':
      case 'profissional':
        key += 'profissional';
        break;
      case 'doctor':
      case 'medico':
        key += 'medico';
        break;
      default:
        key += 'autoteste';
    }

    return _getRecommendationByKey(key);
  }

  // Método privado para buscar recomendação por chave
  static String _getRecommendationByKey(String key) {
    switch (key) {
      // GDS Recomendações
      case 'gds_0_5_autoteste':
        return gds_0_5_autoteste;
      case 'gds_0_5_profissional':
        return gds_0_5_profissional;
      case 'gds_0_5_medico':
        return gds_0_5_medico;
      case 'gds_6_10_autoteste':
        return gds_6_10_autoteste;
      case 'gds_6_10_profissional':
        return gds_6_10_profissional;
      case 'gds_6_10_medico':
        return gds_6_10_medico;
      case 'gds_11_15_autoteste':
        return gds_11_15_autoteste;
      case 'gds_11_15_profissional':
        return gds_11_15_profissional;
      case 'gds_11_15_medico':
        return gds_11_15_medico;

      // Beck Recomendações
      case 'beck_0_autoteste':
        return beck_0_autoteste;
      case 'beck_0_profissional':
        return beck_0_profissional;
      case 'beck_0_medico':
        return beck_0_medico;
      case 'beck_1_2_autoteste':
        return beck_1_2_autoteste;
      case 'beck_1_2_profissional':
        return beck_1_2_profissional;
      case 'beck_1_2_medico':
        return beck_1_2_medico;
      case 'beck_3_8_autoteste':
        return beck_3_8_autoteste;
      case 'beck_3_8_profissional':
        return beck_3_8_profissional;
      case 'beck_3_8_medico':
        return beck_3_8_medico;
      case 'beck_9_20_autoteste':
        return beck_9_20_autoteste;
      case 'beck_9_20_profissional':
        return beck_9_20_profissional;
      case 'beck_9_20_medico':
        return beck_9_20_medico;
      case 'beck_21_30_autoteste':
        return beck_21_30_autoteste;
      case 'beck_21_30_profissional':
        return beck_21_30_profissional;
      case 'beck_21_30_medico':
        return beck_21_30_medico;
      case 'beck_31_38_autoteste':
        return beck_31_38_autoteste;
      case 'beck_31_38_profissional':
        return beck_31_38_profissional;
      case 'beck_31_38_medico':
        return beck_31_38_medico;

      default:
        return 'Recomendação não encontrada';
    }
  }

  // Método para verificar se deve mostrar botão CVV
  static bool shouldShowCVVButton(int? beckScore, int gdsScore) {
    // Mostrar CVV se Beck >= 3 ou GDS >= 11
    if (beckScore != null && beckScore >= 3) {
      return true;
    }
    if (gdsScore >= 11) {
      return true;
    }
    return false;
  }

  // Método para obter nível de risco Beck
  static String getBeckRiskLevel(int beckScore) {
    if (beckScore == 0) {
      return 'Ausente';
    } else if (beckScore <= 2) {
      return 'Mínimo';
    } else if (beckScore <= 8) {
      return 'Baixo a Moderado';
    } else if (beckScore <= 20) {
      return 'Moderado a Alto';
    } else if (beckScore <= 30) {
      return 'Grave';
    } else {
      return 'Crítico';
    }
  }

  // Método para obter cor do risco Beck
  static String getBeckRiskColor(int beckScore) {
    if (beckScore == 0) {
      return 'lightgreen';
    } else if (beckScore <= 2) {
      return 'green';
    } else if (beckScore <= 8) {
      return 'orange';
    } else if (beckScore <= 20) {
      return 'red';
    } else if (beckScore <= 30) {
      return 'darkred';
    } else {
      return 'crimson';
    }
  }

  // Método para obter nível de risco GDS
  static String getGDSRiskLevel(int gdsScore) {
    if (gdsScore <= 5) {
      return 'Normal';
    } else if (gdsScore <= 10) {
      return 'Depressão Leve';
    } else if (gdsScore <= 15) {
      return 'Depressão Moderada a Grave';
    } else {
      return 'Depressão Grave';
    }
  }

  // Método para obter cor do risco GDS
  static String getGDSRiskColor(int gdsScore) {
    if (gdsScore <= 5) {
      return 'green';
    } else if (gdsScore <= 10) {
      return 'orange';
    } else if (gdsScore <= 15) {
      return 'red';
    } else {
      return 'darkred';
    }
  }

  // Método para verificar se é emergência
  static bool isEmergency(int? beckScore, int gdsScore) {
    if (beckScore != null && beckScore >= 9) {
      return true;
    }
    if (gdsScore >= 11) {
      return true;
    }
    return false;
  }

  // Método para obter número de emergência por região
  static String getEmergencyNumber(String region) {
    switch (region.toLowerCase()) {
      case 'brasil':
      case 'brazil':
        return 'SAMU: 192 | CVV: 188';
      case 'portugal':
        return 'INEM: 112 | SOS Voz Amiga: 213 544 545';
      case 'angola':
        return 'Emergência: 112 | 113';
      default:
        return 'Emergência Local | CVV: 188';
    }
  }
}
