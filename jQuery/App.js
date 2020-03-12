function populate() {
    if(quiz.isEnded()) {
        showScores();
    }
    else {
        var element = document.getElementById("question");
        element.innerHTML = quiz.getQuestionIndex().text;

        var choices = quiz.getQuestionIndex().choices;
        for(var i = 0; i < choices.length; i++) {
            var element = document.getElementById("choice" + i);
            element.innerHTML = choices[i];
            guess("btn" + i, choices[i]);
        }

        showProgress();
    }
};

function guess(id, guess) {
    var button = document.getElementById(id);
    button.onclick = function() {
        quiz.guess(guess);
        populate();
    }
};


function showProgress() {
    var currentQuestionNumber = quiz.questionIndex + 1;
    var element = document.getElementById("progress");
    element.innerHTML = "Question " + currentQuestionNumber + " of " + quiz.questions.length;
};

function showScores() {
    var gameOverHTML = "<h1>Result</h1>";
    gameOverHTML += "<h2 id='score'> Your scores: " + quiz.score + "</h2>";
    var element = document.getElementById("quiz");
    element.innerHTML = gameOverHTML;
};

var questions = [
    new Question("Hisenberg was the character of...?", ["The Walking Dead", "Breaking Bad","Game of Thrones", "Stranger Things"], "Breaking Bad"),
    new Question("Director of The Dark Knight is...", ["Christopher Nolan", "James Cameron", "Steven Spielberg", "Peter Jackson"], "Christopher Nolan"),
    new Question("Valar Morghulis means...", ["All Men Must Live", "All Men Must Die","All Men Must Cry", "All Men Must Fly"], "All Men Must Die"),
    new Question("Who Killed Glenn ?", ["Negan", "Rick", "Maggie", "Carl"], "Negan"),
    new Question("Total No of Deathly Hallows in Harry Potter ?", ["1", "2", "3", "4"], "3")
];


var quiz = new Quiz(questions);

populate();