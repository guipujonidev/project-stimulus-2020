import 'package:flutter/material.dart';
import 'package:stimulus/components/mentoria/card_mentores.dart';

class PageMentores extends StatefulWidget {
  @override
  _PageMentoresState createState() => _PageMentoresState();
}

class _PageMentoresState extends State<PageMentores> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Mentores Stimulus',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        backgroundColor: Color(0xFF011526),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 10),
                  height: constraints.maxHeight * 0.26,
                  child: Image.asset('assets/mentores_principal.png'),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: constraints.maxWidth * 0.04,
                      right: constraints.maxWidth * 0.04,
                      bottom: 10),
                  child: Text(
                    'Esses sãos os atuais mentores do Projeto Estímulo, clique e converse com eles pelo WhatsApp:',
                    style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                    textAlign: TextAlign.center,
                  ),
                ),
                /*Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: outros.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: CardMentores(
                          imagemPerfil: '${mentores[index][0]}',
                          nomeMentor: '${mentores[index][1]}',
                          areaMentor: '${mentores[index][2]}',
                          classificacaoMentor: '${mentores[index][3]}',
                        ),
                      );
                    },
                  ),
                ),*/
              ],
            );
          },
        ),
      ),
    );
  }
}
