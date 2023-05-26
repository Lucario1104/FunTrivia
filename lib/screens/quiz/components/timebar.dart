import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:trivia_app/controller/questions_controller.dart';

class timebar extends StatelessWidget {
  const timebar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(50)),
      child: GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (controller) {
          return Stack(
            children: [
              LayoutBuilder(
                builder: (context, constraints) => Container(
                  width: constraints.maxWidth * controller.animation.value,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.white70, Colors.deepPurple],
                      ),
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
              Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${(controller.animation.value * 20).round()} Secs",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 15, color: Colors.white),
                        ),
                        Icon(Icons.lock_clock, color: Colors.white)
                      ],
                    ),
                  ))
            ],
          );
        }
      ),
    );
  }
}