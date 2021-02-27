
let headers = ['Title', 'Box Office', 'Active', 'Date Of Launch', 'Genre', 'Has Teaser'];
var movie = [{ title: 'Avatar', boxoffice: '$2,787,965,087', active: 'Yes', dateoflaunch: '15/03/2017', genre: 'Science Fiction', hasteaser: 'Yes' },
{ title: 'The Avengers', boxoffice: '$1,518,812,988', active: 'Yes', dateoflaunch: '23/12/2017', genre: 'Superhero', hasteaser: 'No' },
{ title: 'Titanic', boxoffice: '$2,187,463,944', active: 'Yes', dateoflaunch: '21/08/2017', genre: 'Romance', hasteaser: 'No' },
{ title: 'Jurassic World', boxoffice: '$1,671,713,208', active: 'No', dateoflaunch: '02/07/2017', genre: 'Science Fiction', hasteaser: 'Yes' },
{ title: 'Avengers:End Game', boxoffice: '$2,750,760,348', active: 'Yes', dateoflaunch: '02/11/2017', genre: 'Superhero', hasteaser: 'Yes' }];

function CreateTable() {


    for (var i = 0; i < movie.length; i++) {
        var table = document.getElementById("t1");

        newRow = table.insertRow(i + 1);
        cell1 = newRow.insertCell(0);
        cell2 = newRow.insertCell(1);
        cell3 = newRow.insertCell(2);
        cell4 = newRow.insertCell(3);
        cell5 = newRow.insertCell(4);
        cell6 = newRow.insertCell(5);
        cell7 = newRow.insertCell(6);
        cell1.innerHTML = movie[i].title;
        cell2.innerHTML = movie[i].boxoffice;
        cell3.innerHTML = movie[i].active;
        cell4.innerHTML = movie[i].dateoflaunch;
        cell5.innerHTML = movie[i].genre;
        cell6.innerHTML = movie[i].hasteaser;
        cell7.innerHTML = '<a href="edit-movie.html">Edit</a>';
    }
}


function CreateTableCustomer() {


    for (var i = 0; i < (movie.length - 2); i++) {
        var table = document.getElementById("t1");

        newRow = table.insertRow(i + 1);
        cell1 = newRow.insertCell(0);
        cell2 = newRow.insertCell(1);
        cell3 = newRow.insertCell(2);
        cell4 = newRow.insertCell(3);
        cell5 = newRow.insertCell(4);
        cell1.innerHTML = movie[i].title;
        cell2.innerHTML = movie[i].boxoffice;
        cell3.innerHTML = movie[i].genre;
        cell4.innerHTML = movie[i].hasteaser;
        cell5.innerHTML = '<a href="movie-list-customer-notification.html">Add to Favorite</a>';
    }
}



function fav_notify() {

    for (var i = 0; i < (movie.length - 3); i++) {
        var table = document.getElementById("t1");

        newRow = table.insertRow(i + 1);
        cell1 = newRow.insertCell(0);
        cell2 = newRow.insertCell(1);
        cell3 = newRow.insertCell(2);
        cell4 = newRow.insertCell(3);
        cell1.innerHTML = movie[i].title;
        cell2.innerHTML = movie[i].boxoffice;
        cell3.innerHTML = movie[i].genre;
        cell4.innerHTML = '<a href="favorites-notification.html">Delete</a>';
    }
}
function fav_data() {


    for (var i = 0; i < (movie.length - 2); i++) {
        var table = document.getElementById("t1");

        newRow = table.insertRow(i + 1);
        cell1 = newRow.insertCell(0);
        cell2 = newRow.insertCell(1);
        cell3 = newRow.insertCell(2);
        cell4 = newRow.insertCell(3);
        cell1.innerHTML = movie[i].title;
        cell2.innerHTML = movie[i].boxoffice;
        cell3.innerHTML = movie[i].genre;
        localStorage.setItem("id", movie[i].title);
        cell4.innerHTML = '<a href="favorites-notification.html">Delete</a>';
    }
}

function validateForm() {
    var x = document.forms["myForm"]["title"].value;
    var y = document.forms["myForm"]["gross"].value;
    var z = document.forms["myForm"]["launch"].value;
   
   
    if (x == "") {
        alert("Name must be filled out");
        return false;
    }
    if (y == "") {
        alert("boxoffice must be filled out");
        return false;
    }
    if (z == "") {
        alert("date must be filled out");
        return false;
    }
}

function form_edit() {
    document.getElementById("title1").value = movie[0].title;
    document.getElementById("gross").value = movie[0].boxoffice;
    document.getElementById("launch").value = movie[0].dateoflaunch;
}