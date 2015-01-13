$(document).ready(function(){
	$(".btn_tooltip").tooltip();
	
	var gifs = new Array();
	var links = new Array();
	
	function initGifs() {
		gifs["c1"] = new Array();
		gifs["c1"].push("c1-1-1.gif");
		gifs["c1"].push("c1-1-2.gif");
		gifs["c1"].push("c1-1-3.gif");
		gifs["c1"].push("c1-1-4.gif");
		gifs["c1"].push("c1-1-6.gif");
		gifs["c1"].push("c1-1-7.gif");
		gifs["c1"].push("c1-2-1.gif");
		gifs["c1"].push("c1-2-2.gif");
		gifs["c1"].push("c1-2-3.gif");
		gifs["c1"].push("c1-2-4.gif");
		gifs["c1"].push("c1-2-5.gif");
		gifs["c1"].push("c1-2-6.gif");
		gifs["c1"].push("c1-3-1.gif");
		gifs["c1"].push("c1-3-2.gif");
		gifs["c1"].push("c1-3-3.gif");
		gifs["c3"] = new Array();
		gifs["c3"].push("c3.gif");
	}
	
	function initLinks() {
		links["c1"] = "http://pan.baidu.com/s/1c05wrD2";
		links["c3"] = "http://pan.baidu.com/s/1i3BrDvZ";
	}
	
	function init() {
		initGifs();
		initLinks();
	}
	
	init();
	
	var characterLists;
	var currentCharacterId;
	var currentIndex = 0;
	
	$(document).delegate(".btn_tooltip", "click", function(){
		$("#gifImg").attr("src", "");
		$('#gifModal').modal('show');
		$("#btn_pre_gif").hide();
		var character_id = $(this).parent().attr("id");
		currentCharacterId = character_id;
		characterLists = gifs[character_id];
		setTimeout(function(){
			if(characterLists == undefined) {
				$("#gifImg").attr("src", "../imgs/translate/hibernate/" + character_id + ".gif");
				$("#btn_next_gif").hide();
				$("#btn_demo_download").hide();
			} else {
				$("#btn_demo_download").show();
				currentIndex = 0;
				if(characterLists.length == 1) {
					$("#btn_next_gif").hide();
				} else {
					$("#btn_next_gif").show();
				}
				$("#gifImg").attr("src", "../imgs/translate/hibernate/" + characterLists[0]);
			}
			var modalWidth = $(".modal-header").width();
			$("#gifImg").attr("width", modalWidth);
		}, 175);
		
	});
	
	$(document).delegate("#btn_demo_download", "click", function() {
		window.open(links[currentCharacterId]);
	});
	
	$(document).delegate("#btn_next_gif", "click", function(){
		currentIndex += 1;
		$("#btn_pre_gif").show();
		if(currentIndex == characterLists.length - 1) {
			$("#btn_next_gif").hide();
		}
		$("#gifImg").attr("src", "../imgs/translate/hibernate/" + characterLists[currentIndex]);
	});
	
	$(document).delegate("#btn_pre_gif", "click", function(){
		currentIndex -= 1;
		$("#btn_next_gif").show();
		if(currentIndex == 0) {
			$("#btn_pre_gif").hide();
		}
		$("#gifImg").attr("src", "../imgs/translate/hibernate/" + characterLists[currentIndex]);
	});
	
});