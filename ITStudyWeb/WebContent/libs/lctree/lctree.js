$(document).ready(function(){
    $(document).delegate(".lc_tree_parent li a", "click", function(){
    	$(this).addClass("tmp-active");
    	if($(this).parent().parent(".lc_tree_parent").prev("a").length == 0) {
    		$(".lc-active").removeClass("lc-active");
    		$(".tmp-active").addClass("lc-active");
    		$(".tmp-active").removeClass("tmp-active");
    		$(".lc_tree_parent .lc_tree_parent").hide();
        	$(".lc-active").next(".lc_tree_parent").show();
    	} else {
    		$(this).parent().parent(".lc_tree_parent").prev("a").click();
    	}
    });
});
