// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .
$(document).on('turbolinks:load', function() {
  // Create the chart
  var seriesData = JSON.parse($("#final_score").val());
  $('#container').highcharts({
    chart: {
      type: 'column',
      events: {
        drillup: function (e) {
          alert('drill Up');
          console.log(this);
          console.log(this.options.series[0].name);
          console.log(this.options.series[0].data[0].name);
        }
      }
    },
    title: {
      text: 'Patient MMSE Results'
    },
    xAxis: {
      type: 'Total Score',
      labels: {
        enabled: true,
        formatter: function() {
          return seriesData[this.value].name
        }
      },
      title: 'hello',
    },
    plotOptions: {
      series: {
        borderWidth: 0,
        dataLabels: {
            enabled: true,
        }
      }
    },

    series: [{
        name: 'Final Scores',
        colorByPoint: true,
        data: seriesData

    }],
    drilldown: {
        drillUpButton: {
            relativeTo: 'spacingBox',
            position: {
                y: 0,
                x: 0
            },
            theme: {
                fill: 'white',
                'stroke-width': 1,
                stroke: 'silver',
                r: 0,
                states: {
                    hover: {
                        fill: '#bada55'
                    },
                    select: {
                        stroke: '#039',
                        fill: '#bada55'
                    }
                }
            }

        },
        series: [{
            id: '',
            data: [
                ['', ],

            ]
        }, {
            id: '',
            data: [
                ['', ],
                ['', ]
            ]
        }]
    }
  });
});
