class ProcessResult {
  final String? acceptedState;
  final String currentState;
  final List<String?> statesHistory;

  ProcessResult(this.acceptedState, this.currentState, this.statesHistory);
}

class Automaton {
  // States
  static const String initialState = 'q0';
  static const List acceptState = ['q14', 'q9', 'q18'];
  static const String errorState = 'qe';

  // Alphabet
  static final Set<String> alphabetKP = {'K', 'L', 'M', 'N', 'O', 'P'};
  static final Set<String> alphabet =
      Set<String>.from('ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split(''));
  static final Set<String> numbers = Set<String>.from('0123456789'.split(''));
  static final Set<String> numbersNo = Set<String>.from('123456789'.split(''));

  final Map<String, Map<String, String>> transitions = {
    initialState: {'U': 'q1'},
    'q1': {for (var char in alphabetKP) char: 'q2'},
    'q2': {for (var char in alphabet) char: 'q3'},
    'q3': {'-': 'q4'},
    'q4': {'0': 'q5', for (var char in numbersNo) char: 'q10'},
    'q5': {'0': 'q6', for (var char in numbersNo) char: 'q15'},
    'q6': {for (var char in numbersNo) char: 'q7'},
    'q7': {'-': 'q8'},
    'q8': {for (var char in alphabet) char: 'q9'},
    'q9': {},
    'q10': {for (var char in numbers) char: 'q11'},
    'q11': {for (var char in numbers) char: 'q12'},
    'q12': {'-': 'q13'},
    'q13': {for (var char in alphabet) char: 'q14'},
    'q14': {},
    'q15': {for (var char in numbers) char: 'q16'},
    'q16': {'-': 'q17'},
    'q17': {for (var char in alphabet) char: 'q18'},
    'q18': {},
    errorState: {},
  };

  ProcessResult processString(String inputString) {
    String? currentState = initialState;
    String? lastAcceptedState;

    final List<String?> statesHistory = [];

    for (final codeUnit in inputString.runes) {
      final char = String.fromCharCode(codeUnit);
      if (transitions.containsKey(currentState) &&
          transitions[currentState]!.containsKey(char)) {
        currentState = transitions[currentState]?[char];
        if (acceptState.contains(currentState)) {
          lastAcceptedState = currentState;
        }
      } else {
        currentState = errorState;
        break;
      }
      statesHistory.add(currentState);
    }

    if ((currentState == errorState && statesHistory.isNotEmpty) ||
        (lastAcceptedState == null && statesHistory.isNotEmpty)) {
      statesHistory.removeLast();
    }

    return ProcessResult(lastAcceptedState, currentState!, statesHistory);
  }
}
