/*
*  Analytics Chart (based on flotr2 - http://humblesoftware.com/flotr2 - plugin)
*/

/*
* Draw action chart plugin
*/
$.fn.drawActionChart = function(options) {
	var jsonDataText =  $(options.dataContainer).text();
	var jsonData = $.parseJSON(jsonDataText);
	
	return this.each(function() {
		    
			// Draw the graph
		  	Flotr.draw(
		    	this,
		    	jsonData.series,
		    	{
		      		bars : {
		        	show : true,
		        	horizontal : false,
		        	shadowSize : 0,
		        	barWidth : 0.5
			      	},
			      	mouse : {
			        	track : true,
			        	relative : true,
			        	trackFormatter : function(obj){ return obj.series.label+' : '+obj.y; },
			        	trackDecimals : 0
			      	},
			     	yaxis : {
			        	min : 0,
			        	autoscaleMargin : 1
			      	},
			      	xaxis : {
			      		showLabels : true,
			      		ticks: jsonData.xaxistick,
			      		labelsAngle : 45
			      	},
			      	legend: {
			      		show: true
			      	},
			      	markers: {
			  			show: true,
			  			position: 'ct'
					},
					title: 'Actions executed in the selected period'  	
			    }
			  );			
    });
}

/*
* Draw action trend chart plugin
*/
$.fn.drawActionTrendChart = function(options) {
	var jsonDataText =  $(options.dataContainer).text();
	var jsonData = $.parseJSON(jsonDataText);
	
	return this.each(function() {
	
		//Draw the graph
		Flotr.draw(
			this,
			jsonData.series,
			{
			    mouse : {
			        track : true,
			        relative : true,
			        trackFormatter : function(obj){ return obj.series.label+' : '+obj.y; },
			        trackDecimals : 0
			    },
			    points : { 
			    	show : true 
			    },
			    lines : { 
			    	show : true 
			    },			
			    xaxis : {
      				mode : 'time', 
      				labelsAngle : 45,
      				min : jsonData.min,
      				max : jsonData.max
    			},
    			title: 'Actions trend in the selected period'
						
			}
				
		);
	
	});
		
}
