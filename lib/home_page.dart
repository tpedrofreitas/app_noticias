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
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: noticias.length,
              itemBuilder: (context, index) {
                final noticia = noticias[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  elevation: 0,
                  color: Colors.white,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                      color: Color(0xFFCBD2D9),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 120,
                        color: const Color(0xFFE4E9Ef),
                        child: const Icon(Icons.image_outlined),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFEFF4F8),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  child: Text(noticia['categoria']),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  noticia['data'],
                                  style: const TextStyle(
                                    color: Color(0xFF858D96),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              noticia['titulo'],
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              noticia['resumo'],
                              style: const TextStyle(
                                fontSize: 13,
                                color: Color(0xFF5B6B79),
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
