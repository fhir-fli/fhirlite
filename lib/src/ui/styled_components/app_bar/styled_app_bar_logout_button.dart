// Flutter imports:
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'app_bar.dart';

class StyledAppBarLogoutButton extends StatelessWidget {
  const StyledAppBarLogoutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StyledAppBarIconButtons(
      icon: MdiIcons.logout,
      onPressed: () => styledAppLogoutConfirmation(context),
    );
  }
}
