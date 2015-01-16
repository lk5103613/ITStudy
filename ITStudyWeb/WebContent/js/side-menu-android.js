$(document).ready(function(){
    var navs = ["c1", "c1-1", "c1-1-1", "c1-1-2", "c1-1-3", "c1-1-4", "c1-2", "c1-2-1", "c1-2-2", "c1-2-3", "c1-2-4", "c1-3", 
                "c1-3-1", "c1-3-2", "c1-3-3", "c1-4", "c1-4-1", "c1-4-2", "c1-4-3", "c1-4-4", "c1-5", "c1-5-1", "c1-5-2", "c1-5-3",
                "c1-6", "c1-6-1", "c1-6-2", "c1-6-3", "c1-7", "c1-7-1", "c1-7-2", "c1-7-3", "c2", "c2-1", "c2-1-1", "c2-1-2", "c2-1-3", 
                "c2-2", "c2-2-1", "c2-2-2", "c2-2-3", "c2-2-4", "c2-3", "c2-3-1", "c2-3-2"];
    
    
    $(window).scroll(function(){
        var currentTop = $(window).scrollTop();
        if(currentTop + 50 < $("#" + navs[0]).offset().top) {
        	 $("a[href='#"+navs[0]+"']").click();
        	 return;
        }
        for(var i=0; i<navs.length; i++) {
        	if(i != navs.length - 1 ) {
        		if($("#" + navs[i + 1]).offset() == undefined) {
        			alert(navs[i + 1]);
        		}
	            if(currentTop + 50 >= $("#" + navs[i]).offset().top && (currentTop+50) < $("#" + navs[i + 1]).offset().top) {
	                $("a[href='#"+navs[i]+"']").click();
	                $("#currentChapter").val(navs[i]);
	                break;
	            }
        	} else {
        		$("a[href='#"+navs[i]+"']").click();
        	}
        }
    });
    
    function initScroll() {
    	var chapter = $("#currentChapter").val();
    	if(chapter == "top") {
    		return;
    	}
    	var chapterTop = $("#" + chapter).offset().top;
    	if(chapterTop + 50 < $("#" + navs[0]).offset().top) {
    		$("a[href='#"+navs[0]+"']").click();
    		return;
    	}
    	for(var i=0; i<navs.length; i++) {
    		if(i != navs.length - 1 ) {
	            if(chapterTop + 50 >= $("#" + navs[i]).offset().top && (chapterTop+50) < $("#" + navs[i + 1]).offset().top) {
	                $("a[href='#"+navs[i]+"']").click();
	                break;
	            } 
    		} else {
    			 $("a[href='#"+navs[i]+"']").click();
    		}
        }
    	$(window).scrollTop(chapterTop);
    }
    
    initScroll();
    
    var titleHeight = $("#title").height() + 100;
    $("#side-menu").affix({
    	offset: {
    		top: titleHeight,
    		bottom: function () {
    			return (this.bottom = $('.footer').outerHeight(true));
    		}
    	}
	});
    
    $(document).delegate("#btnChangeLanguage", "click", function() {
    	var href = $(this).attr('href');
    	var currentChapter = $("#currentChapter").val();
    	$(this).attr("href", href + "&currentChapter=" + currentChapter);
    });
    
    $(document).delegate("#toTop", "click", function() {
    	$("a[href='#preface']").click();
    });
    
});