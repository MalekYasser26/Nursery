import 'package:flutter/material.dart';
import 'package:nursery/features/home_screen/presentation/views/widgets/issue_a_complaint_body/issue_a_complaint_body.dart';

class IssueScreen extends StatelessWidget {
  const IssueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: IssueScreenBody(),
    );
  }
}
