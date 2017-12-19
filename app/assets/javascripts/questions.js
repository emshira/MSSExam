$(document).ready(function(){
    var marker ='rgba(9,120,120,0.9)';
    var markerWidth = 1;

    var lastEvent;
    var mouseDown = false;

    var $canvas = $('canvas');
    $.each($canvas, function(index, canvas){
        var self = $(this);
    // $canvas.forEach(function(canvas){

        var context = canvas.getContext('2d');
        var $x = $(canvas);
        //console.log($canvas);

        $(this).mousedown(function(e) {
            lastEvent = e;
            mouseDown = true;
            //console.log(lastEvent);
        }).mousemove(function(e) {
            if(mouseDown){

                context.beginPath();

                context.moveTo(lastEvent.offsetX, lastEvent.offsetY);
                context.lineTo(e.offsetX, e.offsetY);
                context.lineWidth = markerWidth;
                context.strokeStyle = marker;
                context.lineCap = 'round';
                context.stroke();

                lastEvent = e;

            }
        }).mouseup(function(){
            mouseDown = false;
        });

        var changeWidth = function(){
            markerWidth = self.val();
            console.log(markerWidth);
        }

        var clear =function() {
            context.clearRect(0,0,450,500);
        }

        $('.clear').on('click', clear);

        $('#marker').change(changeWidth);
    })

});//endJQuery///////
