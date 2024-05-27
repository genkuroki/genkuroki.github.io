var _GADS = {
	DEBUG: false,
	Click: function(url) {
		window.open(url, '_blank').focus();
	},
	MouseOver: function(self) {
		self.style.backgroundColor = _GADS.translucent(
		                                 _GADS.getBackgroundColorRGB(self, true),
		                                 function(hsv) {
		                                     if      (hsv.v <= 0.65) { hsv.v =  0.95; }
		                                     else if (hsv.v <= 0.95) { hsv.v += 0.05; }
		                                     else                    { hsv.v -= 0.1;  }
		                                     hsv.s *= 0.8;
		                                 },
		                                 '#F9F5D3'
		                             );
		self.firstChild.childNodes[0].style.color = 'blue';
		self.firstChild.childNodes[1].style.color = 'green';
		self.style.color = 'black';
	},
	MouseOut: function(self) {
		self.style.backgroundColor = '';
		self.firstChild.childNodes[0].style.color = '';
		self.firstChild.childNodes[1].style.color = '';
		self.style.color = '';
	},
	getBackgroundColorRGB: function(elem, checkImage) {
		for (; !!elem; elem = elem.parentNode) {
			if (elem.nodeType == 1) {
				var csd = elem.currentStyle || document.defaultView.getComputedStyle(elem,'');
				if (!!csd) {
					if (checkImage && !!csd.backgroundImage && csd.backgroundImage != 'none' && !csd.backgroundImage.match(/line/)) {
						break;
					}
					if (!!csd.backgroundColor && csd.backgroundColor.match(/^(#\w+|rgb\(\s*\d+,\s*\d+,\s*\d+\))$/))
						return _GADS.color2rgb(csd.backgroundColor);
				}
				if (elem.tagName == 'BODY') {
					break;
				}
			}
		}
		return null;
	},
	translucent: function(rgb, translator, defaultColor) {
		if (!rgb) return defaultColor;
		var hsv = _GADS.rgb2hsv(rgb);
		translator(hsv);
		return _GADS.rgb2color(_GADS.hsv2rgb(hsv));
	},
	color2rgb: function(color) {
		if (color.match(/^#(..)(..)(..)$/))
			return {
				r: parseInt(RegExp.$1,16),
				g: parseInt(RegExp.$2,16),
				b: parseInt(RegExp.$3,16)
			};
		else if (color.match(/^#(.)(.)(.)$/))
			return {
				r: parseInt(RegExp.$1+RegExp.$1,16),
				g: parseInt(RegExp.$2+RegExp.$2,16),
				b: parseInt(RegExp.$3+RegExp.$3,16)
			};
		else if (color.match(/^rgb\(\s*(\d+),\s*(\d+),\s*(\d+)\)$/))
			return {
				r: parseInt(RegExp.$1),
				g: parseInt(RegExp.$2),
				b: parseInt(RegExp.$3)
			};
		else
			return null;
	},
	rgb2color: function(rgb) {
		if (!rgb) return null;
		return '#' + (rgb.r+256).toString(16).substring(1)
				   + (rgb.g+256).toString(16).substring(1)
				   + (rgb.b+256).toString(16).substring(1)
				   ;
	},
	rgb2hsv: function(rgb) {
		if (!rgb) return null;
		var max = _GADS.max(rgb.r, rgb.g, rgb.b);
		var min = _GADS.min(rgb.r, rgb.g, rgb.b);
		if      (max == 0)   return { h:0, s:0, v:0 };
		else if (max == min) return { h:0, s:0, v:max/255 };
		var h = (max == rgb.r) ? 60 * (rgb.g - rgb.b) / (max - min)
		      : (max == rgb.g) ? 60 * (rgb.b - rgb.r) / (max - min) + 120
		      :                  60 * (rgb.r - rgb.g) / (max - min) + 240
		      ;
		return {
			h: (h < 0) ? h + 360 : h,
			s: (max - min) / max,
			v: max / 255
		};
	},
	hsv2rgb: function(hsv) {
		if (!hsv) return null;
		var rgb = {};
		if (hsv.s == 0) rgb.r = rgb.g = rgb.b = hsv.v;
		else {
			var i = parseInt(hsv.h / 60) % 6;
			var f = hsv.h / 60 - i;
			var m = hsv.v * (1 - hsv.s);
			var n = hsv.v * (1 - hsv.s * f);
			var k = hsv.v * (1 - hsv.s * (1 - f));
			switch (i) {
			case 0: rgb.r=hsv.v; rgb.g=k;     rgb.b=m;     break;
			case 1: rgb.r=n;     rgb.g=hsv.v; rgb.b=m;     break;
			case 2: rgb.r=m;     rgb.g=hsv.v; rgb.b=k;     break;
			case 3: rgb.r=m;     rgb.g=n;     rgb.b=hsv.v; break;
			case 4: rgb.r=k;     rgb.g=m;     rgb.b=hsv.v; break;
			case 5: rgb.r=hsv.v; rgb.g=m;     rgb.b=n;     break;
			}
		}
		rgb.r = parseInt(rgb.r * 255);
		rgb.g = parseInt(rgb.g * 255);
		rgb.b = parseInt(rgb.b * 255);
		return rgb;
	},
	max: function() {
		var max = arguments[0];
		for (var i = 1; i < arguments.length; i++) {
			if (max < arguments[i])
				max = arguments[i];
		}
		return max;
	},
	min: function() {
		var min = arguments[0];
		for (var i = 1; i < arguments.length; i++) {
			if (min > arguments[i])
				min = arguments[i];
		}
		return min;
	}
};

google_ad_slot = null;
google_ad_client = 'ca-gmomedia-autopage_js';
google_ad_channel = 'teacup_bbs';
google_ad_output = 'js';
//google_max_num_ads = is_search_referrer() ? 4 : 2;
google_max_num_ads = 4;
google_ad_type ='text,image,flash';		// html
google_language = 'ja';
google_encoding = 'utf8';
google_safe = 'high';
google_feedback = 'on';
google_image_size = '300x250';

function google_ad_request_done(google_ads) {
	if (google_ads.length > 0) {
		document.write(google_adlist_create(google_ads, 0, google_ads.length));
		var gads = document.getElementById("gads");
		gads.style.backgroundColor = _GADS.rgb2color(_GADS.getBackgroundColorRGB(gads, false));
	}
}

function google_adlist_create(google_ads, start, end) {
	var str = '', info_align;
	if (google_ads.length > start) {
		str += '<div id="gads" style="">';
		str += '<ul style="display:block; margin:0; padding:0;">';
		for (var i=start; i<end; i++) {
			if (i >= google_ads.length || !google_ads[i]) continue;
			switch (google_ads[i].type) {
			case 'text':
				str += '<li style="list-style-type:none; display:block;" onmouseover=\'_GADS.MouseOver(this)\' onmouseout=\'_GADS.MouseOut(this)\'>'
				    +    '<div style="padding:4px 8px; text-align:left; line-height:130%; font-family:\'ＭＳ Ｐゴシック\',Osaka,\'ヒラギノ角ゴ Pro W3\';">'
				    +      '<span style="font-weight:bold;">'
				    +        '<a href="'+google_ads[i].url+'" target="_blank">'+google_ads[i].line1+'</a>'
				    +      '</span>'
				    +      '<span style="font:80% Verdana;"> - <nobr><a href="'+google_ads[i].url+'" target="_blank">'+google_ads[i].visible_url+'</a></nobr></span><br />'
				    +      google_ads[i].line2 + ' ' + google_ads[i].line3
				    +    '</div>'
				    +  '</li>';
				info_align = 'left';
				break;
			case 'image':
				str += '<li style="list-style-type:none; display:block;">'
				    +    '<div style="padding:4px 8px; text-align:left; line-height:130%; font-family:\'ＭＳ Ｐゴシック\',Osaka,\'ヒラギノ角ゴ Pro W3\';">'
				    +      '<span style="font-weight:bold;">'
				    +        '<a href="'+google_ads[i].url+'" target="_blank">'
				    +          '<img border="0" src="' + google_ads[i].image_url + '" width="' + google_ads[i].image_width + '" height="' + google_ads[i].image_height + '">'
				    +        '</a>'
				    +      '</span>'
				    +    '</div>'
				    +  '</li>';
				info_align = 'left';	// center
				break;
			case 'flash':
				str += '<li style="list-style-type:none; display:block;">'
				    +    '<div style="padding:4px 8px; text-align:left; line-height:130%; font-family:\'ＭＳ Ｐゴシック\',Osaka,\'ヒラギノ角ゴ Pro W3\';">'
				    +      '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="' + google_ads[i].image_width + '" height="' + google_ads[i].image_height + '">'
				    +        '<param name="movie" value="' + google_ads[i].image_url + '">'
				    +        '<param name="loop" value="true">'
				    +        '<param name="quality" value="high">'
				    +        '<embed src="' + google_ads[i].image_url + '" loop="true" quality="high" width="' + google_ads[i].image_width + '" height="' + google_ads[i].image_height + '" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer"></embed>'
				    +      '</object>'
				    +    '</div>'
				    +  '</li>';
				info_align = 'left';	// center
				break;
			default:
				if (_GADS.DEBUG) {
					var dump = '';
					for (var p in google_ads[i]) {
						dump += p + ": " + google_ads[i][p] + "<br>";
					}
					str += '<li style="list-style-type:none; display:block;" onmouseover=\'_GADS.MouseOver(this)\' onmouseout=\'_GADS.MouseOut(this)\'>'
					    +    '<div style="padding:4px 8px; text-align:left; line-height:130%; font-family:monospace;">'
					    +      dump
					    +    '</div>'
					    +  '</li>';
				}
			}
		}
		str += '</ul>';
		str += '<div style="height:15px; text-align:' + info_align + '; margin:0 8px 1em 0; font-weight:normal; font-size:12px; font-family:"ＭＳ Ｐゴシック",Osaka,"ヒラギノ角ゴ Pro W3";"><a href="' + google_info.feedback_url + '" target="_blank">Ads by Google</a></div>';
		str += '</div>';
	}
	return str;
}



function is_search_referrer() {
	reg = new RegExp('(search\.yahoo\.co\.jp|google\..+\/search|bing\.com\/search|find\.teacup\.com)', 'i');
	return document.referrer.match(reg);
}