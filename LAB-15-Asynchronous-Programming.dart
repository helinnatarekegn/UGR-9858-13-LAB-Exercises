import 'dart:async';
import 'dart:math';


Future<String> fetchRandomQuote() async {
  
  await Future.delayed(Duration(seconds: 2)); 

  List<String> quotes = [
    "Be brave enough to start a conversation that matters.",
    "Set a goal to achieve something that is so big, so exhilarating that it excites you and scares you at the same time.",
    "See yourself living in abundance and you will attract it.",
    "If you know what to do to reach your goal, it’s not a big enough goal.",
    "We come this way but once. We can either tiptoe through life and hope that we get to death without being too badly bruised or we can live a full, complete life achieving our goals and realizing our wildest dreams.",
    "People with clear, written goals, accomplish far more in a shorter period of time than people without them could ever imagine.",
    "The only limits in our life are those that we impose on ourselves.",
    "Thoughts become things. If you see it in your mind, you will hold it in your hand.",
    "All of the great achievers of the past have been visionary figures; they were men and women who projected into the future. They thought of what could be, rather than what already was, and then they moved themselves into action, to bring these things into fruition.",
    "What you think about most of the time is what you become. ",
    "You are the only problem you will ever have and you are the solution. ",
    "What you think about, you bring about. You are what you think about all day long.",
    "Most people are not going after what they want. Even some of the most serious goal seekers and goal setters, they’re going after what they think they can get.",
    
  ];

  
  Random random = Random();
  int index = random.nextInt(quotes.length);

  return quotes[index];
}

void main() async {
  
  String quote = await fetchRandomQuote();

  
  print("Random Quote by Bob Proctor: $quote");
}
