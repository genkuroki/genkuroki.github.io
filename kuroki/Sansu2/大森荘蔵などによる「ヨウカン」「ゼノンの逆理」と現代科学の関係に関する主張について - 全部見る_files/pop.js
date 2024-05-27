var sep_x = 20;
var sep_y = 10;
var message = new Array();

// ポップアップメニューのメッセージ
message[0] = '現在この掲示板は、記事からはメールを送れない設定になっています。メールアドレスを入力して投稿した場合、管理人は管理画面の投稿の管理の投稿者名からメールが送れます。 ';
message[1] = '検索した動画を記事に埋め込むことができます。<br>※掲示板設定で、[画像の貼付][動画の貼付]を共に許可している必要があります';
message[2] = '';
message[3] = '';
message[4] = '';
message[5] = '';
message[6] = '';
message[7] = '';
message[8] = '';
message[9] = '';
message[10] = '';
message[11] = '';
message[12] = '';
message[13] = '';
message[14] = '';
message[15] = '';
message[16] = '';
message[17] = '';
message[18] = '';
message[19] = '';
message[20] = '';

//
var x = -300;
var y = -100;
var ms = 0;
var ie = (navigator.appVersion.indexOf('MSIE')>=0);
var ie4 = (navigator.appVersion.indexOf('MSIE 4')>=0);
var op6 = (navigator.userAgent.indexOf('Opera 6')>=0)||(navigator.userAgent.indexOf('Opera/6')>=0);

// メッセージデーターの先読み
for (i=0;i<message.length;i++){
	document.write("<div id='span"+i+"' class='popstyle'");
	if(ie4){
		document.write(" style='width:10;'><table><tr><td nowrap");
	}
	document.write(">");
	document.write(message[i]);
	if(ie4){
		document.write("</td></tr></table>");
	}
	document.write("</div>");
}

// マウス座標位置取得
function handlerMM(e){
	//x = (document.all) ? document.body.scrollLeft+event.clientX : (op6)?event.clientX : e.pageX;
	//y = (document.all) ? document.body.scrollTop+event.clientY : (op6)?event.clientY : e.pageY;
	x = (document.all) ? document.documentElement.scrollLeft+event.clientX : (op6)?event.clientX : e.pageX;
	y = (document.all) ? document.documentElement.scrollTop+event.clientY : (op6)?event.clientY : e.pageY;
	flg=1;
}

// フローティングメッセージの表示
function message_on(ms, element){
	// 画面中心より右側にある場合はポインタの右側に表示
	if (document.body.clientWidth && document.body.clientWidth / 2 < x) {
		x = x - 330;
	}
	if (flg==1 && document.all){		// IE & Opera
		var thisspan = document.all("span"+ms).style;
		thisspan.posLeft = x+sep_x;
		thisspan.posTop = y+sep_y;
		thisspan.visibility = "visible"
	}
	if (flg==1 && document.layers){
		var thisspan = eval("document.span"+ms);
		thisspan.left = x+sep_x;
		thisspan.top = y+sep_y;
		thisspan.visibility = "visible"
	}
	if (flg==1 && !document.all && document.getElementById){		// Netscape
		var thisspan = document.getElementById("span"+ms);
		thisspan.style.left = x+sep_x + 'px';
		thisspan.style.top = y+sep_y + 'px';
		thisspan.style.visibility = "visible"
	}
	if (element && ie) {
		element.style.display = 'none';
	}
}

// フローティングメッセージの非表示
function message_off(ms, element){
	if (document.all){
		var thisspan = document.all("span"+ms).style;
		thisspan.visibility = "hidden";
	}
	if (document.layers){
		var thisspan = eval("document.span"+ms);
		thisspan.visibility = "hidden";
	}
	if (!document.all && document.getElementById){
		var thisspan = document.getElementById("span"+ms);
		thisspan.style.visibility = "hidden";
	}
	if (element && ie) {
		element.style.display = 'block';
	}
}

function NN_reload(){
	if (document.layers) {
		location.reload();	// ネスケリロード（リサイズ時）
	}
}

// マウスイベント設定
if (document.layers){
	document.captureEvents(Event.MOUSEMOVE);
}
if (!document.all && document.getElementById && !op6){
	window.onmousemove = handlerMM;
	window.captureEvents(Event.MOUSEMOVE);
} else {
	document.onmousemove = handlerMM;
}

window.onresize = NN_reload;
