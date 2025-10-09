import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: data['user_answer'] == data['correct_answer']
                          ? Colors.blue
                          : Colors.pinkAccent,
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: TextStyle(
                          color: const Color.fromARGB(255, 238, 231, 231),
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        data['user_answer'] as String,
                        style: TextStyle(
                          color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        data['correct_answer'] as String,
                        style: TextStyle(
                          color: const Color.fromARGB(255, 117, 186, 243),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
