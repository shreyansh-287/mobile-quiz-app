# Mobile quiz_app
Made a mobile quiz app where the user can give the quiz 
Quiz App
Overview
The Quiz App is a dynamic and engaging mobile application designed to facilitate interactive quizzes for users. The app allows users to participate in a series of multiple-choice questions (MCQs), guiding them through a seamless journey of learning and assessment. The app incorporates various features to enhance the user experience, including dynamic question rendering, result tracking, and an option to restart the quiz with a shuffled question order.

Features
Dynamic Question Rendering
The app dynamically renders questions on the screen, providing users with a continuous flow of new challenges. The implementation leverages Flutter's widget system to efficiently update the user interface and display relevant content based on the user's progress.

Flutter Properties Used:

Stateful Widgets: Used to manage the state of the app, allowing for dynamic updates and re-rendering of the UI when new questions are presented.
ListView Widget: Utilized to create a scrollable list of questions, ensuring a smooth transition between questions.
User Answer Handling
Users can select answers for each question, and upon selection, the app redirects them to the next page to reveal the subsequent question. The app captures and stores user responses to evaluate performance at the end of the quiz.

Flutter Properties Used:

GestureDetectors: Implemented to capture user interactions with answer choices, triggering the navigation to the next question.
Navigation Widget (Navigator): Employed to handle the flow between different screens, ensuring a seamless transition as users progress through the quiz.
Result Display
Upon completing the quiz, users are presented with a summary that includes all options selected throughout the quiz. Additionally, the app displays the number of questions attempted correctly and incorrectly, providing users with valuable feedback on their performance.

Flutter Properties Used:

AlertDialog Widget: Utilized to create a pop-up dialog displaying the quiz summary and results.
Conditional Rendering: Employed to dynamically display the user's selected options and calculate the quiz score.
Quiz Restart with Shuffled Questions
The app offers users the option to restart the quiz. When chosen, the quiz is reset, and the order of MCQ questions is shuffled to create a fresh and challenging experience.

Flutter Properties Used:

List Manipulation: Implemented to shuffle the order of questions when the quiz is restarted, ensuring variability in each quiz attempt.
GestureDetector and InkWell Widgets: Utilized to create an interactive restart button, enhancing the user interface.
Usage
To use the Quiz App, follow these steps:

Clone the repository to your local machine.
Open the project in a Flutter-compatible IDE.
Run the app on an emulator or physical device.
Enjoy the dynamic quiz experience and challenge yourself with shuffled questions on each restart!
