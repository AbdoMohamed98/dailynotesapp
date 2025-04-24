
import 'package:go_router/go_router.dart';
import 'package:mahmoud/core/navigation/approutes.dart';
import 'package:mahmoud/views/editnoteview.dart';
import 'package:mahmoud/views/notesview.dart';

class RouterGenerationConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: Approutes.notesview,
    routes: [
      GoRoute(
        path: Approutes.notesview,
        name: Approutes.notesview,
        builder: (context, state) => const Notesview(),
      ),
      GoRoute(path: Approutes.editnoteview,
        name: Approutes.editnoteview,
        builder: (context, state) => const Editnoteview(),
      ),
     
    ],
  );
}
