import 'package:fhirlite/fhirlite.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StyledOvalTextFormField extends HookConsumerWidget {
  const StyledOvalTextFormField({
    this.prefixIcon,
    this.label,
    this.controller,
    this.percentWidth = 1.3,
    this.breakPoint = 400,
    super.key,
  });

  final Widget? prefixIcon;
  final String? label;
  final TextEditingController? controller;
  final double percentWidth;
  final double breakPoint;

  @override
  Widget build(BuildContext context, WidgetRef ref) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25.0),
          boxShadow: [
            BoxShadow(
              offset: const Offset(5, 5),
              blurRadius: 10.0,
              color: Colors.black.withOpacity(0.3),
            ),
          ],
        ),
        child: SizedBox(
          width: doubleByPercentWidth(context, 1.3) > breakPoint
              ? breakPoint
              : doubleByPercentWidth(context, 1.3),
          child: TextFormField(
            controller: controller,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1,
                    color: ref
                        .read(clientThemeProvider)
                        .data
                        .colorScheme
                        .onBackground),
                borderRadius: BorderRadius.circular(30.0),
              ),
              label: label == null ? null : Text(label!),
              prefixIcon: prefixIcon,
            ),
          ),
        ),
      );
}
