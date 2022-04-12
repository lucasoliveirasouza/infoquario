import 'package:flutter/material.dart';
import 'package:infoquario/view/crustaceo/crustaceo_cadastro.dart';
import 'package:infoquario/view/crustaceo/crustaceo_tipo.dart';
import 'package:infoquario/widget/card_item.dart';

class CrustaceoView extends StatefulWidget {
  const CrustaceoView({Key? key}) : super(key: key);

  @override
  _CrustaceoViewState createState() => _CrustaceoViewState();
}

class _CrustaceoViewState extends State<CrustaceoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crustáceos"),
      ),
      body: Container(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            CardItem(
              image: "crustaceos/crustaceos.png",
              title: "Água doce",
              color: Colors.green.shade100,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        CrustaceoTipoView(tipoAgua: "Água doce"),
                  ),
                );
              },
            ),
            CardItem(
              image: "crustaceos/frutos_do_mar.png",
              title: "Água salgada",
              color: Colors.green.shade100,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        CrustaceoTipoView(tipoAgua: "Água salgada"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CrustaceoCadastroView(),
            ),
          );
        },
      ),
    );
  }
}
