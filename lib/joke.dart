import 'package:meta/meta.dart';

class Joke {
  Joke({
    required this.id,
    required this.type,
    required this.setup,
    required this.punchline,
  });

  final int id;
  final String type;
  final String setup;
  final String punchline;
}

final List<Joke> jokeslist = <Joke>[
  Joke(
      id: 1,
      type: "Kids Jokes",
      setup: "What's a banana peel's favorite type of shoe?",
      punchline: "Slippers!"),
  Joke(
      id: 2,
      type: "Kids Jokes",
      setup: "Why is Cinderella so bad at soccer?",
      punchline: "Because she always runs away from the ball!"),
  Joke(
      id: 3,
      type: "Kids Jokes",
      setup: "Why is Peter Pan flying all the time?",
      punchline: "He Neverlands!"),
  Joke(
      id: 4,
      type: "Coffee Jokes",
      setup: " How do you take your coffee?",
      punchline: "Very, very seriously."),
  Joke(
      id: 5,
      type: "Coffee Jokes",
      setup: "Why are Italians so good at making coffee?",
      punchline: "Because they know how to espresso themselves."),
  Joke(
      id: 5,
      type: "Coffee Jokes",
      setup: "How are coffee beans like kids?",
      punchline: "They're always getting grounded!"),
  Joke(
      id: 5,
      type: "Coffee Jokes",
      setup: "Where do birds go for coffee?",
      punchline: "To the NESTcafe"),
];
