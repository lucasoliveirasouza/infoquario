import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:infoquario/models/forum.dart';

class ForumService {
  String? cadastrarForum(categoria, assunto, descricao, usuario, hora) {
    try {
      CollectionReference forumColecao =
          FirebaseFirestore.instance.collection('forum');
      forumColecao.add({
        'categoria': categoria,
        'assunto': assunto,
        'descricao': descricao,
        'usuario': usuario,
        'hora': hora,
      });
      return "Fórum cadastrado!";
    } on FirebaseException catch (e) {
      return e.message;
    }
  }

  Future<List<Forum?>?> getAll() async {
    List<Forum> foruns = [];
    try {
      QuerySnapshot snapshot = await FirebaseFirestore.instance
          .collection('forum')
          .orderBy("assunto")
          .get();
      snapshot.docs.forEach((d) {


        Forum forum = Forum(d.id, d["categoria"], d["assunto"], d["descricao"],
            d["usuario"], d["hora"]);
        foruns.add(forum);
      });
      return foruns;
    } on FirebaseException catch (e) {
      print(e.toString());
    }
    return foruns;
  }
}
