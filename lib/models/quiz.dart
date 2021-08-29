class Quiz {
  final String? statement;
  final List<QuizOption>? options;
  final String? correctOptionId;

  Quiz({this.statement, this.options, this.correctOptionId});
}

class QuizOption {
  final String id;
  final String option;

  QuizOption(this.id, this.option);
}

List<Quiz> quizList = [
  Quiz(
    statement: r"""<h3>What is the correct form of quadratic formula?</h3>""",
    options: [
      QuizOption(
        "id_1",
        r""" <h2>(A)   \(x = {-b \pm \sqrt{b^2+4ac} \over 2a}\)</h2>""",
      ),
      QuizOption(
        "id_2",
        r""" <h2>(B)   \(x = {b \pm \sqrt{b^2-4ac} \over 2a}\)</h2>""",
      ),
      QuizOption(
        "id_3",
        r""" <h2>(C)   \(x = {-b \pm \sqrt{b^2-4ac} \over 2a}\)</h2>""",
      ),
      QuizOption(
        "id_4",
        r""" <h2>(D)   \(x = {-b + \sqrt{b^2+4ac} \over 2a}\)</h2>""",
      ),
    ],
    correctOptionId: "id_3",
  ),
  Quiz(
    statement:
    r"""<h3>Choose the correct mathematical form of Bohr's Radius.</h3>""",
    options: [
      QuizOption(
        "id_1",
        r""" <h2>(A)   \( a_0 = \frac{{\hbar ^2 }}{{m_e ke^2 }} \)</h2>""",
      ),
      QuizOption(
        "id_2",
        r""" <h2>(B)   \( a_0 = \frac{{\hbar ^2 }}{{m_e ke^3 }} \)</h2>""",
      ),
      QuizOption(
        "id_3",
        r""" <h2>(C)   \( a_0 = \frac{{\hbar ^3 }}{{m_e ke^2 }} \)</h2>""",
      ),
      QuizOption(
        "id_4",
        r""" <h2>(D)   \( a_0 = \frac{{\hbar }}{{m_e ke^2 }} \)</h2>""",
      ),
    ],
    correctOptionId: "id_1",
  ),
  Quiz(
    statement: r"""<h3>Select the correct Chemical Balanced Equation.</h3>""",
    options: [
      QuizOption(
        "id_1",
        r""" <h2>(A)   \( \ce{CO + C -> 2 CO} \)</h2>""",
      ),
      QuizOption(
        "id_2",
        r""" <h2>(B)   \( \ce{CO2 + C ->  CO} \)</h2>""",
      ),
      QuizOption(
        "id_3",
        r""" <h2>(C)   \( \ce{CO + C ->  CO} \)</h2>""",
      ),
      QuizOption(
        "id_4",
        r""" <h2>(D)   \( \ce{CO2 + C -> 2 CO} \)</h2>""",
      ),
    ],
    correctOptionId: "id_4",
  ),
];
