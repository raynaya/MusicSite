
function play() {
    document.getElementById("flashPlayer").SetVariable("player:jsPlay", "");
}
function pause() {
    document.getElementById("flashPlayer").SetVariable("player:jsPause", "");
}
function stop() {
    document.getElementById("flashPlayer").SetVariable("player:jsStop", "");
}
function volume(n) {
    document.getElementById("flashPlayer").SetVariable("player:jsVolume", n);
}
