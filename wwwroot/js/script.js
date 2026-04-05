var acc = document.getElementsByClassName("question__header");
var i;

function showSidebar() {
    const sidebar = document.querySelector('.sidebar')
    sidebar.style.display = 'flex'
}

function hideSidebar() {
    const sidebar = document.querySelector('.sidebar')
    sidebar.style.display = 'none'
}

for (i = 0; i < acc.length; i++) {
    acc[i].addEventListener("click", function () {
        this.classList.toggle("active");
        var question_answer = this.nextElementSibling;
        if (question_answer.style.display === "block") {
            question_answer.style.display = "none";
        } else {
            question_answer.style.display = "block";
        }
    });
}