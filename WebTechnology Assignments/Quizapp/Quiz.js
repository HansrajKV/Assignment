function PageRedirect(){
        window.location.href = "Quiz2.html";
        localStorage.setItem("count", 0)
}
var count=0;
function PageRedirect1(){
    var question1 = document.querySelector('input[name="Question"]:checked').value;
    if(question1 == 'Six'){
       
        var x = localStorage.getItem("count");
        x++;
        localStorage.setItem("count",x);
        window.location.href = "Quiz3.html";
    }
    else{
        window.location.href = "Quiz3.html";
    }
    
    
}

function PageRedirect2(){
    var question2 = document.querySelector('input[name="Questionew"]:checked').value;
    if(question2 == 'CaptainAmerica'){
        var x = localStorage.getItem("count");
        x++;
        localStorage.setItem("count",x);
        window.location.href = "Quiz4.html";
    }
    else{
        window.location.href = "Quiz4.html";
    }
    
}

function PageRedirect3(){
    var question3 = document.querySelector('input[name="Questionew1"]:checked').value;
    if(question3 == 'Captain America: Civil war'){
        var x = localStorage.getItem("count");
        x++;
        localStorage.setItem("count",x);
        window.location.href = "Quiz5.html";
    }
    else{
        window.location.href = "Quiz5.html";
    }
    
}

function PageRedirect4(){
    var question3 = document.querySelector('input[name="Questionew2"]:checked').value;
    if(question3 == 'Morgan Stark'){
        var x = localStorage.getItem("count");
        x++;
        localStorage.setItem("count",x);
        window.location.href = "Quiz6.html";
    }
    else{
        window.location.href = "Quiz6.html";
    }
    
}

function PageRedirect5(){
    var question3 = document.querySelector('input[name="Questionew3"]:checked').value;
    if(question3 == 'Avengers Endgame'){
        var x = localStorage.getItem("count");
        x++;
        localStorage.setItem("count",x);
        window.location.href = "Quiz7.html";
    }
    else{
        window.location.href = "Quiz7.html";
    }
    
}

function PageRedirect6(){
    let text = "Your Score is: " + localStorage.getItem("count");
    document.write(text.fontsize(12));
    setTimeout(myFunction,7000);
    function myFunction(){
        window.location.href = "StartQuiz.html";
    }
    
}
