import 'package:bloc/bloc.dart';
import 'package:talker_logger/talker_logger.dart';

enum PixanaThemeMode { light, dark }

class ThemeModeCubit extends Cubit<PixanaThemeMode> {
  ThemeModeCubit() : super(PixanaThemeMode.light);

  void toggleMode() {
    // Create instance
    final infoLogger = TalkerLogger(
      settings: TalkerLoggerSettings(
        colors: {
          LogLevel.good: AnsiPen()..green(),
          LogLevel.critical: AnsiPen()..red(),
          LogLevel.error: AnsiPen()..red(),
          LogLevel.info: AnsiPen()..yellow(),
        },
        maxLineWidth: 100,
        lineSymbol: '━',
        enableColors: true,
      ),
    );
    infoLogger.info(
        'ToggleThemeMode: Old [${state.toString()}] , New [${state == PixanaThemeMode.light ? PixanaThemeMode.dark.toString() : PixanaThemeMode.light.toString()}]');

    emit(state == PixanaThemeMode.light ? PixanaThemeMode.dark : PixanaThemeMode.light);
  }
}
