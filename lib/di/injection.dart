import 'package:get_it/get_it.dart';
import 'package:pos/di/injection.iconfig.dart';

final GetIt getIt = GetIt.instance;
Future<void> configureGetIt() async {
  $initGetIt(getIt);
}
