import 'package:flutter/animation.dart';

class CustAnimation  {
  final AnimationController AnimatedController ;
   late final Animation<Offset> rtlAnimation ;
   late final Animation<Offset> ltrAnimation ;
   late final Animation<Offset> ltrAnimationLogo ;
   late final Animation<Offset> dtpAnimation ;
   late final Animation<Offset> ptdAnimation ;
   late final Animation <double> FadeInAnimation ;

   CustAnimation(this.AnimatedController) {
     rtlAnimation = Tween<Offset>(
       end: Offset(0.0, 0.0),
       begin: Offset(1.0, 0.0)
   ).animate(CurvedAnimation(
       parent: AnimatedController, curve: Curves.easeInOut));
     ltrAnimation = Tween<Offset>(
       end: Offset(0.0, 0.0),
       begin: Offset(-1.0, 0.0)
   ).animate(CurvedAnimation(
       parent: AnimatedController, curve: Curves.easeInOut));
     ltrAnimationLogo = Tween<Offset>(
         end: Offset(0.0, 0.0),
         begin: Offset(-8.0, 0.0)
     ).animate(CurvedAnimation(
         parent: AnimatedController, curve: Curves.easeInOut));

     dtpAnimation = Tween<Offset>(
       end: Offset(0.0, 0.0),
       begin: Offset(0, 8.0)
   ).animate(CurvedAnimation(
       parent: AnimatedController, curve: Curves.bounceIn));
     ptdAnimation = Tween<Offset>(
       end: Offset(0.0, 0.0),
       begin: Offset(0, -4.0)
   ).animate(CurvedAnimation(
       parent: AnimatedController, curve: Curves.bounceIn));
     FadeInAnimation= Tween(begin:-7.0 , end:2.0 ).animate(AnimatedController);
}
  @override
  void dispose() {
    AnimatedController.dispose();
  }}


