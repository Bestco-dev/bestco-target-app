import 'package:flutter/material.dart';
import 'package:flutter_survey/flutter_survey.dart';
import 'package:progress_stepper/progress_stepper.dart';

import '../../../common/res/colors.dart';
import '../../../common/res/gaps.dart';

class CheckMobilePage extends StatefulWidget {
  const CheckMobilePage({Key? key}) : super(key: key);

  @override
  State<CheckMobilePage> createState() => _CheckMobilePageState();
}

class _CheckMobilePageState extends State<CheckMobilePage> {
  final _formKey = GlobalKey<FormState>();
  final List<Question> _initialData = [
    Question(
      isMandatory: true,
      question: 'Do you like drinking coffee?',
      answerChoices: {
        "Yes": [
          Question(
            question: "What is your name?",
            isMandatory: true,
          ),
          Question(
              singleChoice: false,
              question: "What are the brands that you've tried?",
              answerChoices: {
                "Nestle": null,
                "Starbucks": null,
                "Coffee Day": [
                  Question(
                    question: "Did you enjoy visiting Coffee Day?",
                    isMandatory: true,
                    answerChoices: {
                      "Yes": [
                        Question(
                          question: "Please tell us why you like it",
                        )
                      ],
                      "No": [
                        Question(
                          question: "Please tell us what went wrong",
                        )
                      ],
                    },
                  )
                ],
              })
        ],
        "No": [
          Question(
            question: "Do you like drinking Tea then?",
            answerChoices: {
              "Yes": [
                Question(
                    question: "What are the brands that you've tried?",
                    answerChoices: {
                      "Nestle": null,
                      "ChaiBucks": null,
                      "Indian Premium Tea": [
                        Question(
                          question: "Did you enjoy visiting IPT?",
                          answerChoices: {
                            "Yes": [
                              Question(
                                question: "Please tell us why you like it",
                              )
                            ],
                            "No": [
                              Question(
                                question: "Please tell us what went wrong",
                              )
                            ],
                          },
                        )
                      ],
                    })
              ],
              "No": null,
            },
          )
        ],
      },
    ),
    Question(
        question: "What age group do you fall in?",
        isMandatory: true,
        answerChoices: const {
          "18-20": null,
          "20-30": null,
          "Greater than 30": null,
        }),
    Question(question: "What age group do you fall in?")
  ];
  int _chevronCounter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Process visit"),
      ),
      backgroundColor: ResColors.background,
      body: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                color: Colors.white,
                width: double.infinity,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: ProgressStepper(
                    width: 300,
                    height: 24,
                    stepCount: 4,
                    color: Colors.grey[300]!,
                    progressColor: ResColors.primary,
                    currentStep: _chevronCounter,
                  ),
                ),
              ),
              ResVerticalGap.gap05,
              Expanded(
                child: Survey(
                  builder: (context, model, update) {
                    return QuestionCard(
                      key: ObjectKey(model),
                      question: model,
                      update: update,
                      validator: (value) {
                        if (model.isMandatory && value == null) {
                          return model.errorText ?? "This field is mandatory*";
                        }
                        if (model.isMandatory && model.answerChoices.isEmpty ) {
                          return model.errorText ?? "This field is mandatory*";
                        }
                        return null;
                      },
                      defaultErrorText:
                          model.errorText ?? "This field is mandatory*",
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    );
                  },
                  onNext: (questionResults) {},
                  initialData: _initialData,
                ),
              )
            ],
          )),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(100, 48)),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                      }
                      // if (_chevronCounter < 4) {
                      //   setState(() {
                      //     _chevronCounter = _chevronCounter + 1;
                      //   });
                      // }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(_chevronCounter == 4 ? "Submit" : "Next"),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
