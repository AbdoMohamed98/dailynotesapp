import 'package:dailynotesapp/core/navigation/approutes.dart';
import 'package:dailynotesapp/views/editnoteview.dart';

import 'package:dailynotesapp/views/notesview.dart';
import 'package:go_router/go_router.dart';

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
