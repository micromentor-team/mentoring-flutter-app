import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int _dotIndicatorIndex = 0; //TODO: Use this to change picture and text

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Center(
                child: SizedBox(
                  height: Insets.paddingLarge,
                ),
              ),
              Text(
                l10n.welcomeTitle,
                style: theme.textTheme.headlineSmall?.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
              const SizedBox(
                height: Insets.paddingMedium,
              ),
              Text(
                l10n.welcomeSubtitle,
                style: theme.textTheme.titleMedium?.copyWith(
                  color: theme.colorScheme.outline,
                ),
              ),
              SizedBox(
                height: 240,
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    theme.colorScheme.onSurface,
                    BlendMode.srcATop,
                  ),
                  child: const Image(
                    image: AssetImage(Assets.startScreenStockImage),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(Insets.paddingSmall),
                child: SizedBox(
                  width: 320,
                  child: Text(
                    l10n.welcomePreviewSlide1,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.outline,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: Insets.paddingMedium),
              DotsIndicator(
                dotsCount: 3,
                position: _dotIndicatorIndex,
                decorator: DotsDecorator(
                  activeColor: theme.colorScheme.primary,
                  color: theme.colorScheme.outline,
                  activeSize: const Size.fromRadius(6),
                ),
                onTap: (position) =>
                    setState(() => _dotIndicatorIndex = position),
              ),
              const SizedBox(height: Insets.paddingMedium),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  padding: const EdgeInsets.symmetric(
                    vertical: Insets.paddingMedium,
                    horizontal: Insets.paddingExtraLarge,
                  ),
                ),
                onPressed: () {
                  context.push(Routes.signup.path);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Insets.paddingExtraLarge,
                  ),
                  child: Text(
                    l10n.welcomeButtonLabel,
                    style: theme.textTheme.labelLarge?.copyWith(
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: Insets.paddingExtraLarge),
              InkWell(
                child: Text(
                  l10n.welcomeLoginPrompt,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: theme.colorScheme.primary,
                    decoration: TextDecoration.underline,
                  ),
                ),
                onTap: () {
                  context.push(Routes.signin.path);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
