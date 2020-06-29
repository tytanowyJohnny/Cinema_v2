Date.prototype.addDays = function(days) {
    var date = new Date(this.valueOf());
    date.setDate(date.getDate() + days);
    return date;
}

window.updateDate = function(date) {

    const optionsLong = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };

    let formatDate = date.toLocaleDateString('pl-PL', optionsLong);

    $("#current-date").text(formatDate.charAt(0).toUpperCase() + formatDate.slice(1));
}

// window.formatMovieRow = function(image, title, subtitle, director, actors, desc) {

//     let firstMovieRowHTML = $("#first-movie-row").html();

//     console.log(firstMovieRowHTML);

//     firstMovieRowHTML = firstMovieRowHTML.replace("joker_movie.jpg", image);
//     firstMovieRowHTML = firstMovieRowHTML.replace("Joker / napisy", title);
//     firstMovieRowHTML = firstMovieRowHTML.replace("Seans z Cyklu Kino Konesera", subtitle);
//     firstMovieRowHTML = firstMovieRowHTML.replace("Todd Phillips", director);
//     firstMovieRowHTML = firstMovieRowHTML.replace("Joaquin Phoenix, Zazie Beetz, Robert De Niro", actors);
//     firstMovieRowHTML = firstMovieRowHTML.replace("Historia jednego z cieszących się najgorszą sławą superprzestępców uniwersum DC — Jokera po raz pierwszy na wielkim ekranie. Przedstawiony przez Phillipsa obraz kultowego czarnego charakteru, Arthura Flecka (Phoenix), człowieka zepchniętego na margines, to nie tylko kontrowersyjne studium postaci, ale także opowieść ku przestrodze w szerszym kontekście.", desc);

//     return firstMovieRowHTML;
// }

$(document).ready(function() {

    let currDate = new Date();
    
    // Data obok "REPERTUAR"
    updateDate(currDate);


    // Inne daty + 14 dni
    const optionsShort = { weekday: 'short', day: 'numeric' }

    for(let i = 0; i < 11; i++) {
        let tempDate = currDate.addDays(i).toLocaleDateString('pl-PL', optionsShort);
        tempDate = tempDate.charAt(0).toUpperCase() + tempDate.slice(1);

        $("#below-slider-list").append("<li>" + tempDate + "</li>");
    }

    $("#below-slider-list").delegate("li", "click", function(){
        //alert(($(this).index()));
        updateDate(currDate.addDays($(this).index()));
    });

    // Load movies list
    // generate new row
    // let newMovie = formatMovieRow("wonder_w-movie.jpg", "Wonder Woman 1984 / napisy", "Wonder Woman 1984", "Patty Jenkins", "Gal Gadot, Connie Nielsen, Chris Pine", "Wonder Woman przenosi się w czasie do lat 80. XX wieku. Księżniczka Diana Prince podczas zimnej wojny stawia czoło niebezpiecznym przeciwnikom takim jak Cheetah i Max Lord.");
    // $("#first-movie-row").after("<div class='row movie-row'>" + newMovie + "</div>");
    // newMovie = formatMovieRow("trolle-movie.jpg", "Trolle 2 / dubbing", "Trolls World Tour", "Walt Dohrn, David P. Smith", "Animowany", "Queen Poppy i Branch odkrywają, że poza ich wioską istnieją inne światy zamieszkane przez Trolle, z którymi – by tak rzec – jakoś im nie po drodze. Kiedy niespodziewane niebezpieczeństwo zagrozi całej populacji Trolli, Poppy i Branch oraz ich przyjaciele wyruszą w wielką podróż przez nowe – niebezpieczne – lądy, by dokonać niemożliwego: pogodzić ze sobą wszystkie Trolle i połączyć się przeciw wrogowi.");
    // $("#first-movie-row").after("<div class='row movie-row'>" + newMovie + "</div>");
    // newMovie = formatMovieRow("mulan-movie.jpg", "Mulan / dubbing", "-", "Niki Caro", "Yifei Liu, Donnie Yen, Jet Li", "Będąc nieodrodną córką wielkiego wojownika, Hua Mulan jest szybka, nieustraszona i zdeterminowana. Kiedy cesarz nakazuje, aby jeden mężczyzna z każdej rodziny służył w jego armii, Mulan zajmuje miejsce swojego chorego ojca. Jako Hua Jun staje się jednym z największych chińskich wojowników.");
    // $("#first-movie-row").after("<div class='row movie-row'>" + newMovie + "</div>");
});