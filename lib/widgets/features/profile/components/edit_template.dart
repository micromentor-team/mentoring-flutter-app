import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

import '../../../../providers/models/scaffold_model.dart';

class EditTemplate extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget body;
  final void Function(void Function(ScaffoldModel)) scaffoldBuilder;
  final Future Function()? editUserProfile;

  const EditTemplate({
    super.key,
    required this.title,
    this.subtitle,
    required this.body,
    required this.scaffoldBuilder,
    this.editUserProfile,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final GoRouter router = GoRouter.of(context);
    scaffoldBuilder(
      (scaffoldModel) => scaffoldModel.setParams(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () async {
              if (editUserProfile != null) {
                await editUserProfile!();
              }
              router.pop();
            },
            icon: Icon(
              Icons.navigate_before,
              color: theme.colorScheme.primary,
            ),
          ),
          title: Text(
            title,
            style: theme.textTheme.headlineSmall?.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
          centerTitle: true,
        ),
        hideNavBar: true,
      ),
    );
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppEdgeInsets.paddingCompact,
          horizontal: Insets.paddingExtraLarge,
        ),
        child: Column(
          children: [
            const SizedBox(height: Insets.paddingLarge),
            if (subtitle != null) ...[
              Text(
                subtitle!,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.secondary,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: Insets.paddingLarge),
            ],
            body,
          ],
        ),
      ),
    );
  }
}
