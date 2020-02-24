import 'package:flutter/material.dart';
import 'quote.dart';

class profileMusicCard extends StatelessWidget {

  final String imgMusica;
  profileMusicCard({this.imgMusica});  


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[
            
            Image.asset('assets/img')
            
            Text(

              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],

              ),
            ),

            SizedBox(height: 6),

            Text(
              quote.author,
              style: TextStyle(

                fontSize: 14,
                color: Colors.grey[800],

              ),
            ),

            SizedBox(height: 8),
            FlatButton.icon(
              onPressed: delete, //CHAMA A FUNC DELETE DO CARD EM QUESTAO E RECONSTROI O BODY SEM A QUOTE DA LISTA
              label: Text('Delete item'),
              icon: Icon(Icons.delete),

            ),



          ],

        ),
      ),

    );
  }
}
