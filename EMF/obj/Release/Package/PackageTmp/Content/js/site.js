if ($('#hakkimizda').length > 0) {
    $('a[href="#belgelerimiz"]').on('shown.bs.tab', function () {
        $('#grid-container').cubeportfolio({
            caption: 'zoom'
        });
    });
    $('a[href="#markalarimiz"]').on('shown.bs.tab', function () {
        $('#grid-container2').cubeportfolio({
            caption: 'zoom'
        });
    });
    $('#tabs a[href="#' + $('#tabname').val() + '"]').tab('show');
}
if ($('#haber-detay-resimleri').length > 0) {
    $('#grid-container').cubeportfolio({
        caption: 'zoom'
    });


    function carouselCreated(e, data) {
        $('.popup-link').click(function (e) {
            var $this = $(this);
            var html = Mustache.to_html($('#popupLayout').html(), $(this).data("content"));
            $('#popup').html(html);

            $('#popup').popup({
                closeelement: ".fa-close",
                transition: 'all 0.3s'
            }).popup('show');
        });
    }

    $(document).ready(function () {

        var container = $('#container');

        // fade in effect
        container.css({
            opacity: 0
        });
        container.delay(500).animate({
            opacity: 1
        }, 500);

        container.theta_carousel({
            "filter": ".ex-item",
            "selectedIndex": 15,
            "distance": 90,
            "numberOfElementsToDisplayRight": 6,
            "numberOfElementsToDisplayLeft": 6,
            "designedForWidth": 1920,
            "designedForHeight": 885,
            "distanceInFallbackMode": 820,
            "path": {
                "settings": {
                    "shiftZ": -230,
                    "width": 2300,
                    "depth": 340,
                    "xyPathBezierPoints": {
                        "p1": {
                            "x": -100,
                            "y": 0
                        },
                        "p2": {
                            "x": 0,
                            "y": 0
                        },
                        "p3": {
                            "x": 0,
                            "y": 0
                        },
                        "p4": {
                            "x": 100,
                            "y": 0
                        }
                    },
                    "xyArcLengthBezierPoints": {
                        "p1": {
                            "x": 0,
                            "y": 0
                        },
                        "p2": {
                            "x": 100,
                            "y": 10
                        },
                        "p3": {
                            "x": 0,
                            "y": 90
                        },
                        "p4": {
                            "x": 100,
                            "y": 100
                        }
                    },
                    "xzPathBezierPoints": {
                        "p1": {
                            "x": -100,
                            "y": 50
                        },
                        "p2": {
                            "x": 0,
                            "y": 0
                        },
                        "p3": {
                            "x": 0,
                            "y": 0
                        },
                        "p4": {
                            "x": 100,
                            "y": 50
                        }
                    }
                },
                "type": "cubic_bezier"
            },
            "sensitivity": 0.5,
            "allignElementsWithPath": true,
            "allignElementsWithPathCoefficient": -2,
            "shadow": true,
            "shadowBlurRadius": 165,
            "shadowSpreadRadius": -13,
            "fadeAway": true,
            "fadeAwayBezierPoints": {
                "p1": {
                    "x": 0,
                    "y": 100
                },
                "p2": {
                    "x": 65,
                    "y": 100
                },
                "p3": {
                    "x": 90,
                    "y": 100
                },
                "p4": {
                    "x": 100,
                    "y": 0
                }
            },
            "rotation": true,
            "rotationBezierPoints": {
                "p1": {
                    "x": 0,
                    "y": 0
                },
                "p2": {
                    "x": 50,
                    "y": 0
                },
                "p3": {
                    "x": 50,
                    "y": 0
                },
                "p4": {
                    "x": 100,
                    "y": 10
                }
            },
            "rotationVectorY": 0.3,
            "sizeAdjustment": true,
            "sizeAdjustmentBezierPoints": {
                "p1": {
                    "x": 0,
                    "y": 100
                },
                "p2": {
                    "x": 30,
                    "y": 70
                },
                "p3": {
                    "x": 70,
                    "y": 70
                },
                "p4": {
                    "x": 100,
                    "y": 60
                }
            },
            "popoutSelected": true,
            "popoutSelectedShiftZ": 50
        });
        carouselCreated.call(container, null, {
            index: container.theta_carousel("option", "selectedIndex")
        });
        container.on('motionStart', motionStart);
        container.on('motionEnd', motionEnd);
    });
}
if ($('#urun_resimleri').length > 0) {
    $('a[href="#urun_resimleri"]').on('shown.bs.tab', function () {
        $('#grid-container').cubeportfolio({
            caption: 'zoom',
            gridAdjustment: 'alignCenter'
        });
    });
    $('a[href="#urun_resimleri"]').on('hide.bs.tab', function () {
        $('#grid-container').cubeportfolio('destroy');
    });
}
if ($('#myModal').length > 0) {
    $('#myModal').modal('show'); $('#myModal').data('bs.modal');
}
if ($('#jssor_1').length > 0) {
    var jssor_1_SlideoTransitions = [
      [{ b: 900, d: 2000, x: -379, e: { x: 7 } }],
      [{ b: 900, d: 2000, x: -379, e: { x: 7 } }],
      [{ b: -1, d: 1, o: -1, sX: 2, sY: 2 }, { b: 0, d: 900, x: -171, y: -341, o: 1, sX: -2, sY: -2, e: { x: 3, y: 3, sX: 3, sY: 3 } }, { b: 900, d: 1600, x: -283, o: -1, e: { x: 16 } }]
    ];

    var jssor_1_options = {
        $AutoPlay: 1,
        $SlideDuration: 800,
        $SlideEasing: $Jease$.$OutQuint,
        $CaptionSliderOptions: {
            $Class: $JssorCaptionSlideo$,
            $Transitions: jssor_1_SlideoTransitions
        },
        $ArrowNavigatorOptions: {
            $Class: $JssorArrowNavigator$
        },
        $BulletNavigatorOptions: {
            $Class: $JssorBulletNavigator$
        }
    };

    var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

    function ScaleSlider() {
        var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
        if (refSize) {
            refSize = Math.min(refSize, 1920);
            jssor_1_slider.$ScaleWidth(refSize);
        }
        else {
            window.setTimeout(ScaleSlider, 30);
        }
    }
    ScaleSlider();
    $Jssor$.$AddEvent(window, "load", ScaleSlider);
    $Jssor$.$AddEvent(window, "resize", ScaleSlider);
    $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
}
$('.selectpicker').selectpicker();
function urundetayanaresimayarla() {
    var urun_anaresim_ust = $('#urun_detay .urun-item-alt .urun-item-alt-ic')[0], urun_anaresim = $('#urun_detay .urun-item-alt .urun-item-alt-ic img')[0];
    var style = urun_anaresim.getAttribute("style");
    var margin_top = (urun_anaresim_ust.offsetHeight - urun_anaresim.offsetHeight) / 2;
    if (urun_anaresim.offsetWidth > urun_anaresim_ust.offsetWidth)
        urun_anaresim.setAttribute("style", style.substring(0, style.indexOf("width")) + ";width:" + (urun_anaresim_ust.offsetWidth - 15) + "px;");
    urun_anaresim_ust.setAttribute("style", "padding-top:" + margin_top + "px !important;padding-bottom:" + margin_top + "px !important;");
}
function SessionControl(timeout) {    
    var timer = setInterval(function () {
        timeout--;
        if (timeout == 0) {
            clearInterval(timer);
            var bekle = setInterval(function () {
                clearInterval(bekle);
                window.location = window.location.href;
            }, 2000);
        }
    }, 60000);
}