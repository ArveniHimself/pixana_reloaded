import 'package:flutter/material.dart';
import 'package:pixana_reloaded/shared/constants/clickable_comments.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.96,
      child: Column(
        children: [
          // The chosen clickable comment
          Padding(
            padding: const EdgeInsets.only(left: 5, bottom: 5, top: 5, right: 5),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.25, color: Colors.black),
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text("Click on a comment to select it"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // All comments wrapped
          Expanded(
            child: SingleChildScrollView(
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                runSpacing: -10,
                children: testComments
                    .map(
                      (comment) => Padding(
                        padding: const EdgeInsets.all(1),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            side: const BorderSide(color: Colors.grey),
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(comment),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
