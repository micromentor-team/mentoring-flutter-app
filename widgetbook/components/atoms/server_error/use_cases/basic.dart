import 'package:mm_flutter_app/widgets/atoms/server_error.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase basic() {
  return WidgetbookUseCase(
      name: 'Basic',
      builder: (context) {
        return ServerError(
          error: context.knobs.options(label: 'Error Text ', options: [
            const Option(
              label: 'Basic',
              value: 'Server error occured',
            ),
            const Option(
              label: '404',
              value: '404 not found',
            ),
          ]),
        );
      });
}
