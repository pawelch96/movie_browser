import 'package:flutter/material.dart';
import 'package:flutter_recruitment_task/generated/l10n.dart';

class ErrorGenericWidget extends StatelessWidget {
  const ErrorGenericWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      alignment: Alignment.center,
      child: Text(
        S.of(context).errorGenericText,
      ),
    );
  }
}
