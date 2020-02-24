import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class idMusic extends StatefulWidget {
  @override
  _idMusicState createState() => _idMusicState();
}

class _idMusicState extends State<idMusic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.grey[50],  //cor de fundo do corpo

      appBar: AppBar(  //appbar separado do corpo

        title: Text(
            'Indentify Music',
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              letterSpacing: 1,
              fontWeight: FontWeight.bold,
            ),
        ),
        backgroundColor: Colors.grey[50], //cor do appbar
        elevation: 0,  //retirar a linha inferior
        centerTitle: true,   //centralizando o testo da appbar
        leading: Icon(    //leading icon é o icone da esquerda geralmente a seta
          Icons.arrow_back_ios,   //alterado o icone para seta do ios
          color: Colors.grey[600],   //adicionado cor cinza na seta
        ),
        actions: <Widget>[  //actions é os icones da direta no appbar
          IconButton(   //é adicionado um widget de icone botao
            onPressed: (){},
            icon: Icon(    //a propriedade icone recebe um widget icone
                Icons.access_time,  //selecionado o icone de relogio
                color: Colors.grey[600],
            ),
          ),
        ],
    ),


    body: Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
      child: Column(   //iniciada a coluna principal do corpo do app
        children: <Widget>[
          Expanded(  //expandir o container até o final da tela
            child: Center(   //container principal foi centralizado
              child: Container(   //container parte branca do meio
                width: MediaQuery.of(context).size.width,    //definindo a largura de acorod com a tela
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),

                child: Column(
                    children: <Widget>[
                      SizedBox(height: 40),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/idmusiccd.jpg'),
                        radius: 140,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Text(
                                'Without You',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                            ),
                            Text(
                              'Emmit Fenn, Drew Love',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),

                          ],
                        ),
                      ),


                      //CARD COM INFORMAÇÕES DO ALMBUM E COVER

                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                        child: Card(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/idmusiccd.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                    ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                          'Album',
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                          ),
                                      ),
                                      Text(
                                          'Without You',
                                          style: TextStyle(
                                            color: Colors.grey[500],
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                          ),
                                      ),
                                    ],
                                  ),
                                ),


                                Icon(
                                    Icons.arrow_right,
                                    color: Colors.grey[400],
                                    size: 40,
                                ),

                              ],
                            ),
                        ),
                      ),


                      //ICONES INFERIORES DE PLAY, FAVORITE E MENU

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.green[400],
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                            Icon(
                              Icons.favorite_border,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.more_horiz,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),

                    ],
                ),
              ),
            ),
          ),



          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: RichText(
              text: TextSpan(
                text: "Didn't find it?",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 18,
                ),

                children: <TextSpan>[
                  TextSpan(
                      text: ' Let us know',
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      )
                  ),
                ],
              ),
            ),
          )

        ],
      ),
    ),

    );
  }
}
