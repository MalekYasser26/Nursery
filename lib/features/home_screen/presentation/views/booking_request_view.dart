import 'package:flutter/material.dart';
import 'package:nursery/features/home_screen/presentation/views/widgets/booking_request_body/booking_request_body.dart';
class BookingRequestView extends StatelessWidget {
  const BookingRequestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:BookingRequestBody() ,
    );
  }
}
