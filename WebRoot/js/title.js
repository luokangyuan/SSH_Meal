// JavaScript Document
$(function () {
	var navLi=$(".menu .nav li");
	navLi.mouseover(function () {
		$(this).find("a").addClass("current");
		$(this).find(".box").stop().slideDown();
	});
	navLi.mouseleave(function(){
		$(this).find("a").removeClass("current");
		$(this).find(".box").stop().slideUp();
	});
});