var mount = "testingstream.mp3"; // your mount point
var audiotype = "audio/mp3"; // dont change this if u dont know what you're doing, best to leave like this

$(function(){
    $("#audio").attr("src","https://elipse458.me:8000/"+mount);
    $("#audio").attr("type",audiotype);
    window.addEventListener('message', function(event){
        if (event.data.type=="enable") {
            var audio = $("#audio")[0];
            if(event.data.state) {
                $("#audio").attr("src","https://elipse458.me:8000/"+mount);
                audio.load();
                audio.play();
            } else {
                $("#audio").attr("src","");
                audio.pause();
                audio.load();
            }
        } else if(event.data.type=="volume") {
            audio.volume = event.data.volume;
        }
	});
});

let test = [
    {
        "radioStations" : "https://elipse458.me:8000/",
        "type" : "audio/mp3"
    },
    {
        "radioStations" : "https://elipse458.me:8000/",
        "type" : "audio/mp3"
    }
];

console.log(test);
for (let i = 0; i < test.length; i++) {
    console.log(test[i].radioStations);
}