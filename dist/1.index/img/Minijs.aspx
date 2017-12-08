
if(bodyhtml=='')
{
bodyhtml='<link type="text/css" rel="Stylesheet" href="' + LR_userimgpath + '/style1.css" /></head><body scroll=no  style="background-color:transparent; " onbeforeunload="return f32();"><div style="height:400px;width:400px;"><div class="t_all"><div class="t_1"><img src="' + LR_userimgpath + '/t_1.png" border="0"></div><div class="t_2"><div class="bar3"><span id="td_prompt" style="word-break:break-all;white-space:nowrap;text-overflow:ellipsis;display:inline-block;width:100%;overflow:hidden;"></span></div><div class="close"></div></div><div class="t_2_1"><img src="' + LR_userimgpath + '/t_2.png" border="0"></div></div><div class="kuang"><div id="kuang2" class="kuang2"><div id="chatMessageArea"></div></div></div><div id="lrfacediv" style="display:none; top:39px; left:13px;background:#ffffff;width:360px;height:210px;z-index:888;position:absolute;"></div><div id="uploaddiv" style="display:none;top:178px; left:13px;background:#ffffff;width:376px;height:90px;z-index:889;position:absolute;"></div><div id="lrpinjiadiv" style="display:none;top:35px; left:13px;background:#ffffff;width:376px;height:222px;z-index:889;position:absolute;"></div><div id="lrteldiv" style="display:none; top:35px; left:13px;background:#ffffff;width:376px;height:222px;z-index:888;position:absolute;"></div><div class="toolbar"><div class="toolbar2"><img id="Img_face" onClick="SelSmile();" src="' + LR_userimgpath + '/s_1.png" style="display:none;cursor:pointer;" border="0"><img id="Img_upload" onClick="Upload();" src="' + LR_userimgpath + '/s_6.png" style="display:none;cursor:pointer;" border="0"><img id="Img_pingjia" onclick="pingjia();" src="' + LR_userimgpath + '/s_2.png" style="display:none;cursor:pointer;" border="0"><img id="Img_freetel" onClick="Freecall();" src="' + LR_userimgpath + '/s_4.png" style="display:none;cursor:pointer;" border="0"><img id="Img_voice" onClick="voice_visible=this.src.indexOf(\'vclosed\')>-1;this.src=\'' + LR_userimgpath + '/\'+(this.src.indexOf(\'vclosed\')>-1?\'vopen\':\'vclosed\')+\'.png\';" src="' + LR_userimgpath + '/vopen.png" style="display:none;cursor:pointer;" border="0"></div></div><div class="textbar"><div class="textbar1_1"><img src="' + LR_userimgpath + '/t_18.png" border="0"></div><div class="textbar3"><div class="textbar3_1"><textarea id="TextBox1_editor" name="TextBox1_editor" class="texteditor" style="overflow:auto;"  onfocus="editfocus();"  onblur="editblur();" onkeydown="return isEnter(event)" onkeyup="return resetIfEnter(event)"  wrap="virtual"></textarea><span style="position:absolute;margin-top:13px;"><img onClick="User_Send();$(\'TextBox1_editor\').focus();" src="' + LR_userimgpath + '/sentL_' + lng + '.png" style="cursor:pointer;"><img onClick="showLRShortCut(this);" src="' + LR_userimgpath + '/sentR.png" style="cursor:pointer;"><div id="lrshortcutdiv" style="z-index:10001;top:-80px;left:-40px;display:none;position:absolute;border-style:ridge;border-width:1px;width:130px;height:80px;background-color:#dde5fd;"><table style="width:99%;height:99%;"  border="0" align="center" cellpadding="0" cellspacing="0"><tr><td onMouseOut="this.bgColor=\'\';this.borderColor=\'\';" onMouseOver="this.bgColor=\'#9AB5DC\'; this.borderColor=\'#ff7900\'" style="FONT-SIZE: 9pt; FONT-FAMILY: Tahoma;CURSOR:pointer;" onClick="shortcutswitch(0);"><input name="radiobutton" type="radio" value="Enter" ID="lrRadio1">Enter</td></tr><tr><td onMouseOut="this.bgColor=\'\';this.borderColor=\'\'" onMouseOver="this.bgColor=\'#9AB5DC\'; this.borderColor=\'#ff7900\'" style="FONT-SIZE: 9pt; FONT-FAMILY: Tahoma;CURSOR:pointer;" onClick="shortcutswitch(1);"><input name="radiobutton" type="radio" value="Ctrl + Enter" ID="lrRadio2">Ctrl + Enter</td></tr><tr><td onMouseOut="this.bgColor=\'\';this.borderColor=\'\'" onMouseOver="this.bgColor=\'#9AB5DC\'; this.borderColor=\'#ff7900\'" style="FONT-SIZE: 9pt; FONT-FAMILY: Tahoma;CURSOR:pointer;" onClick="shortcutswitch(2);"><input name="radiobutton" type="radio" value="ALT + S" ID="lrRadio3">ALT + S</td></tr></table> </div></span></div></div></div><div class="bottom"><div class="bar4" id="bottom_prompt"></div></div></div>';
}
document.write(iframestyle+bodyhtml);
window.$ = function (id) {
            return document.getElementById(id);
        };

function shortoname(a) {
    return a.length > 35 && (a = "[" + a.substr(0, 10) + "..]"), a;
}

function f2(a) {
    return 10 > a ? "0" + a : a.toString();
}

function GetNowTime() {
    var a = new Date();
    return f2(a.getMonth() + 1) + "-" + f2(a.getDate()) + " " + f2(a.getHours()) + ":" + f2(a.getMinutes()) + ":" + f2(a.getSeconds());
}

function javaTrim(a) {
    var b, c, d, e;
    if (null == a) return "";
    if (b = 0, d = a.length, trimstr = "", 0 > c) return trimstr;
    for (flagbegin = !0, flagend = !0; 1 == flagbegin; ) " " == a.charAt(b) ? (b++, 
    flagbegin = !0) : flagbegin = !1;
    for (c = d - 1, e = 0; 1 == flagend; ) " " == a.charAt(c) ? (c--, flagend = !0, 
    e++) : flagend = !1;
    return trimstr = a.length == b ? "" : a.substring(b, c + 1);
}

function cleanWordString(a) {
    if (a = a.replace(/<\/?SPAN[^>]*>/gi, ""), a = a.replace(/<(\w[^>]*)  class=([^    |>]*)([^>]*)/gi, "<$1$3"), 
    a = a.replace(/<(\w[^>]*)  lang=([^    |>]*)([^>]*)/gi, "<$1$3"), a = a.replace(/<\\?\?xml[^>]*>/gi, ""), 
    a = a.replace(/<\/?\w+:[^>]*>/gi, ""), a = a.replace(/ /, "  "), a = a.replace(/<iframe/gi, "<xiframe"), 
    isoverie5) {
        var b = new RegExp("(<P)([^>]*>.*?)(</P>)", "gi");
        a = a.replace(b, "<div$2</div>");
    }
    return a = a.replace(/<script.*<\/script>/gi, "");
}

function AddLine() {
    var c, d, e, a = "\r\n", b = $("TextBox1_editor");
    document.selection && "Control" != document.selection.type ? (c = document.selection.createRange(), 
    c.text.length > 0 ? c.text += a : c.text = a, c.select()) : null != b && window.getSelection && b.selectionStart > -1 && (d = b.selectionStart, 
    e = b.selectionEnd, b.value = b.value.substring(0, d) + a + b.value.slice(e), b.selectionStart = d + 2, 
    b.selectionEnd = e + 1);
}

function isEnter(a) {
    var b, c, d;
    return a = a || window.event, b = a.keyCode, c = a.ctrlKey, d = a.altKey, d && 37 == a.keyCode ? (a.cancelBubble = !0, 
    a.returnValue = !1, void 0) : 13 == b && "Enter" == shortcut && c ? (AddLine(), 
    !1) : 13 == b && "Enter" == shortcut ? (clearhtml = User_Send(), !1) : c && 13 == b && "Ctrl + Enter" == shortcut ? (clearhtml = User_Send(), 
    !1) : d && 83 == b && "ALT + S" == shortcut ? (clearhtml = User_Send(), !1) : !0;
}

function resetIfEnter() {
    return clearhtml ? (clearhtml = !1, !1) : void 0;
}

function editfocus() {
    isFocus = !0;
}

function editblur() {
    isFocus = !1;
}

function SETEditorText(a, b) {
    b ? $("TextBox1_editor").value += a : $("TextBox1_editor").value = a;
}
if(typeof(sethtml)=='undefined')
{
    function sethtml(a, b, c) {
        var e, d = "";
        switch (c) {
          case 1:
            d = "systemTip";
            break;

          case 2:
            d = "visitor";
            break;

          case 3:
            d = "operator";
        }
        return e = "", 2 == c && (e += '<div style="padding-right:30px;">'), e += '<div class="lim_' + d + ' lim_clearfloat " style="padding-right:30px;">', 
        e += '<div class="lim_bubble">', e += "<" + ("systemTip" == d ? "span" : "p") + ' class="lim_' + ("systemTip" == d ? "infotip" : "dot") + '">', 
        e += b, e += "</" + ("systemTip" == d ? "span" : "p") + ">", e += ieFixRadius ? '<div class="lim_radius lim_r2"></div><div class="lim_radius lim_r3"></div><div class="lim_radius lim_r4"></div>' : "", 
        e += "</div>", e += ieFixRadius ? '<div class="lim_radius lim_r1"></div>' : '<div class="lim_tale"><div id="radiusborder"></div></div>', 
        e += "</div>", 2 == c && (e += "</div>"), e;
    }
}

function SetChatWords(a, b, c, d) {
    d ? $('chatMessageArea').innerHTML += sethtml(a, b, c) : $('chatMessageArea').innerHTML = sethtml(a, b, c), 
    scrollframe();
}

function floatleft(a) {
    var b, c, d;
    return a && null != Interval1 ? (clearInterval(Interval1), Interval1 = null, void 0) : (b = $("td_prompt"), 
    c = b.parentNode, b.parentNode.style.overflow = "hidden", b.style.textOverflow = "", 
    b.style.overflow = "visible", d = 1, Interval1 = setInterval(function() {
        var a, e, f;
        return 3 > d && d > 0 ? (d++, void 0) : (a = b.scrollWidth, e = b.parentNode.clientWidth, 
        f = c.scrollLeft, f = f ? f : 0, a > e + f ? (c.scrollLeft = f + 15, d = 0) : (c.scrollLeft = 0, 
        d++), void 0);
    }, 700), void 0);
}
// && SetChatWords('<p><font class="sysfont">' + c101 + "&nbsp;" + GetNowTime() + "</font></p>", '<div style="margin-left:5px" class="operatorfont">' + a + "</div>", 1, !0)
function SetPrompt(a, b) {
    "" != a && (b, 
    floatleft(a.length <= 35), ssl && (a = '<img src="imgs/secure.gif"  alt="SSL 128 bit"> ' + a), 
    obj = $("td_prompt"), obj.innerHTML != a && (obj.innerHTML = a));
}

function SetbottomPrompt(a) {
    ssl && (a = '<img src="imgs/secure.gif"  alt="SSL 128 bit"> ' + a), obj = $("bottom_prompt"), 
    obj.innerHTML != a && (obj.innerHTML = a);
}



function excludeE(a) {
    var b, c, d, e;
    if (c = /<.*?onresize.*?>/gi, b = a.match(c), null == b) return a;
    for (i = 0; i < b.length; i++) d = b[i], e = d.replace(/onresize/gi, "onresize" + i), 
    a = a.replace(d, e);
    return a;
}

function convertIMG(a) {
    var b, c, d, e;
    if (d = /{img:.*?}/g, b = a.match(d), null == b) return a;
    for (i = 0; i < b.length; i++) {
        if (c = b[i].match(d), null == c) return a;
        1 == c.length && (e = c[0].substring(c[0].indexOf(":") + 1, c[0].indexOf("}")), 
        a = a.replace(c, "<img src=" + e + " border=0>"));
    }
    return a;
}

function convertToHtml(a) {
    return convertIMG(a.replace(/ /g, "&nbsp;").replace(/>/g, "&gt;").replace(/</g, "&lt;").replace(/\r\n/g, "<br>").replace(/\n/g, "<br>").replace(/\"/g, "&quot;").replace(/\'/g, "&#39;"));
}

function User_Send() {
    if(null == wordscheckstring){alert(endtishi);return false;}
    var a=javaTrim($("TextBox1_editor").value.replace(/\n/g, ""));
    var b=excludeE(convertToHtml($("TextBox1_editor").value));
    if(a=='' && (b.indexOf('IMG')==-1) && (b.indexOf('img')==-1)){
        SetbottomPrompt(cannot_send_null);
        return false;
    }
    var ml=8000;if(kindget==1)ml=2000;if(escape(b).length>ml){alert(c120.replace('{0}',b.length.toString()));return false;};
    if("" != newtext){newtext += "," + encodeURIComponent(b);}
    else
    {
    presendtext += "," + encodeURIComponent(b);
    }
    if(MaxID!=0)SetChatWords('<p><font class="clientnamefont">' + you + " " + GetNowTime() + "</font></p>", '<div style="margin-left:5px" class="clientfont">' + b + "</div>",2,true);
    if(c93==-1)autoanswer3_time=new Date().getTime();
    clearTimeout(timerID_answermore);timerID_answermore=null;
    if(1 != chatstate){chatstate = 1;getServerData("start");}
     SETEditorText("", false);
    return true;
    
}

function pingjia() {
    var a, b;
    if (null == wordscheckstring) return alert(endtishi), void 0;
    if (hideLRDiv("lrfacediv"), hideLRDiv("lrteldiv"), "" == pj_html) {
        for (pj_html = '<table id="Table_pingjia" cellSpacing="5" cellPadding="0" align="center" border="0"><tr><td height="20"><b>' + c76 + "</b></td></tr><tr><td >" + c77 + "</td></tr><tr><td>", 
        a = c72.split("|"), w = 0; w < a.length; w++) "" != a[w] && (pj_html += '<input type="radio" id="pj' + w.toString() + '" name="pj"   value="' + a[w] + '" ' + (0 == w ? "checked" : "") + " />" + a[w]);
        pj_html += '</td></tr><tr><td height="20" valign="bottom">' + c78 + '</td></tr><tr><td><TEXTAREA rows="8" cols="42"  name="note"  id="note"  style="BORDER-RIGHT: navy 1px solid; BORDER-TOP: navy 1px solid; FONT-SIZE: 12pt; BORDER-LEFT: navy 1px solid; WIDTH: 100%; BORDER-BOTTOM: navy 1px solid; BORDER-LEFT: navy 1px solid; HEIGHT: 75px"></TEXTAREA></td></tr><tr><td align="center" id="td_19"><A onClick="OK_onclick();return false;" href="javascript:void(0)" class="menu2">' + c79 + '</A> <A style="margin-left:20px;" onClick="window.parent.pingjia2();return false;" href="javascript:void(0)" class="menu2">' + c80 + "</A>	</td></tr></table>";
    }
    "" == $("lrpinjiadiv").innerHTML && ($("lrpinjiadiv").innerHTML = '<iframe id="pingjiaFrame" name="pingjiaFrame" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none;  BORDER-BOTTOM-STYLE: none; " frameborder="0" hspace="0" height="221" width="100%" src="valuation2.aspx?jid='+js_pm+'"></iframe>'), 
    b = $("lrpinjiadiv"), b.style.display = "none" == b.style.display ? "block" : "none";
}

function pingjia1(a, b) {
    $("lrpinjiadiv").style.display = "none", pj0 = a, pj_note = b, 
    pj = encodeURIComponent(pj0) + "|" + encodeURIComponent(pj_note), 1 != chatstate && (chatstate = 1, 
    getServerData("start")), SetChatWords("", '<p><font class="sysfont">' + c119 + "</font></p>", 1, !0);
}

function pingjia2() {
    $("lrpinjiadiv").style.display = "none";
}

function Freecall() {
    if (null != Telurl) return window.open(Telurl), void 0;
    if (null == wordscheckstring) return alert(endtishi), void 0;
    hideLRDiv("lrpinjiadiv"), hideLRDiv("lrfacediv"), "" == $("lrteldiv").innerHTML && ($("lrteldiv").innerHTML = '<iframe id="telFrame" name="pingjiaFrame" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none;  BORDER-BOTTOM-STYLE: none; " frameborder="0" hspace="0" height="221" width="100%" src="freecall2_' + lng + '.aspx?jid='+js_pm+'"></iframe>');
    var a = $("lrteldiv");
    a.style.display = "none" == a.style.display ? "block" : "none";
}

function Freecall1(a, b) {
    GuestTel = encodeURIComponent(a) + "|" + encodeURIComponent(b), 1 != chatstate && (chatstate = 1, 
    getServerData("start")), $("lrteldiv").style.display = "none";
}

function Freecall2() {
    $("lrteldiv").style.display = "none";
}

function cancelonunload() {
    window.onbeforeunload = null;
}

function endcheck() {
    null != timerID && (clearTimeout(timerID), timerID = null), chatstate = 2;
}

function Client_Check() {
    "" != GuestTel && (newtext += ",ACT_TEL|" + GuestTel, GuestTel = ""), "" != pj && "1" != pj && (newtext += ",ACT_PJ|" + pj, 
    pj = "1"), getServerData("check");
}
function f14(){getServerData("check");}

function getServerData(a) {
    var b, c;
    if ("check" == a) {
        if (sending) return;
        sending = 1, "" == sendingtext ? (c = newtext.length>200?'':",ACT_TEMP|" + (isFocus ? "1" : "0") + "|" + encodeURIComponent(javaTrim($("TextBox1_editor").value).substring(0, 100)), 
        parseInt(c109) > 0 && parseInt(autoanswer0_time) > 0 && new Date().getTime() - parseInt(autoanswer0_time) > 1e3 * parseInt(c109) && (c109 = 0, 
        c += ",ACT_r0"), parseInt(c110) > 0 && parseInt(autoanswer3_time) > 0 && new Date().getTime() - parseInt(autoanswer3_time) > 1e3 * parseInt(c110) && (autoanswer3_time = 0, 
        c += ",ACT_r1"), sendedtemptext != c && (newtext += c, sendedtemptext = c), b = "id=" + siteid + "&sid=" + sid + "&maxid=" + MaxID + "&_text=" + encodeURIComponent((newtext + newtext1 + presendtext).replace(/\+/g, "%2b")) + "&lng=" + lng, 
        sendingtext = newtext + presendtext, newtext = newtext1 = presendtext = "") : b = "id=" + siteid + "&sid=" + sid + "&maxid=" + MaxID + "&_text=" + encodeURIComponent(sendingtext.replace(/\+/g, "%2b")) + "&lng=" + lng, 
        "" != LRppid && (b += "&pp=" + LRppid), PostCall(LR_sysurl + "LR/CdCheck.aspx?sid1="+sid, b);
    } else "start" == a ? (b = "websiteid=" + websiteid+'&p='+escape(p) + "&sid=" + sid + "&cid=" + cid + "&lng=" + lng, 
    PostCall(LR_sysurl + "LR/CdStart1.aspx?sid1="+sid, b)) : "end" == a && (b = "id=" + siteid + "&sid=" + sid + "&lng=" + lng, 
    "" != pj && "1" != pj && (b += "&pj=" + pj), PostCall(LR_sysurl + "LR/CdEnd.aspx?sid1="+sid, b));
}
var chated_own=0;
function autoanswermore() {
if(c118!='' && c130==1)
    {
        if(LR_getCookie('chated') == '1')
        {
            if(chated_own==0)return;
        }
        else
        {
            LR_SetCookie('chated', '1', 60);chated_own=1;
        }
    }
        var a, b, c, d, e, f;
    return "" == c118 || 2 == chatstate ? (null != timerID_answermore && (clearTimeout(timerID_answermore), 
    timerID_answermore = null), void 0) : 0 == autoanswer0_time ? (timerID_answermore = setTimeout("autoanswermore()", 1e3), 
    void 0) : (a = new Date().getTime(), b = c118.indexOf(","), b > 0 && (c = c118.substring(0, b), 
    d = a - autoanswer0_time, e = 1e3 * parseInt(c), d >= e && (c118 = c118.substring(b + 1, c118.length), 
    b = c118.indexOf("|"), f = c118.substring(0, b).replace(/\+/g, "%20"), c118 = c118.substring(b + 1, c118.length), 
    addnewtext(",ACT_AR|" + f), f = decodeURIComponent(f), SetChatWords('<p><font class="operatornamefont">' + GetNowTime() + "</font></p>", '<div style="margin-left:5px" class="operatorfont">' + f + "</div>", 3, !0))), 
    timerID_answermore = setTimeout("autoanswermore()", 1e3), void 0);
    
}


function addnewtext(a) {
    -1 == newtext1.indexOf(a) && (newtext1 += a);
}

function autoanswer() {
    var a;
    parseInt(c93) > 0 && parseInt(autoanswer0_time) > 0 && new Date().getTime() - parseInt(autoanswer0_time) > 1e3 * parseInt(c93) && (c93 = 0, 
    a = c94.replace("{0}", getnoteurl() + "&page=3").replace("{1}", getnoteurl() + "&page=FreeTel"), 
    addnewtext(",ACT_AR|" + escape(a)), SetChatWords('<p><font class="operatornamefont">' + c101 + "&nbsp;" + GetNowTime() + "</font></p>", '<div style="margin-left:5px" class="operatorfont">' + a + "</div>", 3, !0)), 
    parseInt(c95) > 0 && parseInt(autoanswer1_time) > 0 && new Date().getTime() - parseInt(autoanswer1_time) > 60 * 1e3 * parseInt(c95) && (autoanswer1_time = 0, 
    a = c96, addnewtext(",ACT_AR|" + escape(a)), SetChatWords('<p><font class="operatornamefont">' + c101 + "&nbsp;" + GetNowTime() + "</font></p>", '<div style="margin-left:5px" class="operatorfont">' + a + "</div>", 3, !0)), 
    parseInt(c97) > 0 && parseInt(autoanswer2_time) > 0 && new Date().getTime() - parseInt(autoanswer2_time) > 60 * 1e3 * parseInt(c97) && (autoanswer2_time = 0, 
    a = c98, addnewtext(",ACT_AR|" + escape(a)), SetChatWords('<p><font class="operatornamefont">' + c101 + "&nbsp;" + GetNowTime() + "</font></p>", '<div style="margin-left:5px" class="operatorfont">' + a + "</div>", 3, !0)), 
    parseInt(c99) > 0 && parseInt(autoanswer3_time) > 0 && new Date().getTime() - parseInt(autoanswer3_time) > 1e3 * parseInt(c99) && (autoanswer3_time = 0, 
    a = c100, addnewtext(",ACT_AR|" + escape(a)), SetChatWords('<p><font class="operatornamefont">' + c101 + "&nbsp;" + GetNowTime() + "</font></p>", '<div style="margin-left:5px" class="operatorfont">' + a + "</div>", 3, !0));
}

function start2(a) {
    autoanswer0_time = new Date().getTime(), LRppid = a[5], "1" != a[0] && (timerID_answermore = setTimeout("autoanswermore()", 1e3));
}

function getReady(a) {
    var b, c, d, e;
    if (sending = 0, b = 0, null == a || "r" == a) return "" != sendingtext && (sendingtext = ""), 
    1 == chatstate && (clearTimeout(timerID), timerID = null, timerID = setTimeout("Client_Check()", 2e3)), 
    autoanswer(), void 0;
    if (0 == a.indexOf("err")) return 1 == chatstate && (clearTimeout(timerID), timerID = null, 
    timerID = setTimeout("Client_Check()", 2e3)), autoanswer(), void 0;
    var soundp=0;
    for (c = a.split(","), w = 0; w < c.length; w++) if ("" != c[w]) if ("noinput" != c[w]) {
        if (d = c[w].split("|"), d.length > 1 && "inputting" == d[0]) SetbottomPrompt(operator_inputting.replace("{0}", shortoname(unescape(d[1].replace(/\+/g, "%20"))))); else if (6 == d.length) {
            switch ("" != sendingtext && (sendingtext = ""), d[1] = d[1].replace(/\+/g, "%20"), 
            d[5] = d[5].replace(/\+/g, "%20"), d[1] = cleanWordString(unescape(d[1])), d[4] = d[4].replace(/\+/g, "%20"), 
            d[4] = unescape(d[4]), d[5] = unescape(d[5]), d[4]) {
              case "start":
                start2(d), b = 1;
                break;

              case "start1":
                c93 = 0, start2(d), b = 1;
                break;

              case "restart":
                return cancelonunload(), endcheck(), alert(endtishi), void 0;

              case "end":
                return cancelonunload(), endcheck(), void 0;

              case "offline":
                return SetChatWords('<p><font class="operatornamefont">' + c101 + "&nbsp;" + GetNowTime() + "</font></p>", '<div style="margin-left:5px" class="operatorfont">' + d[1].replace("{0}", getnoteurl() + "&page=3").replace("{1}", getnoteurl() + "&page=FreeTel") + "</div>", 3, !0), 
                cancelonunload(), endcheck(), wordscheckstring = null, void 0;

              case "print":
                SetPrompt(d[1], 1);
                break;

              case "direct":
                return cancelonunload(), endcheck(), wordscheckstring = null, void 0;

              case "exit":
                return cancelonunload(), endcheck(), void 0;
            }
            if ("-1" == d[0]) return null != timerID && (clearTimeout(timerID), timerID = null), 
            getReady("r"), cancelonunload(), chatstate = 2, void 0;
            if ("" != d[3]) {
                if (b) "|" != wordscheckstring && (wordscheckstring += d[3] + "|", MaxID = d[3]); else {
                    if (-1 != wordscheckstring.indexOf("|" + d[3] + "|")) continue;
                    wordscheckstring += d[3] + "|", MaxID = d[3];
                }
                switch (d[2]) {
                  case "1":
                    d[1].toString().indexOf("%name%") > -1 && (d[1] = d[1].toString().replace("%name%", "<b>" + d[5] + "</b>")), 
                    SetPrompt(d[1], 1);
                    break;

                  case "-3":
                    c93 = -1, autoanswer3_time = 0, autoanswer2_time = autoanswer1_time = new Date().getTime(), 
                    SetChatWords('<p><font class="operatornamefont">' + d[5].replace("HTTP/1.1 100 Continue", "") + "&nbsp; " + d[0] + "</font></p>", '<div style="margin-left:5px" class="operatorfont">' + d[1] + "</div>", 3, !0);soundp=1;
                    break;

                  case "-2":
                    SetChatWords('<p><font class="clientnamefont">' + you + "  " + d[0] + "</font></p>", '<div style="margin-left:5px" class="clientfont">' + d[1] + "</div>", 2, !0);
                    break;

                  case "3":
                    if ("" == d[5]) break;
                    c93 = -1, autoanswer3_time = 0, autoanswer2_time = autoanswer1_time = new Date().getTime(), 
                    SetChatWords('<p><font class="operatornamefont">' + d[5].replace("HTTP/1.1 100 Continue", "") + "&nbsp;" + GetNowTime() + "</font></p>", '<div style="margin-left:5px" class="operatorfont">' + d[1] + "</div>", 3, !0), 
                    owordscount++;soundp=1;
                    break;
                    
                      case '17':
            SetChatWords('','<div style="margin-left:5px" class="clientfont">'+d[1]+'</div>',2,1);
            break;
 case '43':
           pingjia();
            break;

case '16':
            d[1]=d[1].toString().replace('%c%','<b><font class="clientnamefont">'+you+'</font></b>');
            SetChatWords('','<p><font class="sysfont">'+d[1]+'</font></p>',1,1);
            break;

                  case "20":
                    autoanswer3_time = 0, autoanswer2_time = autoanswer1_time = new Date().getTime(), 
                    SetChatWords("", d[1], 1, !0);
                    break;

                  case "4":
                  e = d[1].split("|");
                   lurl = unescape(e[1]);
                   if(lurl.substring(0,9)=='transfer:'){lurl=lurl.substring(9,lurl.length);}else{lurl='custom_url.aspx?url='+unescape(e[1]);}
                    autoanswer3_time = 0, autoanswer2_time = autoanswer1_time = new Date().getTime(), 2 == e.length ? (unescape(e[0])=='' || window.confirm(unescape(e[0]))) && (getServerData("end"), 
                    cancelonunload(), setTimeout("top.location=lurl;", 1500)) : 1 == e.length && window.open(d[1], d[3], "");
                    break;

                  case "22":
                    cancelonunload(), chatstate = 2, getServerData("end"), setTimeout("window.location = o[1];", 1e3);
                }
            }
        }
    } else SetbottomPrompt(tishi);
    if(soundp)play();
    "" != sendingtext && (sendingtext = ""), clearTimeout(timerID), timerID = null, 
    timerID = setTimeout("Client_Check()", b ? 1 : 2e3), autoanswer();
}

function f32() {
    1 != chatstate;
}

function getLRFacehtml() {
    var b, a = "";
    for (a += '<table border="1" cellspacing="0" cellpadding="3" ID="Table1" style="background-color:#ffffff;BORDER-COLLAPSE:collapse;color:#CCCCCC;" align=center>', 
    b = 1; 16 > b; b++) 1 == b % 5 && (a += "<tr>"), a += '<td><img src="' + imgpath + b + '.gif" border="0" onclick="LROK_onclick(this.src);" alt="" style="cursor:pointer;"></td>', 
    0 == b % 5 && (a += "</tr>");
    return a += "</table>";
}

function LROK_onclick(a) {
    $("lrfacediv").style.display = "none";
    var b = $("TextBox1_editor").value;
    a && (b.substr(0, b.length - 4) + "<BR>" == b && (b = b.substr(0, b.length - 4)), 
    $("TextBox1_editor").value = b + "{img:" + a + "}", $("TextBox1_editor").focus());
}

function Upload() {
    if (null == wordscheckstring) return alert(endtishi), void 0;
    hideLRDiv("lrpinjiadiv"), hideLRDiv("lrteldiv"), hideLRDiv("lrfacediv");
    var a = $("uploaddiv");
    a.innerHTML='<iframe id="uploadFrame" name="uploadFrame" style="BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none;  BORDER-BOTTOM-STYLE: none;" frameborder="0" hspace="0" height="90" width="100%" src="about:blank"></iframe>';
    var up='<table cellspacing=1 cellpadding=0 width=100% border=0 ID="Table1"><form action="'+LR_sysurl+'lr/ClientUpload.aspx?uploadId='+sid+'&siteid='+websiteid+'&lng='+lng+'" method="post" enctype="multipart/form-data" name="Form1" ID="Form1" target="_self"><tr><td colspan=3 height=1></td></tr><tr><td style="WIDTH: 100px;" noWrap>'+c27+':</td><td>'+c37+'</td><td style="width:10px;"><INPUT type="button" value="'+c40+'" ID="Button2" NAME="Button2" onclick="parent.hideLRDiv(\'uploaddiv\');"></td></tr><tr><td noWrap>'+c41+':</td><td colspan=2><INPUT type="file" ID="File1" NAME="File1" style="width:100%;"></td></tr><tr><td noWrap>'+c42+':</td><td><INPUT type="text" ID="filenote" NAME="filenote" style="WIDTH: 100%;"></td><td><INPUT type="submit" value="'+c43+'" ID="Button1" NAME="Button1" onclick="return parent.f29();"></td></tr></form></table>';
    a.style.display=(a.style.display=='none'?'block':'none');
    var obj=uploadFrame.document;
     obj.open();
    obj.write('<html><head><style type="text/css">body,td{margin: 0px; padding: 0px 0px 0px 0px; border: 0px;font-size: 9pt; }</style></head><body scroll=no>'+up+'</body></html>');
    obj.close();
    
}
 function f29()
            {
            var v=uploadFrame.document.getElementById('File1').value;
            if(v=='')
            {
            alert(c18);
            uploadFrame.document.getElementById('File1').focus();
            return false;
            }
           
            var v1=uploadFrame.document.getElementById('File1').value;
            if(v1=='')
            {
            uploadFrame.document.getElementById('filenote').value=v.substring(v.lastIndexOf('\\')+1);
            
            }
         hideLRDiv("uploaddiv");
            
           
            return true;
            }
function SelSmile() {
    if (null == wordscheckstring) return alert(endtishi), void 0;
    hideLRDiv("lrpinjiadiv"), hideLRDiv("lrteldiv");
    var a = $("lrfacediv");
    "none" == a.style.display ? (a.style.display = "block", "" == a.innerHTML && (a.innerHTML = getLRFacehtml())) : a.style.display = "none";
}
function hideLRDiv(a) {
    var b = $(a);
    b && (b.style.display = "none");
}

function showLRShortCut() {
    var b = $("lrshortcutdiv");
    "none" == b.style.display ? (b.style.display = "block", "Enter" == shortcut && (lrRadio1.checked = !0), 
    "Ctrl + Enter" == shortcut && (lrRadio2.checked = !0), "ALT + S" == shortcut && (lrRadio3.checked = !0)) : b.style.display = "none";
}

function shortcutswitch(a) {
    var b = "Enter";
    0 == a ? b = "Enter" : 1 == a ? b = "Ctrl + Enter" : 2 == a && (b = "ALT + S"), 
    shortcut = b, lrHideShortCut(), $("TextBox1_editor").focus();
}

function lrHideShortCut() {
    var a = $("lrshortcutdiv");
    a.style.display = "none";
}

function wresize() {
    scrollframe();
}

function scrollframe() {
    if(!$("kuang2"))return;$("kuang2").scrollTop = 999999; setTimeout("$('kuang2').scrollTop = 999999;", 500);
}

var LR_xmlHttp, Ajax_timerID, pj0, pj_note, pj_html, timerID_answermore, lurl, LRppid, imgpath, shortcut = "Enter", tishi = "", chatstate = 0, wordscheckstring = "|", isFocus = !1, timerID = null, newtext = "", newtext1 = "", sendingtext = "", presendtext = "", sendedtemptext = "", sending = 0, MaxID = 0, pj = "", owordscount = 0, GuestTel = "", autoanswer0_time = 0, autoanswer1_time = 0, autoanswer2_time = 0, autoanswer3_time = 0, clearhtml = !1, ieFixRadius = (document.all && !document.documentMode || document.documentMode < 9) && (ieFixRadius = !0), Interval1 = null, lastclsid = null, kind0 = !0, trypost = 0;




$('chatMessageArea').innerHTML= ((c_dialog=='')?'':sethtml("", unescape(c_dialog), 1));


function isIe(){

       return (!!window.ActiveXObject || "ActiveXObject" in window)  ? true : false;

   }
   if(voice_visible)
   {
if(!isIe()){document.write('<audio id="sound1" preload="auto" src="sounds/sound.wav"></audio>');}else{document.write('<bgsound id="sound" loop="1"  />');}
}
    function play() {if(!voice_visible)return;
    if(!isIe()){$("sound1").play();
        }
        else
        {
           $("sound").src = "sounds/sound.wav" ;
       }
       
    }
    
smile_visible && ($("Img_face").style.display = ""),c90 && ($("Img_upload").style.display = ""), tel_visible && ($("Img_freetel").style.display = ""), 
valuation_visible && ($("Img_pingjia").style.display = ""), voice_visible && ($("Img_voice").style.display = ""), pj0 = "", pj_note = "", 
pj_html = "", timerID_answermore = null, lurl = "", LRppid = "", SetbottomPrompt(tishi, 1), 
document.writeln("</body>"), document.writeln("</html>"), 0 == chatstate && (chatstate = 1, 
getServerData("start")), imgpath = LR_imgurl+"headimg1/", window.onresize = wresize; if(LR_msg!='')SetChatWords('<p><font class="clientnamefont">' + you + " " + GetNowTime() + "</font></p>", '<div style="margin-left:5px" class="clientfont">' + LR_msg + "</div>",2,true);