import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/home/home_state.dart';
import 'package:devquiz/shared/models/awnser_model.dart';
import 'package:devquiz/shared/models/question_model.dart';
import 'package:devquiz/shared/models/quiz_model.dart';
import 'package:devquiz/shared/models/user_model.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = UserModel(
      name: "José",
      photoUrl: "https://avatars.githubusercontent.com/u/50416284?v=4",
    );
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
        title: "NLW 5 Flutter",
        questionAnswered: 1,
        image: AppImages.blocks,
        level: Level.facil,
        questions: [
          QuestionModel(
            title: "Está curtindo o Flutter?",
            awnsers: [
              AwnserModel(title: "Estou curtindo"),
              AwnserModel(title: "Estou adorandno"),
              AwnserModel(title: "Estou amando"),
              AwnserModel(title: "Estou muito top", isRight: true),
            ],
          ),
          QuestionModel(
            title: "Está curtindo o Flutter?",
            awnsers: [
              AwnserModel(title: "Estou curtindo"),
              AwnserModel(title: "Estou adorandno"),
              AwnserModel(title: "Estou amando"),
              AwnserModel(title: "Estou muito top", isRight: true),
            ],
          ),
        ],
      ),
    ];
    state = HomeState.success;
  }
}
