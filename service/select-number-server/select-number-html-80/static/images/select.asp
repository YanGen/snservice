
<!DOCTYPE html>
<html lang="zh-CN">
	<head>
		<title>辰星内部选号系统</title>
		<meta name="mobile-agent" content="format=html5;url=http://www.niukaba.com/n/">
		<meta charset="utf-8" http-equiv="Content-Type">
		<meta name="keywords" content="号吧选号网 ,全国各地移动联通，联通靓号，电信靓号，固话靓号，170虚拟运营商靓号网" />
		<meta name="description" content="号吧选号网 -手机选号网，移动靓号网，全国专业选号平台" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" />
		<meta name="format-detection" content="telephone=no" />
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<meta name="apple-mobile-web-app-status-bar-style" content="black" />
		<meta content="320" name="MobileOptimized">
		<link href="css/style.css" rel="stylesheet">
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elementsa and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
		<![endif]-->

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/phoneCSS.css" rel="stylesheet" type="text/css">
	    <style type="text/css">
<!--
.STYLE5 {font-size: 12px}
p{margin:0px;}


a.iconlist-shop {
	background: url(images/ico-shop.png) no-repeat center 1px;
	background-size: 20px;
	font-size: 20px;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	/* border: 1px solid #f9f8f9; */
	-webkit-tap-highlight-color: rgba(0,0,0,0);
	border-bottom: 0;
	display: block;
	height: 45px;
	text-align: center;
	color: #5e5e5e;
	padding-top: 26px;
	text-decoration: none;
	
}

.sjdg{background: #eee; padding: 2px 5px;border: 1px #ddd solid;}
.STYLE9 {color: #FF0000}
.STYLE12 {color: #009933}
.STYLE13 {color: #009933; font-weight: bold; }

.Shuwei_li{float: left; width: 8.8%;height: 28px;line-height: 28px;}
.label{margin-bottom::0px; margin-top:2px;}

.fenye-li{ width:33.3333%;}

.BlkPhone{font-weight: bold; font-size: 16px; margin:0px 8px; line-height:35px; }
.Blkyy{background:#ef4047;  padding: 3px 8px;   margin: 0px 8px; cursor:pointer;}
.Blksc{background:#333333;  padding: 3px 8px;   margin: 0px 8px; cursor:pointer;}
.STYLE17 {color: #FF0000; font-size: 12px; }
-->
        </style>
</head>
 
	<body id="body">
		<header class="headfixed">
			<div class="top">
				<a class="return" href="javascript:history.back();">返回</a>
				<div class="title" onClick="$('.mediv').show()">
					辰星靓号选号系统
				</div>
				<a class="home" id="menuTrigger" href="javascript:;">导航</a>
			</div>
		</header>
		<section class="mb8 mt60">
		
			<form action="/search/" method='post' id='search'>
				<div class="options">
					<ul >
						<li class="yy_li">
							<label><input type="radio" name="type" value="" 
                            
                             >
							不限</label>
						</li>
						<li class="yy_li">
						  <label><input type="radio" name="type" value="1" 
							
							checked="checked" 
							
                             >
						  移动</label>
						</li>
						<li class="yy_li">
						  <label><input type="radio" name="type" value="2" 
							
                             >
						  联通</label>
						</li>
						<li class="yy_li">
						  <label><input type="radio" name="type" value="3" 
							
                             >
						  电信</label>
						</li>
                        
						<li class="yy_li" >
						  <label><input type="radio" name="type" value="9" 
							
                             >
						  170号</label>
						</li>
                        
                        
                        
					</ul>
					
				</div>
				<div class="options">
					<div >
               
						<p style="width:50%;float: left;padding-right: 2px;">
							<select name="province" id="province" class="area fol-r" onChange="mybind()" >
                            <option value="">不限省份</option>
							<OPTION value=8 >福建省</OPTION><OPTION value=70 >广东省</OPTION><OPTION value=102 >四川省</OPTION><OPTION value=111 >山东省</OPTION><OPTION value=112 >湖北省</OPTION><OPTION value=113 >贵州省</OPTION><OPTION value=114 >浙江省</OPTION><OPTION value=141 >江苏省</OPTION><OPTION value=155 >直辖市</OPTION><OPTION value=160 >辽宁省</OPTION><OPTION value=192 >安徽省</OPTION><OPTION value=211 >云南省</OPTION><OPTION value=228 >河北省</OPTION><OPTION value=240 >湖南省</OPTION><OPTION value=272 >吉林省</OPTION><OPTION value=282 >黑龙江</OPTION><OPTION value=295 >河南省</OPTION><OPTION value=314 >陕西省</OPTION><OPTION value=355 >海南省</OPTION><OPTION value=361 >广西省</OPTION><OPTION value=376 >甘肃省</OPTION><OPTION value=389 >山西省</OPTION><OPTION value=400 >江西省</OPTION><OPTION value=412 >内蒙古省</OPTION><OPTION value=424 >宁夏省</OPTION><OPTION value=430 >青海省</OPTION>
                            </select>
						</p>
						<p style="width: 50%;float: left;padding-left: 2px;">
							<select name="city" id="city" class="area fol-r" >
							
							<option value="">不限城市</option>
							
							</select>
						</p>
						<script type="text/javascript">
							function mybind()
							{
								var x=document.getElementById("province").value;
								for (var m=document.getElementById("city").options.length;m>=0;m--)
								document.getElementById("city").options[m]=null;
								
								var op = new   Option("全部","");   
								document.getElementById("city").options.add(op);								
								if(parseInt(x)==8){var op = new   Option("福州","9");document.getElementById('city').options.add(op);}if(parseInt(x)==8){var op = new   Option("厦门","11");document.getElementById('city').options.add(op);}if(parseInt(x)==8){var op = new   Option("泉州","13");document.getElementById('city').options.add(op);}if(parseInt(x)==8){var op = new   Option("龙岩","14");document.getElementById('city').options.add(op);}if(parseInt(x)==8){var op = new   Option("三明","15");document.getElementById('city').options.add(op);}if(parseInt(x)==8){var op = new   Option("漳州","17");document.getElementById('city').options.add(op);}if(parseInt(x)==8){var op = new   Option("莆田","36");document.getElementById('city').options.add(op);}if(parseInt(x)==8){var op = new   Option("宁德","43");document.getElementById('city').options.add(op);}if(parseInt(x)==8){var op = new   Option("南平","44");document.getElementById('city').options.add(op);}if(parseInt(x)==70){var op = new   Option("广州","71");document.getElementById('city').options.add(op);}if(parseInt(x)==70){var op = new   Option("中山","94");document.getElementById('city').options.add(op);}if(parseInt(x)==70){var op = new   Option("佛山","95");document.getElementById('city').options.add(op);}if(parseInt(x)==70){var op = new   Option("东莞","96");document.getElementById('city').options.add(op);}if(parseInt(x)==70){var op = new   Option("深圳","97");document.getElementById('city').options.add(op);}if(parseInt(x)==70){var op = new   Option("珠海","98");document.getElementById('city').options.add(op);}if(parseInt(x)==70){var op = new   Option("汕头","99");document.getElementById('city').options.add(op);}if(parseInt(x)==114){var op = new   Option("杭州","115");document.getElementById('city').options.add(op);}if(parseInt(x)==114){var op = new   Option("温州","116");document.getElementById('city').options.add(op);}if(parseInt(x)==114){var op = new   Option("宁波","117");document.getElementById('city').options.add(op);}if(parseInt(x)==114){var op = new   Option("金华","119");document.getElementById('city').options.add(op);}if(parseInt(x)==114){var op = new   Option("嘉兴","120");document.getElementById('city').options.add(op);}if(parseInt(x)==114){var op = new   Option("湖州","121");document.getElementById('city').options.add(op);}if(parseInt(x)==114){var op = new   Option("衢州","123");document.getElementById('city').options.add(op);}if(parseInt(x)==114){var op = new   Option("舟山","124");document.getElementById('city').options.add(op);}if(parseInt(x)==114){var op = new   Option("台州","125");document.getElementById('city').options.add(op);}if(parseInt(x)==114){var op = new   Option("丽水","126");document.getElementById('city').options.add(op);}if(parseInt(x)==114){var op = new   Option("绍兴","127");document.getElementById('city').options.add(op);}if(parseInt(x)==70){var op = new   Option("梅州","128");document.getElementById('city').options.add(op);}if(parseInt(x)==70){var op = new   Option("河源","129");document.getElementById('city').options.add(op);}if(parseInt(x)==70){var op = new   Option("云浮","130");document.getElementById('city').options.add(op);}if(parseInt(x)==70){var op = new   Option("揭阳","131");document.getElementById('city').options.add(op);}if(parseInt(x)==70){var op = new   Option("清远","132");document.getElementById('city').options.add(op);}if(parseInt(x)==70){var op = new   Option("韶关","133");document.getElementById('city').options.add(op);}if(parseInt(x)==70){var op = new   Option("江门","134");document.getElementById('city').options.add(op);}if(parseInt(x)==70){var op = new   Option("湛江","135");document.getElementById('city').options.add(op);}if(parseInt(x)==70){var op = new   Option("茂名","136");document.getElementById('city').options.add(op);}if(parseInt(x)==70){var op = new   Option("肇庆","137");document.getElementById('city').options.add(op);}if(parseInt(x)==70){var op = new   Option("汕尾","138");document.getElementById('city').options.add(op);}if(parseInt(x)==70){var op = new   Option("阳江","139");document.getElementById('city').options.add(op);}if(parseInt(x)==70){var op = new   Option("潮州","140");document.getElementById('city').options.add(op);}if(parseInt(x)==141){var op = new   Option("南京","142");document.getElementById('city').options.add(op);}if(parseInt(x)==141){var op = new   Option("苏州","143");document.getElementById('city').options.add(op);}if(parseInt(x)==141){var op = new   Option("徐州","144");document.getElementById('city').options.add(op);}if(parseInt(x)==141){var op = new   Option("无锡","145");document.getElementById('city').options.add(op);}if(parseInt(x)==141){var op = new   Option("常州","146");document.getElementById('city').options.add(op);}if(parseInt(x)==141){var op = new   Option("南通","147");document.getElementById('city').options.add(op);}if(parseInt(x)==141){var op = new   Option("连云港","148");document.getElementById('city').options.add(op);}if(parseInt(x)==141){var op = new   Option("淮安","149");document.getElementById('city').options.add(op);}if(parseInt(x)==141){var op = new   Option("盐城","150");document.getElementById('city').options.add(op);}if(parseInt(x)==141){var op = new   Option("扬州","151");document.getElementById('city').options.add(op);}if(parseInt(x)==141){var op = new   Option("镇江","152");document.getElementById('city').options.add(op);}if(parseInt(x)==141){var op = new   Option("泰州","153");document.getElementById('city').options.add(op);}if(parseInt(x)==141){var op = new   Option("宿迁","154");document.getElementById('city').options.add(op);}if(parseInt(x)==155){var op = new   Option("北京","156");document.getElementById('city').options.add(op);}if(parseInt(x)==155){var op = new   Option("上海","157");document.getElementById('city').options.add(op);}if(parseInt(x)==155){var op = new   Option("天津","158");document.getElementById('city').options.add(op);}if(parseInt(x)==155){var op = new   Option("重庆","159");document.getElementById('city').options.add(op);}if(parseInt(x)==160){var op = new   Option("沈阳","161");document.getElementById('city').options.add(op);}if(parseInt(x)==160){var op = new   Option("大连","162");document.getElementById('city').options.add(op);}if(parseInt(x)==160){var op = new   Option("鞍山","163");document.getElementById('city').options.add(op);}if(parseInt(x)==160){var op = new   Option("抚顺","164");document.getElementById('city').options.add(op);}if(parseInt(x)==160){var op = new   Option("本溪","165");document.getElementById('city').options.add(op);}if(parseInt(x)==160){var op = new   Option("丹东","166");document.getElementById('city').options.add(op);}if(parseInt(x)==160){var op = new   Option("锦州","167");document.getElementById('city').options.add(op);}if(parseInt(x)==160){var op = new   Option("营口","168");document.getElementById('city').options.add(op);}if(parseInt(x)==160){var op = new   Option("阜新","169");document.getElementById('city').options.add(op);}if(parseInt(x)==160){var op = new   Option("辽阳","170");document.getElementById('city').options.add(op);}if(parseInt(x)==160){var op = new   Option("盘锦","171");document.getElementById('city').options.add(op);}if(parseInt(x)==160){var op = new   Option("铁岭","172");document.getElementById('city').options.add(op);}if(parseInt(x)==160){var op = new   Option("朝阳","173");document.getElementById('city').options.add(op);}if(parseInt(x)==160){var op = new   Option("葫芦岛","174");document.getElementById('city').options.add(op);}if(parseInt(x)==111){var op = new   Option("济南","175");document.getElementById('city').options.add(op);}if(parseInt(x)==111){var op = new   Option("青岛","176");document.getElementById('city').options.add(op);}if(parseInt(x)==111){var op = new   Option("淄博","177");document.getElementById('city').options.add(op);}if(parseInt(x)==111){var op = new   Option("枣庄","178");document.getElementById('city').options.add(op);}if(parseInt(x)==111){var op = new   Option("东营","179");document.getElementById('city').options.add(op);}if(parseInt(x)==111){var op = new   Option("烟台","180");document.getElementById('city').options.add(op);}if(parseInt(x)==111){var op = new   Option("潍坊","181");document.getElementById('city').options.add(op);}if(parseInt(x)==111){var op = new   Option("济宁","182");document.getElementById('city').options.add(op);}if(parseInt(x)==111){var op = new   Option("泰安","183");document.getElementById('city').options.add(op);}if(parseInt(x)==111){var op = new   Option("威海","184");document.getElementById('city').options.add(op);}if(parseInt(x)==111){var op = new   Option("日照","185");document.getElementById('city').options.add(op);}if(parseInt(x)==111){var op = new   Option("莱芙","186");document.getElementById('city').options.add(op);}if(parseInt(x)==111){var op = new   Option("临沂","187");document.getElementById('city').options.add(op);}if(parseInt(x)==111){var op = new   Option("德州","188");document.getElementById('city').options.add(op);}if(parseInt(x)==111){var op = new   Option("聊城","189");document.getElementById('city').options.add(op);}if(parseInt(x)==111){var op = new   Option("滨州","190");document.getElementById('city').options.add(op);}if(parseInt(x)==111){var op = new   Option("菏泽","191");document.getElementById('city').options.add(op);}if(parseInt(x)==192){var op = new   Option("合肥","193");document.getElementById('city').options.add(op);}if(parseInt(x)==192){var op = new   Option("芜湖","194");document.getElementById('city').options.add(op);}if(parseInt(x)==192){var op = new   Option("蚌埠","195");document.getElementById('city').options.add(op);}if(parseInt(x)==192){var op = new   Option("淮南","196");document.getElementById('city').options.add(op);}if(parseInt(x)==192){var op = new   Option("马鞍山","197");document.getElementById('city').options.add(op);}if(parseInt(x)==192){var op = new   Option("淮北","198");document.getElementById('city').options.add(op);}if(parseInt(x)==192){var op = new   Option("安庆","199");document.getElementById('city').options.add(op);}if(parseInt(x)==192){var op = new   Option("黄山","200");document.getElementById('city').options.add(op);}if(parseInt(x)==192){var op = new   Option("滁州","201");document.getElementById('city').options.add(op);}if(parseInt(x)==192){var op = new   Option("聊城","202");document.getElementById('city').options.add(op);}if(parseInt(x)==192){var op = new   Option("宿州","203");document.getElementById('city').options.add(op);}if(parseInt(x)==192){var op = new   Option("巢湖","204");document.getElementById('city').options.add(op);}if(parseInt(x)==192){var op = new   Option("亳州","205");document.getElementById('city').options.add(op);}if(parseInt(x)==192){var op = new   Option("六安","206");document.getElementById('city').options.add(op);}if(parseInt(x)==192){var op = new   Option("铜陵","207");document.getElementById('city').options.add(op);}if(parseInt(x)==192){var op = new   Option("阜阳","208");document.getElementById('city').options.add(op);}if(parseInt(x)==192){var op = new   Option("池州","209");document.getElementById('city').options.add(op);}if(parseInt(x)==192){var op = new   Option("宣城","210");document.getElementById('city').options.add(op);}if(parseInt(x)==211){var op = new   Option("昆明","212");document.getElementById('city').options.add(op);}if(parseInt(x)==211){var op = new   Option("曲靖","213");document.getElementById('city').options.add(op);}if(parseInt(x)==211){var op = new   Option("玉溪","214");document.getElementById('city').options.add(op);}if(parseInt(x)==211){var op = new   Option("保山","215");document.getElementById('city').options.add(op);}if(parseInt(x)==211){var op = new   Option("昭通","216");document.getElementById('city').options.add(op);}if(parseInt(x)==211){var op = new   Option("丽江","217");document.getElementById('city').options.add(op);}if(parseInt(x)==211){var op = new   Option("普洱","218");document.getElementById('city').options.add(op);}if(parseInt(x)==211){var op = new   Option("临沧","219");document.getElementById('city').options.add(op);}if(parseInt(x)==211){var op = new   Option("楚雄","220");document.getElementById('city').options.add(op);}if(parseInt(x)==211){var op = new   Option("红河","221");document.getElementById('city').options.add(op);}if(parseInt(x)==211){var op = new   Option("文山","222");document.getElementById('city').options.add(op);}if(parseInt(x)==211){var op = new   Option("西双版纳","223");document.getElementById('city').options.add(op);}if(parseInt(x)==211){var op = new   Option("大理","224");document.getElementById('city').options.add(op);}if(parseInt(x)==211){var op = new   Option("德宏","225");document.getElementById('city').options.add(op);}if(parseInt(x)==211){var op = new   Option("怒江","226");document.getElementById('city').options.add(op);}if(parseInt(x)==211){var op = new   Option("迪庆","227");document.getElementById('city').options.add(op);}if(parseInt(x)==228){var op = new   Option("石家庄","229");document.getElementById('city').options.add(op);}if(parseInt(x)==228){var op = new   Option("唐山","230");document.getElementById('city').options.add(op);}if(parseInt(x)==228){var op = new   Option("秦皇岛","231");document.getElementById('city').options.add(op);}if(parseInt(x)==228){var op = new   Option("邯郸","232");document.getElementById('city').options.add(op);}if(parseInt(x)==228){var op = new   Option("邢台","233");document.getElementById('city').options.add(op);}if(parseInt(x)==228){var op = new   Option("保定","234");document.getElementById('city').options.add(op);}if(parseInt(x)==228){var op = new   Option("张家口","235");document.getElementById('city').options.add(op);}if(parseInt(x)==228){var op = new   Option("承德","236");document.getElementById('city').options.add(op);}if(parseInt(x)==228){var op = new   Option("沧州","237");document.getElementById('city').options.add(op);}if(parseInt(x)==228){var op = new   Option("廊坊","238");document.getElementById('city').options.add(op);}if(parseInt(x)==228){var op = new   Option("衡水","239");document.getElementById('city').options.add(op);}if(parseInt(x)==240){var op = new   Option("长沙","241");document.getElementById('city').options.add(op);}if(parseInt(x)==240){var op = new   Option("株洲","242");document.getElementById('city').options.add(op);}if(parseInt(x)==240){var op = new   Option("湘潭","243");document.getElementById('city').options.add(op);}if(parseInt(x)==240){var op = new   Option("衡阳","244");document.getElementById('city').options.add(op);}if(parseInt(x)==240){var op = new   Option("邵阳","245");document.getElementById('city').options.add(op);}if(parseInt(x)==240){var op = new   Option("岳阳","246");document.getElementById('city').options.add(op);}if(parseInt(x)==240){var op = new   Option("常德","247");document.getElementById('city').options.add(op);}if(parseInt(x)==240){var op = new   Option("张家界","248");document.getElementById('city').options.add(op);}if(parseInt(x)==240){var op = new   Option("益阳","249");document.getElementById('city').options.add(op);}if(parseInt(x)==240){var op = new   Option("永州","250");document.getElementById('city').options.add(op);}if(parseInt(x)==240){var op = new   Option("娄底","251");document.getElementById('city').options.add(op);}if(parseInt(x)==240){var op = new   Option("湘西","252");document.getElementById('city').options.add(op);}if(parseInt(x)==240){var op = new   Option("郴州","253");document.getElementById('city').options.add(op);}if(parseInt(x)==240){var op = new   Option("怀化","254");document.getElementById('city').options.add(op);}if(parseInt(x)==112){var op = new   Option("武汉","255");document.getElementById('city').options.add(op);}if(parseInt(x)==112){var op = new   Option("黄石","256");document.getElementById('city').options.add(op);}if(parseInt(x)==112){var op = new   Option("十堰","257");document.getElementById('city').options.add(op);}if(parseInt(x)==112){var op = new   Option("宜昌","258");document.getElementById('city').options.add(op);}if(parseInt(x)==112){var op = new   Option("襄阳","259");document.getElementById('city').options.add(op);}if(parseInt(x)==112){var op = new   Option("鄂州","260");document.getElementById('city').options.add(op);}if(parseInt(x)==112){var op = new   Option("荆门","261");document.getElementById('city').options.add(op);}if(parseInt(x)==112){var op = new   Option("孝感","262");document.getElementById('city').options.add(op);}if(parseInt(x)==112){var op = new   Option("荆州","263");document.getElementById('city').options.add(op);}if(parseInt(x)==112){var op = new   Option("黄冈","264");document.getElementById('city').options.add(op);}if(parseInt(x)==112){var op = new   Option("咸宁","265");document.getElementById('city').options.add(op);}if(parseInt(x)==112){var op = new   Option("随州","266");document.getElementById('city').options.add(op);}if(parseInt(x)==112){var op = new   Option("恩施","267");document.getElementById('city').options.add(op);}if(parseInt(x)==112){var op = new   Option("仙桃","268");document.getElementById('city').options.add(op);}if(parseInt(x)==112){var op = new   Option("潜江","269");document.getElementById('city').options.add(op);}if(parseInt(x)==112){var op = new   Option("天门","270");document.getElementById('city').options.add(op);}if(parseInt(x)==112){var op = new   Option("神农架","271");document.getElementById('city').options.add(op);}if(parseInt(x)==272){var op = new   Option("长春","273");document.getElementById('city').options.add(op);}if(parseInt(x)==272){var op = new   Option("吉林","274");document.getElementById('city').options.add(op);}if(parseInt(x)==272){var op = new   Option("四平","275");document.getElementById('city').options.add(op);}if(parseInt(x)==272){var op = new   Option("辽源","276");document.getElementById('city').options.add(op);}if(parseInt(x)==272){var op = new   Option("通化","277");document.getElementById('city').options.add(op);}if(parseInt(x)==272){var op = new   Option("白山","278");document.getElementById('city').options.add(op);}if(parseInt(x)==272){var op = new   Option("松原","279");document.getElementById('city').options.add(op);}if(parseInt(x)==272){var op = new   Option("白城","280");document.getElementById('city').options.add(op);}if(parseInt(x)==272){var op = new   Option("延边","281");document.getElementById('city').options.add(op);}if(parseInt(x)==282){var op = new   Option("哈尔滨","283");document.getElementById('city').options.add(op);}if(parseInt(x)==282){var op = new   Option("齐齐哈尔","284");document.getElementById('city').options.add(op);}if(parseInt(x)==282){var op = new   Option("鸡西","285");document.getElementById('city').options.add(op);}if(parseInt(x)==282){var op = new   Option("鹤岗","286");document.getElementById('city').options.add(op);}if(parseInt(x)==282){var op = new   Option("大庆","287");document.getElementById('city').options.add(op);}if(parseInt(x)==282){var op = new   Option("伊春","288");document.getElementById('city').options.add(op);}if(parseInt(x)==282){var op = new   Option("佳木斯","289");document.getElementById('city').options.add(op);}if(parseInt(x)==282){var op = new   Option("七台河","290");document.getElementById('city').options.add(op);}if(parseInt(x)==282){var op = new   Option("牡丹江","291");document.getElementById('city').options.add(op);}if(parseInt(x)==282){var op = new   Option("黑河","292");document.getElementById('city').options.add(op);}if(parseInt(x)==282){var op = new   Option("七台河","293");document.getElementById('city').options.add(op);}if(parseInt(x)==282){var op = new   Option("大兴安岭","294");document.getElementById('city').options.add(op);}if(parseInt(x)==295){var op = new   Option("郑州","296");document.getElementById('city').options.add(op);}if(parseInt(x)==295){var op = new   Option("开封","297");document.getElementById('city').options.add(op);}if(parseInt(x)==295){var op = new   Option("洛阳","298");document.getElementById('city').options.add(op);}if(parseInt(x)==295){var op = new   Option("平顶山","299");document.getElementById('city').options.add(op);}if(parseInt(x)==295){var op = new   Option("安阳","300");document.getElementById('city').options.add(op);}if(parseInt(x)==295){var op = new   Option("新乡","301");document.getElementById('city').options.add(op);}if(parseInt(x)==295){var op = new   Option("鹤壁","302");document.getElementById('city').options.add(op);}if(parseInt(x)==295){var op = new   Option("焦作","303");document.getElementById('city').options.add(op);}if(parseInt(x)==295){var op = new   Option("濮阳","304");document.getElementById('city').options.add(op);}if(parseInt(x)==295){var op = new   Option("漯河","305");document.getElementById('city').options.add(op);}if(parseInt(x)==295){var op = new   Option("许昌","306");document.getElementById('city').options.add(op);}if(parseInt(x)==295){var op = new   Option("三门峡","307");document.getElementById('city').options.add(op);}if(parseInt(x)==295){var op = new   Option("南阳","308");document.getElementById('city').options.add(op);}if(parseInt(x)==295){var op = new   Option("商丘","309");document.getElementById('city').options.add(op);}if(parseInt(x)==295){var op = new   Option("信阳","310");document.getElementById('city').options.add(op);}if(parseInt(x)==295){var op = new   Option("周口","311");document.getElementById('city').options.add(op);}if(parseInt(x)==295){var op = new   Option("驻马店","312");document.getElementById('city').options.add(op);}if(parseInt(x)==295){var op = new   Option("济源","313");document.getElementById('city').options.add(op);}if(parseInt(x)==314){var op = new   Option("铜川","315");document.getElementById('city').options.add(op);}if(parseInt(x)==314){var op = new   Option("宝鸡","316");document.getElementById('city').options.add(op);}if(parseInt(x)==314){var op = new   Option("渭南","317");document.getElementById('city').options.add(op);}if(parseInt(x)==314){var op = new   Option("延安","318");document.getElementById('city').options.add(op);}if(parseInt(x)==314){var op = new   Option("汉中","319");document.getElementById('city').options.add(op);}if(parseInt(x)==314){var op = new   Option("榆林","320");document.getElementById('city').options.add(op);}if(parseInt(x)==314){var op = new   Option("安康","321");document.getElementById('city').options.add(op);}if(parseInt(x)==314){var op = new   Option("商洛","322");document.getElementById('city').options.add(op);}if(parseInt(x)==314){var op = new   Option("西安","323");document.getElementById('city').options.add(op);}if(parseInt(x)==314){var op = new   Option("咸阳","324");document.getElementById('city').options.add(op);}if(parseInt(x)==102){var op = new   Option("成都","325");document.getElementById('city').options.add(op);}if(parseInt(x)==102){var op = new   Option("自贡","326");document.getElementById('city').options.add(op);}if(parseInt(x)==102){var op = new   Option("攀枝花","327");document.getElementById('city').options.add(op);}if(parseInt(x)==102){var op = new   Option("泸州","328");document.getElementById('city').options.add(op);}if(parseInt(x)==102){var op = new   Option("德阳","329");document.getElementById('city').options.add(op);}if(parseInt(x)==102){var op = new   Option("绵阳","330");document.getElementById('city').options.add(op);}if(parseInt(x)==102){var op = new   Option("广元","331");document.getElementById('city').options.add(op);}if(parseInt(x)==102){var op = new   Option("遂宁","332");document.getElementById('city').options.add(op);}if(parseInt(x)==102){var op = new   Option("内江","333");document.getElementById('city').options.add(op);}if(parseInt(x)==102){var op = new   Option("乐山","334");document.getElementById('city').options.add(op);}if(parseInt(x)==102){var op = new   Option("南充","335");document.getElementById('city').options.add(op);}if(parseInt(x)==102){var op = new   Option("眉山","336");document.getElementById('city').options.add(op);}if(parseInt(x)==102){var op = new   Option("宜宾","337");document.getElementById('city').options.add(op);}if(parseInt(x)==102){var op = new   Option("广安","338");document.getElementById('city').options.add(op);}if(parseInt(x)==102){var op = new   Option("达州","339");document.getElementById('city').options.add(op);}if(parseInt(x)==102){var op = new   Option("雅安","340");document.getElementById('city').options.add(op);}if(parseInt(x)==102){var op = new   Option("巴中","341");document.getElementById('city').options.add(op);}if(parseInt(x)==102){var op = new   Option("资阳","342");document.getElementById('city').options.add(op);}if(parseInt(x)==102){var op = new   Option("阿坝","343");document.getElementById('city').options.add(op);}if(parseInt(x)==102){var op = new   Option("甘孜","344");document.getElementById('city').options.add(op);}if(parseInt(x)==102){var op = new   Option("凉山","345");document.getElementById('city').options.add(op);}if(parseInt(x)==113){var op = new   Option("贵阳","346");document.getElementById('city').options.add(op);}if(parseInt(x)==113){var op = new   Option("六盘水","347");document.getElementById('city').options.add(op);}if(parseInt(x)==113){var op = new   Option("遵义","348");document.getElementById('city').options.add(op);}if(parseInt(x)==113){var op = new   Option("安顺","349");document.getElementById('city').options.add(op);}if(parseInt(x)==113){var op = new   Option("铜仁","350");document.getElementById('city').options.add(op);}if(parseInt(x)==113){var op = new   Option("黔西南","351");document.getElementById('city').options.add(op);}if(parseInt(x)==113){var op = new   Option("毕节","352");document.getElementById('city').options.add(op);}if(parseInt(x)==113){var op = new   Option("黔东南","353");document.getElementById('city').options.add(op);}if(parseInt(x)==113){var op = new   Option("黔南","354");document.getElementById('city').options.add(op);}if(parseInt(x)==355){var op = new   Option("海口","356");document.getElementById('city').options.add(op);}if(parseInt(x)==355){var op = new   Option("三亚","357");document.getElementById('city').options.add(op);}if(parseInt(x)==355){var op = new   Option("五指山","358");document.getElementById('city').options.add(op);}if(parseInt(x)==355){var op = new   Option("琼海","359");document.getElementById('city').options.add(op);}if(parseInt(x)==355){var op = new   Option("儋州","360");document.getElementById('city').options.add(op);}if(parseInt(x)==361){var op = new   Option("南宁","362");document.getElementById('city').options.add(op);}if(parseInt(x)==361){var op = new   Option("柳城","363");document.getElementById('city').options.add(op);}if(parseInt(x)==361){var op = new   Option("桂城","364");document.getElementById('city').options.add(op);}if(parseInt(x)==361){var op = new   Option("梧州","365");document.getElementById('city').options.add(op);}if(parseInt(x)==361){var op = new   Option("北海","366");document.getElementById('city').options.add(op);}if(parseInt(x)==361){var op = new   Option("防城港","367");document.getElementById('city').options.add(op);}if(parseInt(x)==361){var op = new   Option("钦州","368");document.getElementById('city').options.add(op);}if(parseInt(x)==361){var op = new   Option("贵港","369");document.getElementById('city').options.add(op);}if(parseInt(x)==361){var op = new   Option("玉林","370");document.getElementById('city').options.add(op);}if(parseInt(x)==361){var op = new   Option("百色","371");document.getElementById('city').options.add(op);}if(parseInt(x)==361){var op = new   Option("贺州","372");document.getElementById('city').options.add(op);}if(parseInt(x)==361){var op = new   Option("河池","373");document.getElementById('city').options.add(op);}if(parseInt(x)==361){var op = new   Option("来宾","374");document.getElementById('city').options.add(op);}if(parseInt(x)==361){var op = new   Option("崇左","375");document.getElementById('city').options.add(op);}if(parseInt(x)==376){var op = new   Option("兰州","377");document.getElementById('city').options.add(op);}if(parseInt(x)==376){var op = new   Option("嘉峪关","378");document.getElementById('city').options.add(op);}if(parseInt(x)==376){var op = new   Option("金昌","379");document.getElementById('city').options.add(op);}if(parseInt(x)==376){var op = new   Option("天水","380");document.getElementById('city').options.add(op);}if(parseInt(x)==376){var op = new   Option("武威","381");document.getElementById('city').options.add(op);}if(parseInt(x)==376){var op = new   Option("张掖","382");document.getElementById('city').options.add(op);}if(parseInt(x)==376){var op = new   Option("平凉","383");document.getElementById('city').options.add(op);}if(parseInt(x)==376){var op = new   Option("酒泉","384");document.getElementById('city').options.add(op);}if(parseInt(x)==376){var op = new   Option("庆阳","385");document.getElementById('city').options.add(op);}if(parseInt(x)==376){var op = new   Option("陇南","386");document.getElementById('city').options.add(op);}if(parseInt(x)==376){var op = new   Option("临夏","387");document.getElementById('city').options.add(op);}if(parseInt(x)==376){var op = new   Option("甘南","388");document.getElementById('city').options.add(op);}if(parseInt(x)==389){var op = new   Option("太原","390");document.getElementById('city').options.add(op);}if(parseInt(x)==389){var op = new   Option("大同","391");document.getElementById('city').options.add(op);}if(parseInt(x)==389){var op = new   Option("阳泉","392");document.getElementById('city').options.add(op);}if(parseInt(x)==389){var op = new   Option("长治","393");document.getElementById('city').options.add(op);}if(parseInt(x)==389){var op = new   Option("晋城","394");document.getElementById('city').options.add(op);}if(parseInt(x)==376){var op = new   Option("长治","395");document.getElementById('city').options.add(op);}if(parseInt(x)==389){var op = new   Option("运城","396");document.getElementById('city').options.add(op);}if(parseInt(x)==389){var op = new   Option("忻州","397");document.getElementById('city').options.add(op);}if(parseInt(x)==389){var op = new   Option("临汾","398");document.getElementById('city').options.add(op);}if(parseInt(x)==389){var op = new   Option("吕梁","399");document.getElementById('city').options.add(op);}if(parseInt(x)==400){var op = new   Option("南昌","401");document.getElementById('city').options.add(op);}if(parseInt(x)==400){var op = new   Option("景德镇","402");document.getElementById('city').options.add(op);}if(parseInt(x)==400){var op = new   Option("萍乡","403");document.getElementById('city').options.add(op);}if(parseInt(x)==400){var op = new   Option("九江","404");document.getElementById('city').options.add(op);}if(parseInt(x)==400){var op = new   Option("新余","405");document.getElementById('city').options.add(op);}if(parseInt(x)==400){var op = new   Option("鹰潭","406");document.getElementById('city').options.add(op);}if(parseInt(x)==400){var op = new   Option("赣州","407");document.getElementById('city').options.add(op);}if(parseInt(x)==400){var op = new   Option("吉安","408");document.getElementById('city').options.add(op);}if(parseInt(x)==400){var op = new   Option("宜春","409");document.getElementById('city').options.add(op);}if(parseInt(x)==400){var op = new   Option("抚州","410");document.getElementById('city').options.add(op);}if(parseInt(x)==400){var op = new   Option("上饶","411");document.getElementById('city').options.add(op);}if(parseInt(x)==412){var op = new   Option("呼和浩特","413");document.getElementById('city').options.add(op);}if(parseInt(x)==412){var op = new   Option("包头","414");document.getElementById('city').options.add(op);}if(parseInt(x)==412){var op = new   Option("乌海","415");document.getElementById('city').options.add(op);}if(parseInt(x)==412){var op = new   Option("赤峰","416");document.getElementById('city').options.add(op);}if(parseInt(x)==412){var op = new   Option("通辽","417");document.getElementById('city').options.add(op);}if(parseInt(x)==412){var op = new   Option("鄂尔多斯","418");document.getElementById('city').options.add(op);}if(parseInt(x)==412){var op = new   Option("巴彦淖尔","419");document.getElementById('city').options.add(op);}if(parseInt(x)==412){var op = new   Option("乌兰察布","420");document.getElementById('city').options.add(op);}if(parseInt(x)==412){var op = new   Option("兴安盟","421");document.getElementById('city').options.add(op);}if(parseInt(x)==412){var op = new   Option("锡林郭勒","422");document.getElementById('city').options.add(op);}if(parseInt(x)==412){var op = new   Option("阿拉善盟","423");document.getElementById('city').options.add(op);}if(parseInt(x)==424){var op = new   Option("银川","425");document.getElementById('city').options.add(op);}if(parseInt(x)==424){var op = new   Option("吴忠","426");document.getElementById('city').options.add(op);}if(parseInt(x)==424){var op = new   Option("固原","427");document.getElementById('city').options.add(op);}if(parseInt(x)==424){var op = new   Option("石嘴山","428");document.getElementById('city').options.add(op);}if(parseInt(x)==424){var op = new   Option("中卫","429");document.getElementById('city').options.add(op);}if(parseInt(x)==430){var op = new   Option("西宁","431");document.getElementById('city').options.add(op);}if(parseInt(x)==430){var op = new   Option("海北","432");document.getElementById('city').options.add(op);}if(parseInt(x)==430){var op = new   Option("黄南","433");document.getElementById('city').options.add(op);}if(parseInt(x)==430){var op = new   Option("果洛","434");document.getElementById('city').options.add(op);}if(parseInt(x)==430){var op = new   Option("玉树","435");document.getElementById('city').options.add(op);}if(parseInt(x)==430){var op = new   Option("海西","436");document.getElementById('city').options.add(op);}if(parseInt(x)==430){var op = new   Option("海东","437");document.getElementById('city').options.add(op);}if(parseInt(x)==282){var op = new   Option("绥化","438");document.getElementById('city').options.add(op);}if(parseInt(x)==112){var op = new   Option("江汉","439");document.getElementById('city').options.add(op);}if(parseInt(x)==8){var op = new   Option("福州","440");document.getElementById('city').options.add(op);}if(parseInt(x)==8){var op = new   Option("宁德","441");document.getElementById('city').options.add(op);}if(parseInt(x)==389){var op = new   Option("晋中","443");document.getElementById('city').options.add(op);}if(parseInt(x)==70){var op = new   Option("惠州","444");document.getElementById('city').options.add(op);}
								
								
								
							}
							</script>
					</div>
				</div>
				<div class="options">
					<div >
               
						<p style="width:50%;float: left;padding-right: 2px;">
						<select name="price" id="price" class="fol-r">
							<option value="" >号码价格</option>
							        
                            	<option value="1"  >0-200</option>
                                    
                            	<option value="2"  >200-500</option>
                                    
                            	<option value="3"  >500-1000</option>
                                    
                            	<option value="4"  >1000-2000</option>
                                    
                            	<option value="5"  >2000-5000</option>
                                    
                            	<option value="6"  >5000-10000</option>
                                    
                            	<option value="7"  >10000-50000</option>
                            
                            <option value="8">50000以上</option>
                            
						</select>
						<script>
	                      $('#price').val();
	                    </script>
						</p>
                        <p style="width: 50%;float: left;padding-left: 2px;">
							<select name="rule" id="rule" class="fol-r">
							<option value="">号码类型</option>
							
								 <option value="1" >尾数AAAAA</option>
							
								 <option value="2" >尾数AAAA</option>
							
								 <option value="3" >尾数AAABBB</option>
							
								 <option value="4" >尾数AABBB</option>
							
								 <option value="5" >尾数AAA</option>
							
								 <option value="6" >尾数AABBCC</option>
							
								 <option value="7" >尾数AABB</option>
							
								 <option value="8" >尾数ABABAB</option>
							
								 <option value="9" >尾数ABAB</option>
							
								 <option value="10" >尾数AABCC</option>
							
								 <option value="11" >尾数AA</option>
							
								 <option value="12" >尾数ABCDABCD</option>
							
								 <option value="13" >尾数ABCDE</option>
							
								 <option value="14" >尾数ABCD</option>
							
								 <option value="15" >尾数ABC</option>
							
								 <option value="16" >尾数ABCABC</option>
							
								 <option value="17" >尾数AAAAAB</option>
							
								 <option value="18" >尾数AAAAB</option>
							
								 <option value="19" >尾数AAAB</option>
							
								 <option value="20" >尾数ABBA</option>
							
								 <option value="21" >尾数AABBCC*</option>
							
								 <option value="22" >尾数ABCABC*</option>
							
								 <option value="23" >中间AAAA</option>
							
								 <option value="24" >中间AAAAA</option>
							
								 <option value="25" >中间AAAAAA</option>
							
								 <option value="26" >中间AAABB</option>
							
								 <option value="27" >中间AABBCC</option>
							
								 <option value="28" >中间ABABAB</option>
							
								 <option value="29" >尾数AAABBB*</option>
							   
						</select>
						<script>
	                      $('#rule').val();
	                      $('#price').val();
	                    </script>
						</p>

					</div>
				</div>
				<div class="options">
						<p style="width: 40%;float: left;padding-right: 2px;">
						    <input type="hidden" id="Xu" name="Xu" value="5">
							<input type="text" maxlength="11" value="模糊搜索" onFocus="if(this.value == '模糊搜索'){this.value = '';}" onBlur="if(this.value == ''){this.value = '模糊搜索';}" name="number" class="number_input mh" id="number" style="width:99%;height:22px; line-height:22px;">
						</p>
						
						<p style="width: 60%;float: left;padding-left: 2px;">
							<span class="yy_li w30" style="width:25%;"><label><input type="checkbox" name="last" id="last" value="1"  >
							尾数</label>
							</span>
							<span class="yy_li w30" style="width:25%;"><label><input type="checkbox" name="midnum" id="midnum" value="1" >
							中间</label>
							</span>
                            
							<span class="yy_li w30" style="width:25%;"><label><input type="checkbox" name="without4" id="without4" value="1"  onChange="checkFour();">
							无4</label>
							</span>
                            
							<span class="yy_li w30" style="width:25%;"><label><input type="checkbox" name="without7" id="without7" value="1"  onChange="checkSeven();">
							无7</label>
							</span>
                            

                            
                            
                            <span class="yy_li w30" style="display:none;"><label><input type="checkbox" value="1" id="qlh" name="qlh">情侣号</label></span>
						</p>					
				</div>
				<script>
				function checkFour(){
				    
				    if($('#with4').attr('checked')){
				//        alert($("#number").val());
				        $("#number").val($("#number").val().replace(/4/g, ''));
				    }
				} 
				function checkSeven(){
				    
				    if($('#with7').attr('checked')){
				//        alert($("#number").val());
				        $("#number").val($("#number").val().replace(/7/g, ''));
				    }
				} 				
				
				 
				</script> 
       			<div class="options">
					<ul >
                        	<li class="Shuwei_li" style="width:11%;">
                            	多数:
                            </li>
						    <li class="Shuwei_li">
                                <input type="checkbox" name="shuwei" value="10"> 0多
                            </li>
                            <li class="Shuwei_li">
                                <input type="checkbox" name="shuwei" value="9"> 1多
                            </li>
						    <li class="Shuwei_li">
                                <input type="checkbox" name="shuwei" value="8"> 2多
                            </li>
                            <li class="Shuwei_li">
                                <input type="checkbox" name="shuwei" value="7"> 3多
                            </li>
                            <li class="Shuwei_li">
                                <input type="checkbox" name="shuwei" value="6"> 4多
                            </li> 
                            <li class="Shuwei_li">
                                <input type="checkbox" name="shuwei" value="5"> 5多
                            </li>                            
                            <li class="Shuwei_li">
                                <input type="checkbox" name="shuwei" value="4"> 6多
                            </li>
                            <li class="Shuwei_li">
                                <input type="checkbox" name="shuwei" value="3"> 7多
                            </li>
                            <li class="Shuwei_li">
                                <input type="checkbox" name="shuwei" value="2"> 8多
                            </li>
                            <li class="Shuwei_li">
                                <input type="checkbox" name="shuwei" value="1"> 9多
                            </li>
                            
					</ul>
				</div>                
				<div class="options" >
					<p class="fol-l STYLE5">精确查号：					</p>
					
					<ul id="searchExact">
						<li class="acr_li">
							<input type="text" id="n1" name="n1" value="1"  maxlength="1" class="number_input" style=" height:25px; line-height:25px;">
						</li>
						<li class="acr_li">
							<input type="text" id="n2" name="n2"  value="" maxlength="1" onKeyUp="value.replace(/[^\d]/g,'')" class="number_input" style=" height:25px; line-height:25px;">
						</li>
						<li class="acr_li">
							<input type="text" id="n3" name="n3"   value="" maxlength="1" onKeyUp="value.replace(/[^\d]/g,'')" class="number_input" style=" height:25px; line-height:25px;">
						</li>
						<li class="acr_li">
							<input type="text" id="n4" name="n4"  value="" maxlength="1" onKeyUp="value.replace(/[^\d]/g,'')" class="number_input" style=" height:25px; line-height:25px;">
						</li>
						<li class="acr_li">
							<input type="text" id="n5" name="n5"  value="" maxlength="1" onKeyUp="value.replace(/[^\d]/g,'')" class="number_input" style=" height:25px; line-height:25px;">
						</li>
						<li class="acr_li">
							<input type="text" id="n6" name="n6"  value="" maxlength="1" onKeyUp="value.replace(/[^\d]/g,'')" class="number_input" style=" height:25px; line-height:25px;">
						</li>
						<li class="acr_li">
							<input type="text" id="n7" name="n7"  value="" maxlength="1" onKeyUp="value.replace(/[^\d]/g,'')" class="number_input" style=" height:25px; line-height:25px;">
						</li>
						<li class="acr_li">
							<input type="text" id="n8" name="n8"  value="" maxlength="1" onKeyUp="value.replace(/[^\d]/g,'')" class="number_input" style=" height:25px; line-height:25px;">
						</li>
						<li class="acr_li">
							<input type="text" id="n9" name="n9"  value="" maxlength="1" onKeyUp="value.replace(/[^\d]/g,'')" class="number_input"  style=" height:25px; line-height:25px;">
						</li>
						<li class="acr_li">
							<input type="text" id="n10" name="n10"  value="" maxlength="1" onKeyUp="value.replace(/[^\d]/g,'')" class="number_input"  style=" height:25px; line-height:25px;">
						</li>
						<li class="acr_li">
							<input type="text" id="n11" name="n11"  value="" maxlength="1" onKeyUp="value.replace(/[^\d]/g,'')" class="number_input"  style=" height:25px; line-height:25px;">
						</li>
					</ul>
			  </div>
            <div class="options mediv"  >
                <ul >
                        <li class="Shuwei_li" style="width:11%;">
                            仅有:
                        </li>
                        <li class="Shuwei_li">
                            <input type="checkbox" name="Bshuwei" value="0"> 0
                        </li>
                        <li class="Shuwei_li">
                            <input type="checkbox" name="Bshuwei" value="1"  > 1
                        </li>
                        <li class="Shuwei_li">
                            <input type="checkbox" name="Bshuwei" value="2"> 2
                        </li>
                        <li class="Shuwei_li">
                            <input type="checkbox" name="Bshuwei" value="3"> 3
                        </li>
                        <li class="Shuwei_li">
                            <input type="checkbox" name="Bshuwei" value="4"> 4
                        </li> 
                        <li class="Shuwei_li">
                            <input type="checkbox" name="Bshuwei" value="5"> 5
                        </li>                            
                        <li class="Shuwei_li">
                            <input type="checkbox" name="Bshuwei" value="6"> 6
                        </li>
                        <li class="Shuwei_li">
                            <input type="checkbox" name="Bshuwei" value="7"> 7
                        </li>
                        <li class="Shuwei_li">
                            <input type="checkbox" name="Bshuwei" value="8"> 8
                        </li>
                        <li class="Shuwei_li">
                            <input type="checkbox" name="Bshuwei" value="9"> 9
                        </li>
                        
                </ul>
            </div>              
            <div class="options mediv"  style="display:none;">
                  <span>亲！利用好选号功能，选号真方便： </span>
                  <span>号码来源： </span>
                  <input type="text" class="number_input85"  id="laiyuan_n"  name="laiyuan_n" style=" width:100px;">
                  <span>号码话费： </span>
                  <input type="text" class="number_input85"  id="Ihuafei"  name="Ihuafei" style=" width:100px;">
                  
                  生成搜索地址:<input type="checkbox" id="IsC" name="IsC" value="1" >
            </div>
            <div class="options mediv"  style="display:none;">
                  <input type="text" class="number_input85"  id="SearchUrl"  name="SearchUrl" value="搜索地址" style=" width:100%;">
            </div>
              
			<div class="options" >
				<p class="fol-k"> 接受的价位： </p>
				<input type="text" class="number_input85"  id="zdyjg1"  name="zdyjg1" style="height:22px; line-height:22px;">
				元-
				<input type="text" id="zdyjg2"  name="zdyjg2" class="number_input85" style="height:22px; line-height:22px;">
				元
				<a href="http://www.fj689.com/x/about.asp?d=20" target="_blank"><span class="STYLE17">交易提示</span></a>
				<p style="height:5px;">&nbsp;</p>
              </div>
			<div class="s-tab">
				<a class="fun" href="javascript:subfrm(1);" style="text-align:center;float:left;">搜索</a>
				<a id="detailFiter" class="fun" href="javascript:resetWhere();" style="text-align:center;float:right;">重置</a>
			</div>
			<div class="s-tab">
						
								<a id="a1" onClick="changexu('1')"  class="pfenye-li">号段升序</a>
								
								<a id="a2" onClick="changexu('2')" class="pfenye-li">号段降序</a>
								
								<a class="pfenye-li STYLE12" id="a3" onClick="changexu('3')">最便宜号码</a>
								
								<a class="pfenye-li STYLE9" id="a4" onClick="changexu('4')">最靓号码</a>
								
								<a id="a5" onClick="changexu('5')" class="pfenye-li">更新时间</a>       
						
                        <script>
						    document.getElementById("a5").style.background="#ededed";
                        	function changexu(xu)
							{
								document.getElementById("Xu").value=xu;
								for(var i=1;i<6;i++)
								{
									if(i==parseInt(xu))
									{
										document.getElementById("a"+xu).style.background="#ededed";
									}
									else
									{
										document.getElementById("a"+i).style.background="#f5f5ef";
									}	
								}
								subfrm(1);
							}
                        </script>
				
			</div>
			
			</form>
		</section>
		<section id="numbers">

	  <table class="table table-striped table-condensed font-s">
        <tbody id="list">
        <tr><th>号码</th><th>售价</th><th>话费</th><th>归属</th><th>操作</th></tr><tr class="trStyle" phone="135333069<i class='yellowhm'>22</i>" Tid="47755090" ><td><a href="detail.asp?c=searchs&a=detail&id=47755090" ><span class="tit-hm numname"><img src="images/manager1.gif">135333069<i class='yellowhm'>22</i></span></a></td><td>￥435</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755090"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="150<i class='yellowhm'>118833</i>85" Tid="47755101" ><td><a href="detail.asp?c=searchs&a=detail&id=47755101" ><span class="tit-hm numname"><img src="images/manager1.gif">150<i class='yellowhm'>118833</i>85</span></a></td><td>￥435</td><td>￥25</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755101"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="159863863<i class='yellowhm'>22</i>" Tid="47755108" ><td><a href="detail.asp?c=searchs&a=detail&id=47755108" ><span class="tit-hm numname"><img src="images/manager1.gif">159863863<i class='yellowhm'>22</i></span></a></td><td>￥435</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755108"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="1780653<i class='yellowhm'>3636</i>" Tid="47755115" ><td><a href="detail.asp?c=searchs&a=detail&id=47755115" ><span class="tit-hm numname"><img src="images/manager1.gif">1780653<i class='yellowhm'>3636</i></span></a></td><td>￥435</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755115"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="1847503<i class='yellowhm'>8765</i>" Tid="47755126" ><td><a href="detail.asp?c=searchs&a=detail&id=47755126" ><span class="tit-hm numname"><img src="images/manager1.gif">1847503<i class='yellowhm'>8765</i></span></a></td><td>￥435</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755126"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="15220000537" Tid="47755133" ><td><a href="detail.asp?c=searchs&a=detail&id=47755133" ><span class="tit-hm numname"><img src="images/manager1.gif">15220000537</span></a></td><td>￥455</td><td>￥25</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755133"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="1358037<i class='yellowhm'>8765</i>" Tid="47755140" ><td><a href="detail.asp?c=searchs&a=detail&id=47755140" ><span class="tit-hm numname"><img src="images/manager1.gif">1358037<i class='yellowhm'>8765</i></span></a></td><td>￥465</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755140"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="1781978<i class='yellowhm'>8585</i>" Tid="47755151" ><td><a href="detail.asp?c=searchs&a=detail&id=47755151" ><span class="tit-hm numname"><img src="images/manager1.gif">1781978<i class='yellowhm'>8585</i></span></a></td><td>￥465</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755151"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="13660710010" Tid="47755158" ><td><a href="detail.asp?c=searchs&a=detail&id=47755158" ><span class="tit-hm numname"><img src="images/manager1.gif">13660710010</span></a></td><td>￥485</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755158"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="15099982638" Tid="47755165" ><td><a href="detail.asp?c=searchs&a=detail&id=47755165" ><span class="tit-hm numname"><img src="images/manager1.gif">15099982638</span></a></td><td>￥485</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755165"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="178065<i class='yellowhm'>33332</i>" Tid="47755176" ><td><a href="detail.asp?c=searchs&a=detail&id=47755176" ><span class="tit-hm numname"><img src="images/manager1.gif">178065<i class='yellowhm'>33332</i></span></a></td><td>￥535</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755176"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="13728098<i class='yellowhm'>789</i>" Tid="47755183" ><td><a href="detail.asp?c=searchs&a=detail&id=47755183" ><span class="tit-hm numname"><img src="images/manager1.gif">13728098<i class='yellowhm'>789</i></span></a></td><td>￥565</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755183"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="18211220998" Tid="47755190" ><td><a href="detail.asp?c=searchs&a=detail&id=47755190" ><span class="tit-hm numname"><img src="images/manager1.gif">18211220998</span></a></td><td>￥565</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755190"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="134<i class='yellowhm'>2222</i>6623" Tid="47755201" ><td><a href="detail.asp?c=searchs&a=detail&id=47755201" ><span class="tit-hm numname"><img src="images/manager1.gif">134<i class='yellowhm'>2222</i>6623</span></a></td><td>￥648</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755201"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="134<i class='yellowhm'>2222</i>8727" Tid="47755208" ><td><a href="detail.asp?c=searchs&a=detail&id=47755208" ><span class="tit-hm numname"><img src="images/manager1.gif">134<i class='yellowhm'>2222</i>8727</span></a></td><td>￥648</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755208"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="137101537<i class='yellowhm'>88</i>" Tid="47755215" ><td><a href="detail.asp?c=searchs&a=detail&id=47755215" ><span class="tit-hm numname"><img src="images/manager1.gif">137101537<i class='yellowhm'>88</i></span></a></td><td>￥648</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755215"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="15768888196" Tid="47755226" ><td><a href="detail.asp?c=searchs&a=detail&id=47755226" ><span class="tit-hm numname"><img src="images/manager1.gif">15768888196</span></a></td><td>￥648</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755226"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="15768888539" Tid="47755233" ><td><a href="detail.asp?c=searchs&a=detail&id=47755233" ><span class="tit-hm numname"><img src="images/manager1.gif">15768888539</span></a></td><td>￥648</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755233"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="15768888610" Tid="47755240" ><td><a href="detail.asp?c=searchs&a=detail&id=47755240" ><span class="tit-hm numname"><img src="images/manager1.gif">15768888610</span></a></td><td>￥648</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755240"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="1781969<i class='yellowhm'>8880</i>" Tid="47755258" ><td><a href="detail.asp?c=searchs&a=detail&id=47755258" ><span class="tit-hm numname"><img src="images/manager1.gif">1781969<i class='yellowhm'>8880</i></span></a></td><td>￥648</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755258"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="1787509<i class='yellowhm'>8882</i>" Tid="47755265" ><td><a href="detail.asp?c=searchs&a=detail&id=47755265" ><span class="tit-hm numname"><img src="images/manager1.gif">1787509<i class='yellowhm'>8882</i></span></a></td><td>￥648</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755265"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="13710000637" Tid="47755276" ><td><a href="detail.asp?c=searchs&a=detail&id=47755276" ><span class="tit-hm numname"><img src="images/manager1.gif">13710000637</span></a></td><td>￥696</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755276"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="1588<i class='yellowhm'>9933771</i>" Tid="47755290" ><td><a href="detail.asp?c=searchs&a=detail&id=47755290" ><span class="tit-hm numname"><img src="images/manager1.gif">1588<i class='yellowhm'>9933771</i></span></a></td><td>￥696</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755290"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="15999920898" Tid="47755301" ><td><a href="detail.asp?c=searchs&a=detail&id=47755301" ><span class="tit-hm numname"><img src="images/manager1.gif">15999920898</span></a></td><td>￥808</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755301"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="137<i class='yellowhm'>1111</i>3817" Tid="47755315" ><td><a href="detail.asp?c=searchs&a=detail&id=47755315" ><span class="tit-hm numname"><img src="images/manager1.gif">137<i class='yellowhm'>1111</i>3817</span></a></td><td>￥888</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755315"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="1599990<i class='yellowhm'>3883</i>" Tid="47755326" ><td><a href="detail.asp?c=searchs&a=detail&id=47755326" ><span class="tit-hm numname"><img src="images/manager1.gif">1599990<i class='yellowhm'>3883</i></span></a></td><td>￥888</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755326"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="178197<i class='yellowhm'>66661</i>" Tid="47755333" ><td><a href="detail.asp?c=searchs&a=detail&id=47755333" ><span class="tit-hm numname"><img src="images/manager1.gif">178197<i class='yellowhm'>66661</i></span></a></td><td>￥888</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755333"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="178198217<i class='yellowhm'>88</i>" Tid="47755340" ><td><a href="detail.asp?c=searchs&a=detail&id=47755340" ><span class="tit-hm numname"><img src="images/manager1.gif">178198217<i class='yellowhm'>88</i></span></a></td><td>￥888</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755340"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="13433933834" Tid="47755351" ><td><a href="detail.asp?c=searchs&a=detail&id=47755351" ><span class="tit-hm numname"><img src="images/manager1.gif">13433933834</span></a></td><td>￥968</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755351"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="13433941323" Tid="47755358" ><td><a href="detail.asp?c=searchs&a=detail&id=47755358" ><span class="tit-hm numname"><img src="images/manager1.gif">13433941323</span></a></td><td>￥968</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755358"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="13433943471" Tid="47755365" ><td><a href="detail.asp?c=searchs&a=detail&id=47755365" ><span class="tit-hm numname"><img src="images/manager1.gif">13433943471</span></a></td><td>￥968</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755365"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="13544494145" Tid="47755376" ><td><a href="detail.asp?c=searchs&a=detail&id=47755376" ><span class="tit-hm numname"><img src="images/manager1.gif">13544494145</span></a></td><td>￥968</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755376"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="1341628<i class='yellowhm'>2345</i>" Tid="47755383" ><td><a href="detail.asp?c=searchs&a=detail&id=47755383" ><span class="tit-hm numname"><img src="images/manager1.gif">1341628<i class='yellowhm'>2345</i></span></a></td><td>￥1048</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755383"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="1365076<i class='yellowhm'>1234</i>" Tid="47755390" ><td><a href="detail.asp?c=searchs&a=detail&id=47755390" ><span class="tit-hm numname"><img src="images/manager1.gif">1365076<i class='yellowhm'>1234</i></span></a></td><td>￥1048</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755390"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="178197<i class='yellowhm'>66667</i>" Tid="47755401" ><td><a href="detail.asp?c=searchs&a=detail&id=47755401" ><span class="tit-hm numname"><img src="images/manager1.gif">178197<i class='yellowhm'>66667</i></span></a></td><td>￥1048</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755401"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="1599991<i class='yellowhm'>7070</i>" Tid="47755408" ><td><a href="detail.asp?c=searchs&a=detail&id=47755408" ><span class="tit-hm numname"><img src="images/manager1.gif">1599991<i class='yellowhm'>7070</i></span></a></td><td>￥1144</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755408"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="1581582<i class='yellowhm'>2626</i>" Tid="47755415" ><td><a href="detail.asp?c=searchs&a=detail&id=47755415" ><span class="tit-hm numname"><img src="images/manager1.gif">1581582<i class='yellowhm'>2626</i></span></a></td><td>￥1320</td><td>￥25</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755415"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="13711143391" Tid="47755426" ><td><a href="detail.asp?c=searchs&a=detail&id=47755426" ><span class="tit-hm numname"><img src="images/manager1.gif">13711143391</span></a></td><td>￥1368</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755426"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="1521885<i class='yellowhm'>1234</i>" Tid="47755433" ><td><a href="detail.asp?c=searchs&a=detail&id=47755433" ><span class="tit-hm numname"><img src="images/manager1.gif">1521885<i class='yellowhm'>1234</i></span></a></td><td>￥1368</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755433"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="135387<i class='yellowhm'>99993</i>" Tid="47755440" ><td><a href="detail.asp?c=searchs&a=detail&id=47755440" ><span class="tit-hm numname"><img src="images/manager1.gif">135387<i class='yellowhm'>99993</i></span></a></td><td>￥1528</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755440"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="135434394<i class='yellowhm'>33</i>" Tid="47755451" ><td><a href="detail.asp?c=searchs&a=detail&id=47755451" ><span class="tit-hm numname"><img src="images/manager1.gif">135434394<i class='yellowhm'>33</i></span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755451"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="1588992<i class='yellowhm'>8880</i>" Tid="47755458" ><td><a href="detail.asp?c=searchs&a=detail&id=47755458" ><span class="tit-hm numname"><img src="images/manager1.gif">1588992<i class='yellowhm'>8880</i></span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755458"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819760812" Tid="47755465" ><td><a href="detail.asp?c=searchs&a=detail&id=47755465" ><span class="tit-hm numname"><img src="images/manager1.gif">17819760812</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755465"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819760824" Tid="47755476" ><td><a href="detail.asp?c=searchs&a=detail&id=47755476" ><span class="tit-hm numname"><img src="images/manager1.gif">17819760824</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755476"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819760831" Tid="47755483" ><td><a href="detail.asp?c=searchs&a=detail&id=47755483" ><span class="tit-hm numname"><img src="images/manager1.gif">17819760831</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755483"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819761970" Tid="47755490" ><td><a href="detail.asp?c=searchs&a=detail&id=47755490" ><span class="tit-hm numname"><img src="images/manager1.gif">17819761970</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755490"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819761982" Tid="47755501" ><td><a href="detail.asp?c=searchs&a=detail&id=47755501" ><span class="tit-hm numname"><img src="images/manager1.gif">17819761982</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755501"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="1781978<i class='yellowhm'>0808</i>" Tid="47755508" ><td><a href="detail.asp?c=searchs&a=detail&id=47755508" ><span class="tit-hm numname"><img src="images/manager1.gif">1781978<i class='yellowhm'>0808</i></span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755508"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819780815" Tid="47755515" ><td><a href="detail.asp?c=searchs&a=detail&id=47755515" ><span class="tit-hm numname"><img src="images/manager1.gif">17819780815</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755515"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819780819" Tid="47755519" ><td><a href="detail.asp?c=searchs&a=detail&id=47755519" ><span class="tit-hm numname"><img src="images/manager1.gif">17819780819</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755519"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819790605" Tid="47755526" ><td><a href="detail.asp?c=searchs&a=detail&id=47755526" ><span class="tit-hm numname"><img src="images/manager1.gif">17819790605</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755526"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819790612" Tid="47755533" ><td><a href="detail.asp?c=searchs&a=detail&id=47755533" ><span class="tit-hm numname"><img src="images/manager1.gif">17819790612</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755533"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819790619" Tid="47755540" ><td><a href="detail.asp?c=searchs&a=detail&id=47755540" ><span class="tit-hm numname"><img src="images/manager1.gif">17819790619</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755540"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819790807" Tid="47755544" ><td><a href="detail.asp?c=searchs&a=detail&id=47755544" ><span class="tit-hm numname"><img src="images/manager1.gif">17819790807</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755544"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="178197908<i class='yellowhm'>22</i>" Tid="47755551" ><td><a href="detail.asp?c=searchs&a=detail&id=47755551" ><span class="tit-hm numname"><img src="images/manager1.gif">178197908<i class='yellowhm'>22</i></span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755551"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819820<i class='yellowhm'>210</i>" Tid="47755558" ><td><a href="detail.asp?c=searchs&a=detail&id=47755558" ><span class="tit-hm numname"><img src="images/manager1.gif">17819820<i class='yellowhm'>210</i></span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755558"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819820217" Tid="47755565" ><td><a href="detail.asp?c=searchs&a=detail&id=47755565" ><span class="tit-hm numname"><img src="images/manager1.gif">17819820217</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755565"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819820221" Tid="47755569" ><td><a href="detail.asp?c=searchs&a=detail&id=47755569" ><span class="tit-hm numname"><img src="images/manager1.gif">17819820221</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755569"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819820301" Tid="47755576" ><td><a href="detail.asp?c=searchs&a=detail&id=47755576" ><span class="tit-hm numname"><img src="images/manager1.gif">17819820301</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755576"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819820308" Tid="47755583" ><td><a href="detail.asp?c=searchs&a=detail&id=47755583" ><span class="tit-hm numname"><img src="images/manager1.gif">17819820308</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755583"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819820408" Tid="47755594" ><td><a href="detail.asp?c=searchs&a=detail&id=47755594" ><span class="tit-hm numname"><img src="images/manager1.gif">17819820408</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755594"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819820415" Tid="47755601" ><td><a href="detail.asp?c=searchs&a=detail&id=47755601" ><span class="tit-hm numname"><img src="images/manager1.gif">17819820415</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755601"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="178198204<i class='yellowhm'>22</i>" Tid="47755608" ><td><a href="detail.asp?c=searchs&a=detail&id=47755608" ><span class="tit-hm numname"><img src="images/manager1.gif">178198204<i class='yellowhm'>22</i></span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755608"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819820504" Tid="47755619" ><td><a href="detail.asp?c=searchs&a=detail&id=47755619" ><span class="tit-hm numname"><img src="images/manager1.gif">17819820504</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755619"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819820512" Tid="47755626" ><td><a href="detail.asp?c=searchs&a=detail&id=47755626" ><span class="tit-hm numname"><img src="images/manager1.gif">17819820512</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755626"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819820519" Tid="47755633" ><td><a href="detail.asp?c=searchs&a=detail&id=47755633" ><span class="tit-hm numname"><img src="images/manager1.gif">17819820519</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755633"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819820531" Tid="47755644" ><td><a href="detail.asp?c=searchs&a=detail&id=47755644" ><span class="tit-hm numname"><img src="images/manager1.gif">17819820531</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755644"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819820620" Tid="47755651" ><td><a href="detail.asp?c=searchs&a=detail&id=47755651" ><span class="tit-hm numname"><img src="images/manager1.gif">17819820620</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755651"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819820627" Tid="47755658" ><td><a href="detail.asp?c=searchs&a=detail&id=47755658" ><span class="tit-hm numname"><img src="images/manager1.gif">17819820627</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755658"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="1781982<i class='yellowhm'>0707</i>" Tid="47755669" ><td><a href="detail.asp?c=searchs&a=detail&id=47755669" ><span class="tit-hm numname"><img src="images/manager1.gif">1781982<i class='yellowhm'>0707</i></span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755669"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819820714" Tid="47755676" ><td><a href="detail.asp?c=searchs&a=detail&id=47755676" ><span class="tit-hm numname"><img src="images/manager1.gif">17819820714</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755676"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819820721" Tid="47755683" ><td><a href="detail.asp?c=searchs&a=detail&id=47755683" ><span class="tit-hm numname"><img src="images/manager1.gif">17819820721</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755683"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819820802" Tid="47755694" ><td><a href="detail.asp?c=searchs&a=detail&id=47755694" ><span class="tit-hm numname"><img src="images/manager1.gif">17819820802</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755694"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819820810" Tid="47755701" ><td><a href="detail.asp?c=searchs&a=detail&id=47755701" ><span class="tit-hm numname"><img src="images/manager1.gif">17819820810</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755701"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819820819" Tid="47755708" ><td><a href="detail.asp?c=searchs&a=detail&id=47755708" ><span class="tit-hm numname"><img src="images/manager1.gif">17819820819</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755708"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819820831" Tid="47755719" ><td><a href="detail.asp?c=searchs&a=detail&id=47755719" ><span class="tit-hm numname"><img src="images/manager1.gif">17819820831</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755719"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819820907" Tid="47755726" ><td><a href="detail.asp?c=searchs&a=detail&id=47755726" ><span class="tit-hm numname"><img src="images/manager1.gif">17819820907</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755726"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819820916" Tid="47755733" ><td><a href="detail.asp?c=searchs&a=detail&id=47755733" ><span class="tit-hm numname"><img src="images/manager1.gif">17819820916</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755733"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="1781982<i class='yellowhm'>1010</i>" Tid="47755744" ><td><a href="detail.asp?c=searchs&a=detail&id=47755744" ><span class="tit-hm numname"><img src="images/manager1.gif">1781982<i class='yellowhm'>1010</i></span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755744"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819821017" Tid="47755751" ><td><a href="detail.asp?c=searchs&a=detail&id=47755751" ><span class="tit-hm numname"><img src="images/manager1.gif">17819821017</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755751"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819821126" Tid="47755758" ><td><a href="detail.asp?c=searchs&a=detail&id=47755758" ><span class="tit-hm numname"><img src="images/manager1.gif">17819821126</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755758"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819821207" Tid="47755769" ><td><a href="detail.asp?c=searchs&a=detail&id=47755769" ><span class="tit-hm numname"><img src="images/manager1.gif">17819821207</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755769"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="17819821214" Tid="47755776" ><td><a href="detail.asp?c=searchs&a=detail&id=47755776" ><span class="tit-hm numname"><img src="images/manager1.gif">17819821214</span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755776"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="183169<i class='yellowhm'>88088</i>" Tid="47755783" ><td><a href="detail.asp?c=searchs&a=detail&id=47755783" ><span class="tit-hm numname"><img src="images/manager1.gif">183169<i class='yellowhm'>88088</i></span></a></td><td>￥1688</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755783"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="158<i class='yellowhm'>0000</i>1626" Tid="47755794" ><td><a href="detail.asp?c=searchs&a=detail&id=47755794" ><span class="tit-hm numname"><img src="images/manager1.gif">158<i class='yellowhm'>0000</i>1626</span></a></td><td>￥1987</td><td>￥25</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755794"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="178198216<i class='yellowhm'>88</i>" Tid="47755801" ><td><a href="detail.asp?c=searchs&a=detail&id=47755801" ><span class="tit-hm numname"><img src="images/manager1.gif">178198216<i class='yellowhm'>88</i></span></a></td><td>￥2032</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755801"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="1342222<i class='yellowhm'>7654</i>" Tid="47755808" ><td><a href="detail.asp?c=searchs&a=detail&id=47755808" ><span class="tit-hm numname"><img src="images/manager1.gif">1342222<i class='yellowhm'>7654</i></span></a></td><td>￥2332</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755808"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="13926068968" Tid="47755819" ><td><a href="detail.asp?c=searchs&a=detail&id=47755819" ><span class="tit-hm numname"><img src="images/manager1.gif">13926068968</span></a></td><td>￥2715</td><td>￥10</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755819"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="13424<i class='yellowhm'>111112</i>" Tid="47755826" ><td><a href="detail.asp?c=searchs&a=detail&id=47755826" ><span class="tit-hm numname"><img src="images/manager1.gif">13424<i class='yellowhm'>111112</i></span></a></td><td>￥2782</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755826"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="136<i class='yellowhm'>00066</i>617" Tid="47755833" ><td><a href="detail.asp?c=searchs&a=detail&id=47755833" ><span class="tit-hm numname"><img src="images/manager1.gif">136<i class='yellowhm'>00066</i>617</span></a></td><td>￥3015</td><td>￥10</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755833"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="14743333363" Tid="47755844" ><td><a href="detail.asp?c=searchs&a=detail&id=47755844" ><span class="tit-hm numname"><img src="images/manager1.gif">14743333363</span></a></td><td>￥3015</td><td>￥10</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755844"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="172886060<i class='yellowhm'>88</i>" Tid="47755851" ><td><a href="detail.asp?c=searchs&a=detail&id=47755851" ><span class="tit-hm numname"><img src="images/manager1.gif">172886060<i class='yellowhm'>88</i></span></a></td><td>￥3015</td><td>￥10</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755851"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="1599992<i class='yellowhm'>1199</i>" Tid="47755858" ><td><a href="detail.asp?c=searchs&a=detail&id=47755858" ><span class="tit-hm numname"><img src="images/manager1.gif">1599992<i class='yellowhm'>1199</i></span></a></td><td>￥3082</td><td>￥55</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755858"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="18898888623" Tid="47755869" ><td><a href="detail.asp?c=searchs&a=detail&id=47755869" ><span class="tit-hm numname"><img src="images/manager1.gif">18898888623</span></a></td><td>￥3164</td><td>￥10</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755869"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="135<i class='yellowhm'>33366</i>635" Tid="47755876" ><td><a href="detail.asp?c=searchs&a=detail&id=47755876" ><span class="tit-hm numname"><img src="images/manager1.gif">135<i class='yellowhm'>33366</i>635</span></a></td><td>￥3514</td><td>￥10</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755876"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="137<i class='yellowhm'>1111</i>6158" Tid="47755883" ><td><a href="detail.asp?c=searchs&a=detail&id=47755883" ><span class="tit-hm numname"><img src="images/manager1.gif">137<i class='yellowhm'>1111</i>6158</span></a></td><td>￥3514</td><td>￥10</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755883"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="13928889058" Tid="47755894" ><td><a href="detail.asp?c=searchs&a=detail&id=47755894" ><span class="tit-hm numname"><img src="images/manager1.gif">13928889058</span></a></td><td>￥3514</td><td>￥10</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755894"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="1986667<i class='yellowhm'>8886</i>" Tid="47755901" ><td><a href="detail.asp?c=searchs&a=detail&id=47755901" ><span class="tit-hm numname"><img src="images/manager1.gif">1986667<i class='yellowhm'>8886</i></span></a></td><td>￥3514</td><td>￥10</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755901"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="1356<i class='yellowhm'>0000118</i>" Tid="47755908" ><td><a href="detail.asp?c=searchs&a=detail&id=47755908" ><span class="tit-hm numname"><img src="images/manager1.gif">1356<i class='yellowhm'>0000118</i></span></a></td><td>￥3933</td><td>￥10</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755908"><img src="images/sjdg.gif" border="0" ></a></td></tr><tr class="trStyle" phone="137<i class='yellowhm'>1111</i>5828" Tid="47755919" ><td><a href="detail.asp?c=searchs&a=detail&id=47755919" ><span class="tit-hm numname"><img src="images/manager1.gif">137<i class='yellowhm'>1111</i>5828</span></a></td><td>￥3933</td><td>￥10</td><td>广州</td><td><a href="detail.asp?c=searchs&a=detail&id=47755919"><img src="images/sjdg.gif" border="0" ></a></td></tr>        
        </tbody>
      </table>
        
        
        
		</section>
		<div class="fenye-txt"  >
			当前是<span id='page'>第1</span>页,&nbsp;&nbsp;每页 
			<select id="pagelistx" name="pagelistx" onChange="subfrm(1)" style="height:22px; line-height:22px;"><option value="100">100</option><option value="300">300</option><option value="500">500</option></select> 条
	</div>
		<div class="s-box" style="border:1px solid #d8d8d8;">
			<a href="javascript:;subfrmpage('index')" value="首页" class="fenye-li">
				首页
			</a>
			<a href="javascript:;subfrmpage('front')" value="上一页" class="fenye-li">
				上一页
			</a>
			<a href="javascript:;subfrmpage('behind')" value="下一页" class="fenye-li">
				下一页
			</a>
		</div>
<style type="text/css">
<!--
.STYLE2 {color: #FFFF00; }
.foot{ background:#ededed;}
.footnav {
border-bottom: 1px solid #eeeeee;
border-top: 1px solid #eeeeee;
}

.footnav li {
display: block;
width: 25%;
padding: 10px 0;
float: left;
text-align: center;
}
.footnav li a {
display: block;
border-right: 1px solid #cbcbcb;
width: 100%;
font-size: 0.8em;
color: #676767;
}
.foottu {
	height: 45px;
	padding: 10px 0;
}
.foottu a {
display: block;
width: 33.333%;
height: 45px;
float: left;
position: relative;
}
.foottu a i.app_icon {
background-position: -100px -167px;
}
.foottu a i {
width: 45px;
height: 45px;
background-size: 250px auto;
margin: 0 auto;
display: block;
}
.foottu a i.mobile_icon {
background-position: 0 -167px;
}

.foottu a i.web_icon {
background-position: -50px -167px;
}

.copyright {
border-top: 1px solid #eeeeee;
text-align: center;
font-size: 0.8em;
color: #676767;
line-height: 32px;
margin:0px;
}

#tck{display:none; width: 100%; position: fixed; top: 0px; left: 0px; z-index: 1001; padding: 1px;height: 3822.09px; background: rgba(102, 102, 102, 0.498039); color:#000;}
.jlkk { width: 280px; position: fixed;  background: #FFF; font-family: "黑体"; font-size: 18px; }
.tc_zj{width: 280px; position: fixed; left: 50%; top:50%; padding: 1px; margin-left: -142px;
    margin-top: -114px;   background: #fff;font-family: '黑体'; font-size: .9rem;}
.tc_title { height: 30px; margin-top: 10px; border-bottom: 3px solid #308EF0; font-weight: 700; padding-left: 17px; font-size: 18px; background: #FFF; text-align:left;font-family: "黑体";}
.tc_contact {  padding:10% 8%;  background: #FFF; text-align:left; }
.tc_ewm { text-align:center; }
.gb {height: 40px;background-color: #F5F5F5;line-height: 40px;text-align: center; }
.gb a { color:#000000; text-decoration:none; display:block; margin:0 auto;}

-->
</style>
<footer>
<div class="foot">
		<div class="footnav">
            <ul>
				<li><a href="about.asp?d=13" rel="nofollow">关于我们</a></li>
				<li><a href="about.asp?d=14" rel="nofollow">交易方式</a></li>
				<li><a href="about.asp?d=15" rel="nofollow">联系我们</a></li>
				<li><a href="about.asp?d=16" rel="nofollow">诚邀合作</a></li>
				<li><a href="about.asp?d=17">资费中心</a></li>
				<li><a href="about.asp?d=18">号码常识</a></li>
				<li><a href="news.asp">新闻中心</a></li>
				<li><a href="https://cxhftx.tmall.com/" rel="nofollow">淘宝店铺</a></li>
			</ul>
		</div>
		<div class="foottu">
			<a href="javascript:tanchu();"><i class="app_icon icon"></i></a>
			<a href="/n"><i class="mobile_icon icon"></i></a>
			<a href="/" target="_blank"><i class="web_icon icon"></i></a>
		</div>
        <div class="jlkk hidden" id="tck" style="display: none;">
  <div class="tc_zj">
  <div class="tc_title">搜号吧微信版</div>
  <div class="tc_contact"> 在微信右上角添加朋友中搜索公众号"niuka168"点击关注，或者扫一扫下方二维码！随时随地买号卖号啦！
  <div class="tc_ewm"><img src="images/qrcode.jpg" ></div></div>
  <div class="gb"><a class="close" href="javascript:guanbi();">我知道啦</a></div></div>
</div>

  <script>
function guanbi(){
document.getElementById("tck").style.display="none";
}
function tanchu(){
document.getElementById("tck").style.display="block";
}
$(function () {
'use strict'

	var $cdTop = $('.cd-top')

	$(window).on('scroll', function () {
		var top = document.body.scrollTop
		if (top > 200) {
			$cdTop.show()
		} else {
			$cdTop.hide()
		}
	})

	function runScroll() {
		scrollTo(document.body, 0, 600);
	}
	$cdTop.on('click', runScroll)

	function scrollTo(element, to, duration) {
		if (duration <= 0) {
			return
		}
		var difference = to - element.scrollTop
		var perTick = difference / duration * 10
		setTimeout(function() {
			element.scrollTop = element.scrollTop + perTick
			if (element.scrollTop == to) {
				return
			}
			scrollTo(element, to, duration - 10)
		}, 10)
	}

})

	function getOuterHeight() {
	    var b = document.documentElement, a = document.body;
	    return Math.max(b.clientHeight, a.clientHeight, b.offsetHeight, a.offsetHeight, b.scrollHeight, a.scrollHeight)
	}
	$(function() {
			$(window).on("scroll touchend", function() {
	        var F = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
	        $('#loading').css({top: 200 + F + "px"})
	   		 });
			$('#menuTrigger').on("click",function(){
	   			var b=getOuterHeight()-60;
	   			$('#mMasklay').height(b);
	   			$('#mMasklay').fadeToggle(200);
	   			$('#mMenulay').slideToggle(200);
	   		});
	   		$('#mMasklay').on("click",function(){
	   			$('#mMasklay').fadeOut(300);
	   			$('#mMenulay').slideUp(300);
	   		});
		});

</script>
		<div class="copyright">Copyright©2008-2016sohaoba.com 版权所有</div>
		
	</div>
  <div class="mMasklay" id="mMasklay" ></div>
<div class="mMenulay" id="mMenulay" >
		<ul class="navlist">
		<li><a data-bn-ipg="right-nav-index" href="/n" class="">返回首页</a></li>
		<li><a data-bn-ipg="right-nav-place" href="select.asp" class="">选号大厅</a></li>
		<li><a data-bn-ipg="right-nav-bbs" href="seits.asp" class="">各地分站</a></li>
		<li><a data-bn-ipg="right-nav-guide" href="HmDz.asp" class="">号码定制</a></li>
		<li><a data-bn-ipg="right-nav-app" href="news.asp" class="">靓号资讯</a></li>
	</ul>
</div>



<style type="text/css">
<!--
.nav4 {
	height: 45px;
}
.nav4 ul {
	position: fixed;
	z-index: 200;
	bottom: 0;
	left: 0;
	width: 100%;
	border-top: 1px solid #cecdcd;
	padding-top: 2px;
	background: #f1f1f1;
	margin:0px;
}
.nav4 li {
	height: 45px;
	border-bottom: 0;
	border-right: 0;
	position: relative;
	float: left;
	width: 25%;
}
.nav4 li>a {
	font-size: 20px;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	/* border: 1px solid #f9f8f9; */
	-webkit-tap-highlight-color: rgba(0,0,0,0);
	border-bottom: 0;
	display: block;
	height: 45px;
	text-align: center;
	color: #5e5e5e;
	padding-top: 26px;
	text-decoration: none;
}

.nav4 li>a.icon-home {
	background: url(images/icon-home.png) no-repeat center 1px;
	background-size: 24px;
}
.nav4 li>a.icon-shop {
	background: url(images/ico-shop.png) no-repeat center 1px;
	background-size: 27px;
}

.nav4 li>a.icon-qq {
	background: url(images/icon-qq.png) no-repeat center top;
	background-size: 30px;
}

.nav4 li>a.icon-user {
	background: url(images/icon-user.png) no-repeat center top;
	background-size: 24px;
}

.nav4 li a label {
	margin: 0 5px;
	font-size: 12px;
	display: block!important;
	line-height: 18px;
	text-align: center;
	overflow: hidden;
}

.cd-top {
 display: none;
  height:70px;
  width:20px;
  position: fixed;
  bottom: 50px;
  right: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.05);
  /* image replacement properties */
  overflow: hidden;
  text-indent: 100%;
  white-space: nowrap;
  background: url(images/gotop.png) no-repeat ;
  visibility: visible;
  opacity: 0.5;
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  transition: all 0.3s;
  border-radius: 40px;
  z-index:1000;
}
.cd-top .cd-is-visible {
  /* the button becomes visible */
  visibility: visible;
  opacity: 1;
}
.cd-top .cd-fade-out {
  /* 如果用户继续向下滚动,这个按钮的透明度会变得更低 */
  opacity: .5;
}
.no-touch .cd-top:hover {
  background-color: #e86256;
  opacity: 1;
}

/**/
.slnum{ position:absolute;  left:0px; background:#ef4047;  padding:1px 6px;   margin: 0px 8px; cursor:pointer; color:#ffffff; border-radius: 50%;left: 55%;top: -5px; }

-->
</style>
<a href="javascript:;" class="cd-top" style="display: inline;"></a>
<div class="nav4">
	<nav>
		<div id="nav4_ul" class="nav_4">
			<ul class="box">
				<li>
					<a href="/n" class="icon-home"><label>首页</label></a>
				</li>
				<li>
                	                
					<a href="Dgjl.asp" class="icon-shop"><label>收藏记录</label></a>
				</li>
                <li>
					<a href="https://cxhftx.tmall.com/" class="icon-qq" target="_blank"><label>在线客服</label></a>
				</li>
				<li>
					<a href="seits.asp" class="icon-user"><label>城市分站</label></a>
				</li>
			</ul>
		</div>
	</nav>
	
	<div id="nav4_masklayer" class="masklayer_div on">&nbsp;</div>

</div>


<script>
		var IsnedCahe=1;
		function resetWhere(){
		  $("input[type=text]").val("");
		  $("#n1").val(1);
		  $('#province').val('');
		  $('#city').val('');
		  $('#rule').val('');
		  $('#price').val('');
		  $('input:radio[name=type]:nth(0)').attr('checked',true);
		  $('input:checkbox').attr('checked',false);
		}	
 
		window['common'] = window['common'] || {};
		//input 是不是 输入数字判断
		common.inputIsNumber = function($target){
		    var $target = $target;
		    if($target.length <= 0) return;
		    $target.bind('keydown', function(event){
		        if(!(event.keyCode==8)&&!(event.keyCode==9)&&!(event.keyCode==13)&&!(event.keyCode==39)&&!(event.keyCode==37)&&!(event.keyCode==46)&&!(event.keyCode==116)){
		            if(!((event.keyCode>=48&&event.keyCode<=57)||(event.keyCode>=96&&event.keyCode<=105))){
		                return false;
		            }
		        }
		    });
		};
		//顶部搜索精确查找交互
		common.searchExact = function() {
			var $con = $('#searchExact'), $numberInputs = $con.find('.number_input');
			common.inputIsNumber($numberInputs);
			$numberInputs.bind('keyup', function(event) {
				if (event.which == 8) {
					var num = $numberInputs.index($(this)) - 1 < 0 ? 0 : $numberInputs.index($(this)) - 1;
					$numberInputs.eq(num).focus().val('');
				} else if (event.which == 37) {//左
					var num = $numberInputs.index($(this)) - 1 < 0 ? 10 : $numberInputs.index($(this)) - 1;
					$numberInputs.eq(num).focus();
				} else if (event.which == 39) {//右
					var num = $numberInputs.index($(this)) + 1 > 10 ? 0 : $numberInputs.index($(this)) + 1;
					$numberInputs.eq(num).focus();
				} else {
					if ($(this).val() !== '') {
						$numberInputs.eq($numberInputs.index($(this)) + 1).focus();
					}
				}
			});
		};
		common.searchExact();
 
 
		function subfrmpage(str) {
			var p = parseInt($('#page').html());
			var page = 1;
			if (str == 'index') {
				page = 1;
			} else if (str == 'front') {
				if (p == 1) {
					page = 1;
				} else {
					page = p - 1;
				}
			} else if (str == 'behind') {
				page = p + 1;
			} 
			
			subfrm(page);
		}
		 function mico(m){
			s='';
			switch(m)
			{
			case '1':
				s='<img src="images/manager1.gif">';
			  break;
			case '2':
				s='<img src="images/manager2.gif">';
			  break;
			case '3':
				s='<img src="images/manager3.gif">';
			  break;
			case '9':
				s='<img src="images/manager9.png">';
			  break;
			  
			}
			return s;
		}
		function chnagorder(o){
			$('#order').val(o);
			subfrm(1);
		}

		
		var Isc_Get="";
		var Isc_Post="";		
		function subfrm(page) {
			$('#loading').html('<img src="images/loading.gif">');
			
			var DefaultIsc_Get="search.asp?c=searchs&a=ajaxnumber&page="+page+"&pagelist="+document.getElementById("pagelistx").value;
			var DefaultIsc_Post=$("#search").serialize();
			
			if(Isc_Get!=""){
				DefaultIsc_Get=Isc_Get;
				DefaultIsc_Post=Isc_Post;
			}
			
			$.ajax({
				type : "post",
			 	url:DefaultIsc_Get,
				data:DefaultIsc_Post,
				dataType : "json",
				success : function(msg) {
					$('#loading').html('');
					getHtml(msg.data);
					
					Isc_Get="";
					Isc_Post="";
					//
					if(msg.IsC!=""){
						$("#SearchUrl").val("http://"+document.domain+"/m/select.asp?S="+msg.IsC);
					}
					
					
				}
			});
			var v=$("#numbers").offset().top-60;
			$("body").scrollTop(v);
		}
 
		function getHtml(result) {
			var data = result.data;
			var page = result.page;
			var rowstyle="style='background:#fff;'";
			$('#page').html(page);
 
			var html = '<tr><th>号码</th><th>售价</th><th>话费</th><th>归属</th><th>操作</th></tr>';
			if(data.length>0){
			for (var i in data) {

				
				html += '<tr class="trStyle" phone="'+data[i].nur_number+'" Tid="'+data[i].nur_id+'" ><td><a href="detail.asp?c=searchs&a=detail&id='+data[i].nur_id+'" ><span class="tit-hm numname">'+mico(data[i].type)+TelFormat(data[i].nur_number)+'</span></a></td>';
				
				html += '<td>￥'+data[i].nur_price+'</td>';
				html += '<td>￥'+data[i].nur_HuaFei+'</td>';
				html += '<td>'+data[i].city_text+'</td>';
				html += '<td><a href="detail.asp?c=searchs&a=detail&id='+data[i].nur_id+'"><img src="images/sjdg.gif" border="0" ></a></td></tr>';
				$('.fenye-li').css('pointer-events','auto');
			}
			}else{
			    html += '<tr ><td align="center" colspan="5">暂时没有查找到你要找的数据</td></tr>';
			    $('.fenye-li').css('pointer-events','none');
			}
			$('#list').html(html);
			if(IsnedCahe==0){

							$.ajax({
								type : "post",
								url:"search.asp",
								data:{Cachekey:"type=1",Cacheval:html},
								dataType : "json",
								success : function(msg) {
									firstload=1;
								}
							});
							
			}
		}
 
 		//固话格式
		function TelFormat(Tel){
			if($("input[name='type']:checked").val()=="8"){
				var JsLeftLen=4;			
				if(Tel.substring(0,2)=="01" || Tel.substring(0,2)=="02"){
					JsLeftLen=3;
				}
				//记录区号最后一位数的位置
				var JsTelLast=0;
				//数字出现次数
				var JsNumS=0;
				//
				
				for(var Ti=0;Ti<Tel.length;Ti++){
					if(/\d/.test(Tel.substr(Ti,1))){
						JsNumS=JsNumS+1;
						
						
						if(JsNumS==JsLeftLen){
							JsTelLast=Ti+1;
							break;
						}
						
					}
				}
				
				return Tel.substring(0,JsTelLast)+"-"+Tel.substring(JsTelLast);
				
				
				
			}else{
				return Tel;
			}
		}

 
		var init_province = '';
		var init_city = '';
		var ignore_area = 1;
		
		$(function(){
				if(IsnedCahe==0){
		  				subfrm(1)
				}
				
			/*新增行处理*/		
				$(document).on("click", "#list > tr", function () {
						
						//还原其他的
						$("tr[tsign='1']").each(function(){							
								$(this).html($(this).attr("BkTdlist"));
								$(this).removeAttr("tsign");
							});
						
						
						//备份老的
						$(this).attr("BkTdlist",$(this).html());
						
						//生成新的
						if(!$(this).attr("tsign")){
						
								var phone=$(this).find("td").eq(0).text();
								var links=$(this).find("td").eq(0).find("a").attr("href");
								var idArray=links.split('id=');
								var id=idArray[1];	
								//
								var ShowTd="<td colspan='5' style='padding:0px; height:35px; line-height:35px;' ><div style='background:#626262; opacity:0.8; width:100%; height:100%; color:#ffffff;'>";
								
								ShowTd=ShowTd+"<span class='BlkPhone'>"+phone+"</span>";
								ShowTd=ShowTd+"<span class='Blkyy' links='"+links+"' >预约</span>";
								ShowTd=ShowTd+"<span class='Blksc' d='"+id+"' >收藏</span>";								
								ShowTd=ShowTd+"</div></td>";							
								
								$(this).html(ShowTd);
															
								$(this).attr("tsign","1");
						}
				});
				//预约
				$(document).on("click", ".Blkyy", function () {
						window.location.href=$(this).attr("links");
						return false;
				});
				//收藏
				$(document).on("click", ".Blksc", function () {
					
						$.ajax({
								type: "post",
								url: "detail.asp",
								dataType : "json",
								data: {"act":"shoucang","d":$(this).attr("d")},
								success: function(json){
									
									alert(json.tishi);
									//
									if(json.tishi=="收藏成功"){
											var btmSlnum=parseInt($("#btmSlnum").html())+1;
											$("#btmSlnum").html(btmSlnum).show();
									}
									
								}
						  });
				});				
			/*End 新增行处理*/
				
		});
		
		</script>

	</body>
</html>

