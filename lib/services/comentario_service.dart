import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:infoquario/models/comentario.dart';
import 'package:infoquario/models/forum.dart';

class ComentarioService {
  String? cadastrarComentario(comentario) {
    try {
      CollectionReference comentarioColecao =
          FirebaseFirestore.instance.collection('comentario');
      comentarioColecao.add({
        comentario
      });
      return "Comentário cadastrado!";
    } on FirebaseException catch (e) {
      return e.message;
    }
  }

  Future<List<Comentario?>?> getAll(id) async {
    List<Comentario> comentarios = [];
    try {
      QuerySnapshot snapshot = await FirebaseFirestore.instance
          .collection('comentario')
          .orderBy("hora")
          .get();
      snapshot.docs.forEach((d) {
        if (id == d["idForum"]) {
          Comentario comentario =
              Comentario(d["descricao"], d["usuario"], d["hora"], d["idForum"]);
          comentarios.add(comentario);
        }
      });
      return comentarios;
    } on FirebaseException catch (e) {
      print(e.toString());
    }
    return comentarios;
  }
}
