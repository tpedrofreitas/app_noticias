import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static final List<Map<String, dynamic>> noticias = [
    {
      'titulo': 'Nova tecnologia facilita o dia a dia',
      'resumo':
          'Novas ferramentas tecnológicas estão ajudando pessoas em suas atividades diárias.',
      'categoria': 'Tecnologia',
      'data': '23/09/2026',
    },
    {
      'titulo': 'Mercado de smartphones cresce no Brasil',
      'resumo':
          'O mercado brasileiro de smartphones apresentou crescimento durante este ano.',
      'categoria': 'Tecnologia',
      'data': '22/09/2026',
    },
    {
      'titulo': 'Time local vence campeonato',
      'resumo':
          'Equipe conquistou uma importante vitória na final realizada neste fim de semana.',
      'categoria': 'Esportes',
      'data': '21/09/2026',
    },
    {
      'titulo': 'Evento cultural acontece neste sábado',
      'resumo':
          'A cidade receberá apresentações musicais e atividades culturais gratuitas.',
      'categoria': 'Cultura',
      'data': '20/09/2026',
    },
    {
      'titulo': 'Aplicativos ajudam na organização financeira',
      'resumo':
          'Novos aplicativos permitem controlar gastos e organizar melhor o orçamento.',
      'categoria': 'Economia',
      'data': '19/09/2026',
    },
  ];

  static final List<String> categorias = [
    "Todas",
    "Tecnologia",
    "Esporte",
    "Cultura",
    "Economia",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/img/logotipo.png',
          height: 20,
        ),
        centerTitle: true,
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.search),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: Column(
        children: [
          SizedBox(
            height: 45,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              children: categorias.map((categoria) {
                final selecionada = categoria == "Todas";

                return Container(
                  margin: const EdgeInsets.only(right: 8),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: selecionada
                          ? Colors.black
                          : const Color(0xFFEDEDED),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(categoria, style: const TextStyle(fontSize: 12)),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
