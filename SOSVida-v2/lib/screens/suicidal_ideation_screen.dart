// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'answers_screen.dart';
import 'user_type_selection_screen.dart';

class SuicidalIdeationScreen extends StatefulWidget {
  final UserType userType;
  final int gdsScore;

  const SuicidalIdeationScreen({
    super.key,
    required this.userType,
    required this.gdsScore,
  });

  @override
  State<SuicidalIdeationScreen> createState() => _SuicidalIdeationScreenState();
}

class _SuicidalIdeationScreenState extends State<SuicidalIdeationScreen> {
  final List<int?> _answers = List.filled(21, null);

  final List<Map<String, dynamic>> _questions = [
    {
      'question': '1. Desejo de viver',
      'options': ['Moderado a forte', 'Fraco', 'Nenhum'],
      'values': [0, 1, 2],
    },
    {
      'question': '2. Desejo de morrer',
      'options': ['Nenhum', 'Fraco', 'Moderado a forte'],
      'values': [0, 1, 2],
    },
    {
      'question': '3. Razões para viver/morrer',
      'options': [
        'Para viver superam para morrer',
        'Aproximadamente iguais',
        'Para morrer superam para viver'
      ],
      'values': [0, 1, 2],
    },
    {
      'question': '4. Desejo de tentar suicídio',
      'options': ['Nenhum', 'Fraco', 'Moderado a forte'],
      'values': [0, 1, 2],
    },
    {
      'question': '5. Desejo passivo de suicídio',
      'options': [
        'Tomaria precauções para salvar vida',
        'Deixaria vida/morte ao acaso',
        'Evitaria passos para salvar vida'
      ],
      'values': [0, 1, 2],
    },
    {
      'question': '6. Dimensão temporal: duração da ideação suicida',
      'options': [
        'Breve, períodos passageiros',
        'Por períodos mais longos',
        'Contínua ou quase contínua'
      ],
      'values': [0, 1, 2],
    },
    {
      'question': '7. Dimensão temporal: frequência da ideação suicida',
      'options': ['Rara, ocasional', 'Intermitente', 'Persistente ou contínua'],
      'values': [0, 1, 2],
    },
    {
      'question': '8. Atitude em relação à ideação/desejo',
      'options': ['Repulsiva', 'Ambivalente; indiferente', 'Aceita'],
      'values': [0, 1, 2],
    },
    {
      'question': '9. Controle sobre atividade suicida/desejo de agir',
      'options': ['Tem controle', 'Incerto', 'Não tem controle'],
      'values': [0, 1, 2],
    },
    {
      'question': '10. Impedimentos para tentativa (família, religião, etc.)',
      'options': [
        'Não tentaria por causa de impedimento',
        'Alguma preocupação sobre impedimentos',
        'Mínima ou nenhuma preocupação'
      ],
      'values': [0, 1, 2],
    },
    {
      'question': '11. Razões para tentativa contemplada',
      'options': [
        'Manipular ambiente, chamar atenção',
        'Componentes manipulativos e de fuga',
        'Escapar, resolver problemas'
      ],
      'values': [0, 1, 2],
    },
    {
      'question':
          '12. Método: especificidade/planejamento da tentativa contemplada',
      'options': [
        'Não considerado',
        'Considerado, mas detalhes não elaborados',
        'Detalhes elaborados/bem formulados'
      ],
      'values': [0, 1, 2],
    },
    {
      'question':
          '13. Método: acessibilidade/oportunidade para tentativa contemplada',
      'options': [
        'Método não disponível; sem oportunidade',
        'Método levaria tempo/esforço; oportunidade pouco provável',
        'Método e oportunidade disponíveis'
      ],
      'values': [0, 1, 2],
    },
    {
      'question': '14. Senso de "capacidade" para realizar tentativa',
      'options': [
        'Não tem coragem, muito fraco',
        'Incerto',
        'Certo de ter coragem'
      ],
      'values': [0, 1, 2],
    },
    {
      'question': '15. Expectativas/antecipação de tentativa real',
      'options': ['Não', 'Incerta', 'Sim'],
      'values': [0, 1, 2],
    },
    {
      'question': '16. Preparação real para tentativa contemplada',
      'options': ['Nenhuma', 'Parcial', 'Completa'],
      'values': [0, 1, 2],
    },
    {
      'question': '17. Bilhete suicida',
      'options': [
        'Nenhum',
        'Pensou sobre isso ou começou mas não terminou',
        'Completou'
      ],
      'values': [0, 1, 2],
    },
    {
      'question': '18. Atos finais em antecipação à morte',
      'options': [
        'Nenhum',
        'Pensou sobre isso ou fez algumas preparações',
        'Fez planos definidos ou terminou preparações'
      ],
      'values': [0, 1, 2],
    },
    {
      'question': '19. Enganação/ocultação da contemplação suicida',
      'options': [
        'Revelou ideias abertamente',
        'Relutante em revelar ideias',
        'Tentou enganar, ocultar, mentir'
      ],
      'values': [0, 1, 2],
    },
    {
      'question': '20. Resultado da tentativa anterior',
      'options': [
        'Nunca tentou suicídio',
        'Tentou uma vez',
        'Tentou múltiplas vezes'
      ],
      'values': [0, 1, 2],
    },
    {
      'question': '21. Intenção de morrer associada à última tentativa',
      'options': [
        'Não se aplica/nunca tentou',
        'Baixa intenção de morrer',
        'Alta intenção de morrer'
      ],
      'values': [0, 1, 2],
    },
  ];

  void _setAnswer(int index, int value) {
    setState(() {
      _answers[index] = value;
    });
  }

  int? _calculateTotal() {
    if (_answers.any((answer) => answer == null)) {
      return null;
    }
    return _answers.fold(0, (sum, answer) => sum! + answer!);
  }

  void _showIncompleteDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Atenção'),
          content: const Text('Faltam responder algumas perguntas!'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Fechar'),
            ),
          ],
        );
      },
    );
  }

  void _submitAnswers() {
    final total = _calculateTotal();
    if (total == null) {
      _showIncompleteDialog();
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AnswersScreen(
            score: widget.gdsScore,
            userType: widget.userType,
            ssiScore: total,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Escala de Ideação Suicida'),
        backgroundColor: Colors.red.shade300,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/logo_transparente.png"),
            fit: BoxFit.cover,
            opacity: 0.15, // 15% de opacidade para o background
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF1E1E1E),
              Color(0xFF121212),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                margin: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.red, width: 2),
                ),
                child: const Text(
                  'ATENÇÃO: Esta escala avalia ideação suicida. Se você está em crise, procure ajuda imediatamente.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(16.0),
                  itemCount: _questions.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.only(bottom: 16.0),
                      color: Theme.of(context).cardColor.withOpacity(0.5),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _questions[index]['question'],
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 12),
                            ...List.generate(
                              _questions[index]['options'].length,
                              (optionIndex) => RadioListTile<int>(
                                title: Text(
                                    _questions[index]['options'][optionIndex]),
                                value: _questions[index]['values'][optionIndex],
                                groupValue: _answers[index],
                                onChanged: (value) {
                                  if (value != null) {
                                    _setAnswer(index, value);
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _submitAnswers,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade300,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: const Text(
                      'Finalizar Avaliação',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
