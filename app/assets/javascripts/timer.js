$(function() {
    $(".stopwatch").TimeCircles({
        "animation": "smooth",
        "bg_width": 0.8,
        "fg_width": 0.02666666666666667,
        "circle_bg_color": "#60686F",
        "start": false,
        "count_past_zero": false,
        "time": {
            "Days": {
                "text": "Days",
                "color": "#FFCC66",
                "show": false
            },
            "Hours": {
                "text": "Hours",
                "color": "#99CCFF",
                "show": false
            },
            "Minutes": {
                "text": "Minutes",
                "color": "#BBFFBB",
                "show": true
            },
            "Seconds": {
                "text": "Seconds",
                "color": "#FF9999",
                "show": true
            }
        }
    });
    $(".start").click(function(){
        $(".Tasks__timer--moving.stopwatch").TimeCircles().start();
    });
    $(".stop").click(function(){
        $(".Tasks__timer--moving.stopwatch").TimeCircles().stop();
    });
    $(".restart").click(function(){
        $(".Tasks__timer--moving.stopwatch").TimeCircles().restart();
    });
});

