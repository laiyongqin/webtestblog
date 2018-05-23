/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : 127.0.0.1:3306
Source Database       : emrysblog

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-05-23 20:14:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog_article
-- ----------------------------
DROP TABLE IF EXISTS `blog_article`;
CREATE TABLE `blog_article` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `kind` varchar(255) DEFAULT NULL,
  `status` int(15) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_article
-- ----------------------------
INSERT INTO `blog_article` VALUES ('1', '技术', '1');
INSERT INTO `blog_article` VALUES ('2', '心情', '1');
INSERT INTO `blog_article` VALUES ('3', '游记', '1');

-- ----------------------------
-- Table structure for blog_comment
-- ----------------------------
DROP TABLE IF EXISTS `blog_comment`;
CREATE TABLE `blog_comment` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `uid` int(255) NOT NULL,
  `aid` int(255) NOT NULL,
  `content` text NOT NULL,
  `create_time` int(255) NOT NULL,
  `status` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_comment
-- ----------------------------
INSERT INTO `blog_comment` VALUES ('1', '1', '1', '这个方法不错', '1525594388', '1');
INSERT INTO `blog_comment` VALUES ('2', '2', '1', '和tp3.2有点不一样啊', '1525594388', '1');
INSERT INTO `blog_comment` VALUES ('3', '3', '1', '比tp3.2好用', '1525594388', '1');
INSERT INTO `blog_comment` VALUES ('12', '1', '48', '我很赞同，写的很好', '1525665273', '1');
INSERT INTO `blog_comment` VALUES ('11', '1', '35', '小学生作文', '1525665245', '1');
INSERT INTO `blog_comment` VALUES ('10', '1', '1', '总体而言，我觉得还行', '1525663183', '1');
INSERT INTO `blog_comment` VALUES ('13', '3', '49', '哈哈哈', '1525684395', '1');
INSERT INTO `blog_comment` VALUES ('14', '12', '5', '不错\n', '1525685267', '1');
INSERT INTO `blog_comment` VALUES ('15', '13', '5', '很好', '1526802877', '1');

-- ----------------------------
-- Table structure for blog_detail
-- ----------------------------
DROP TABLE IF EXISTS `blog_detail`;
CREATE TABLE `blog_detail` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT NULL,
  `uid` int(10) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  `content` varchar(20000) DEFAULT NULL,
  `creat_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  `status` int(10) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_detail
-- ----------------------------
INSERT INTO `blog_detail` VALUES ('1', '1', '3', 'TP5中的getField', 'TP5中的getField()方法变化，tp5获取单个字段值', '<pre>想直接获取单个字段值，弄了半天，tp5的getField()方法变了，具体如下：\r\n\r\nTP5中的getField()：拆分为value和column了\r\n\r\n例子：\r\n\r\n••• where(\"id = 1\")->value(\"title\");       输出：（string） title  \r\n\r\n••• where(\"id = 1\")->column(\"title\");     输出：（array）</pre>', null, '1522485872', '1');
INSERT INTO `blog_detail` VALUES ('2', '1', '3', '如何建立个人博客', '那么我们怎么去建立自己的自媒体博客呢？我认为：首先得先明白建立一个博客的流程是什么？只有先了解这套流程，我们才能做出自己满意的个人博客。', '<pre>一、对网站域名和空间的选择\r\n\r\n域名：一般会选择比较正规点的域名商购买，比如：万网、西部数码...（一年也才几十块钱）。考虑到我们的域名是要续费的，如果说你买的域是那种不正规的域名商，哪天域名商倒闭了，那么我的域名就不能使用了。还有一点值得注意的是:域名的选择最好“见名知意”越短越好。一般会用自己的名字来命名。比如：段亮个人博客：www.duanliang920.com\r\n空间：分为国内空间和国外空间。\r\n1、国内空间：需要备案网站才能上线，但是速度比国外空间要快一点，并且也稳定。\r\n2、国外空间：指（除大陆外的空间）则不需要备案，可以直接使用。\r\n一般我们对空间的选择有两点：第一、稳定性，第二、性价比。在这里我推荐大家可以去淘宝等商城上去买，至于空间稳不稳定这个我不知道，看自己的运气吧！\r\n空间大小个人建议：前期练手150M就够了，后期根据自己个人需要来选择空间大小。\r\n\r\n二、选择网站后台系统\r\n我们不需要会PHP、JSP、ASP、.NET之类的动态语言来编写网站后台，同样也可以做出一个动态网站来。因为现在有很多开源免费的CMS系统（内容管理系统）可以简单点理解成：一个可以为网站提供发布文章、图片等等一些功能的工具。\r\n那么常见的个人博客系统有哪些呢？博客后台系统的选择，取决你空间服务器是PHP的还是ASP的。\r\n空间服务器是PHP：那么我推荐你使用WordPress系统，因为WordPress最容易上手的网站程序了，程序安装5分钟搞定，就算是新手，也可以在半小时内学会搭建WordPress博客。后台傻瓜式管理，主题，插件，都可以在可视化后台按键完成，就算你不懂任何一句代码，也能轻松安装使用。\r\n空间服务器是ASP：那么我推荐你使用Z-Blog系统，程序小，运行速度快。据说著名草根站长“卢松松”的博客，也是用的这个系统。现在PHP版本也出来了，具体选择看自己爱好。\r\n当然并不只有这两款博客后台系统才可以做网站后台，也可以用其它的CMS系统比如：帝国cms、织梦cms(本人就是用的织梦，来搭建的博客网站后台)..，甚至有能力可以自己开发网站后台。只是wordpress和Z-blog这两款博客系统是非常有利于做博客，因为他们本身就是为博客而量身定做的。\r\n\r\n三、策划和设计网站效果图\r\n\r\n很多人可能会说：既然那些博客系统，都有现成的主题，那还需要自己亲自DIY设计博客的效果图吗？那是因为网上的主题鱼龙混杂的，毕竟每个人的审美观不一样，需求也不一样！所以说：想做一个自己喜欢风格的网站，还是需要自己亲自动手去设计。如果还没想好怎么去设计的朋友，我博客提供了一款比较简洁的博客模板。\r\n\r\n四、制作前台页面\r\n根据前面自己设计的效果图，然后把它制作成html的静态页面模板。方便和后台的结合，实现真正意义的动态网站。\r\n\r\n五、制作动态网站\r\n可能有些新手就会问了，网站还分静态网站和动态网站呀?为什么要实现动态网站呢？因为动态网站可以实现静态网站实现不了的功能，比如说：对网站文章的发布、图片的更新、留言等功能。\r\n\r\n六、测试以及上线\r\n在本地搭建服务器，网站上线前先测试网站有没有什么BUG。如没有什么问题，可以将本地网站解压打包，使用FTP工具上传到服务器空间。\r\n值得注意的是：先得把网站的数据库导入出来，然后在空间服务器还原。不然就会出错误哟！\r\n如果没有本地服务器测试的朋友，我这里提供了一款本地服务测试工具。请点击下载（放心使用，安全无毒！）\r\n\r\n写在最后：建立一个个人博客，其实跟建立网站流程是一样的。只有你真正的了解这套开发流程，才知道网站是怎样做出来的。</pre>\r\n', null, null, '1');
INSERT INTO `blog_detail` VALUES ('3', '1', '3', '将普通文本替换为正常HTML文本', '有时我们在textarea中输入了正常的文本内容，然而如果直接将文本取出来呈现在网页中，原本的换行和回车功能便会失效，完全丢失了原来的样式，这是因为在HTML中的空格和换行分别为&nbsp;和<br>，所以我们需要将其替换才能变成我们想要的样式。', '<pre>我们可以定义这样的一个函数，将原来的字符串替换为HTML文本。即把空格和换行替换掉即可\r\n\r\nPHP\r\n\r\nfunction htmtocode($content) { \r\n		$content = htmlspecialchars($content, ENT_QUOTES);\r\n	    $content = str_replace(\" \", \"&nbsp;\", $content); \r\n	    $content = str_replace(\"\\n\", \"<br>\",$content);    \r\n	    return $content; \r\n	}\r\nfunction htmtocode($content) { \r\n        $content = htmlspecialchars($content, ENT_QUOTES);\r\n        $content = str_replace(\" \", \"&nbsp;\", $content); \r\n        $content = str_replace(\"\\n\", \"<br>\",$content);    \r\n        return $content; \r\n    }\r\n通过上述方法，我们首先将HTML的特殊标记转化，然后替换掉空格和换行即可。\r\n\r\n用法\r\n\r\n写个最简单的小例子，在textarea中输入任意的文本，存储到数据库，然后再取出来，可以实现textarea输入的效果，完全一样。\r\n\r\n数据库名称：demo\r\n\r\n数据库表：\r\n\r\nCREATE TABLE IF NOT EXISTS `article` (\r\n  `id` int(11) NOT NULL AUTO_INCREMENT,\r\n  `text` text NOT NULL,\r\n  PRIMARY KEY (`id`)\r\n)\r\n\r\nCREATE TABLE IF NOT EXISTS `article` (\r\n  `id` int(11) NOT NULL AUTO_INCREMENT,\r\n  `text` text NOT NULL,\r\n  PRIMARY KEY (`id`)\r\n)\r\n插入数据：<xmp>\r\n\r\n<head>\r\n	<meta charset=\"utf-8\">\r\n</head>\r\n<body>\r\n	<form action=\"\" method=\"post\">\r\n		<textarea name=\"text\"></textarea>\r\n		<input type=\"submit\" name=\"sub\">\r\n	</form>\r\n</body>\r\n<?php \r\n	$con = mysql_connect(\"localhost\", \"root\", \"\");\r\n	if (!$con) {\r\n		die(\"数据库连接失败\");\r\n	} \r\n	mysql_select_db(\"demo\",$con);\r\n	mysql_query(\"set names utf8\");\r\n	$text = @$_POST[\'text\'];\r\n	$sql = \"insert into article(text) values (\'$text\')\";\r\n	echo $sql;\r\n	$result = mysql_query($sql,$con);\r\n	if ($result) {\r\n		echo \"录入成功\";\r\n	} else {\r\n		echo \"录入失败\";\r\n	}\r\n\r\n?>\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n</head>\r\n<body>\r\n    <form action=\"\" method=\"post\">\r\n        <textarea name=\"text\"></textarea>\r\n        <input type=\"submit\" name=\"sub\">\r\n    </form>\r\n</body>\r\n<?php \r\n    $con = mysql_connect(\"localhost\", \"root\", \"\");\r\n    if (!$con) {\r\n        die(\"数据库连接失败\");\r\n    } \r\n    mysql_select_db(\"demo\",$con);\r\n    mysql_query(\"set names utf8\");\r\n    $text = @$_POST[\'text\'];\r\n    $sql = \"insert into article(text) values (\'$text\')\";\r\n    echo $sql;\r\n    $result = mysql_query($sql,$con);\r\n    if ($result) {\r\n        echo \"录入成功\";\r\n    } else {\r\n        echo \"录入失败\";\r\n    }\r\n \r\n?>\r\n\r\n查询数据：\r\n\r\n<head>\r\n	<meta charset=\"utf-8\">\r\n</head>\r\n<body>\r\n	<form action=\"\" method=\"post\">\r\n		<textarea name=\"text\"></textarea>\r\n		<input type=\"submit\" name=\"sub\">\r\n	</form>\r\n</body>\r\n<?php \r\n	$con = mysql_connect(\"localhost\", \"root\", \"\");\r\n	if (!$con) {\r\n		die(\"数据库连接失败\");\r\n	} \r\n	mysql_select_db(\"demo\",$con);\r\n	mysql_query(\"set names utf8\");\r\n	$text = @$_POST[\'text\'];\r\n	$sql = \"select * from article\";\r\n\r\n	$result = mysql_query($sql,$con);\r\n	if ($result) {\r\n		while ($row = mysql_fetch_array($result)) {\r\n			echo htmtocode($row[\'text\']);\r\n		}\r\n	} else {\r\n		echo \"录入失败\";\r\n	}\r\n\r\n	function htmtocode($content) { \r\n		$content = htmlspecialchars($content, ENT_QUOTES);\r\n	    $content = str_replace(\" \", \"&nbsp;\", $content); \r\n	    $content = str_replace(\"\\n\", \"<br>\",$content);    \r\n	    return $content; \r\n	}\r\n?>\r\n<head>\r\n    <meta charset=\"utf-8\">\r\n</head>\r\n<body>\r\n    <form action=\"\" method=\"post\">\r\n        <textarea name=\"text\"></textarea>\r\n        <input type=\"submit\" name=\"sub\">\r\n    </form>\r\n</body>\r\n<?php \r\n    $con = mysql_connect(\"localhost\", \"root\", \"\");\r\n    if (!$con) {\r\n        die(\"数据库连接失败\");\r\n    } \r\n    mysql_select_db(\"demo\",$con);\r\n    mysql_query(\"set names utf8\");\r\n    $text = @$_POST[\'text\'];\r\n    $sql = \"select * from article\";\r\n \r\n    $result = mysql_query($sql,$con);\r\n    if ($result) {\r\n        while ($row = mysql_fetch_array($result)) {\r\n            echo htmtocode($row[\'text\']);\r\n        }\r\n    } else {\r\n        echo \"录入失败\";\r\n    }\r\n\r\n    function htmtocode($content) { \r\n        $content = htmlspecialchars($content, ENT_QUOTES);\r\n        $content = str_replace(\" \", \"&nbsp;\", $content); \r\n        $content = str_replace(\"\\n\", \"<br>\",$content);    \r\n        return $content; \r\n    }\r\n?>\r\n嗯，通过上面的方法我们便可以正常地实现输入内容和输出内容的匹配呈现。</xmp></pre>\r\n', null, null, '1');
INSERT INTO `blog_detail` VALUES ('4', '1', '3', 'PHP高级特性八之mysqli函数库的使用', '', '<pre>1.什么是mysqli\r\n\r\nPHP-MySQL&nbsp;函数库是&nbsp;PHP&nbsp;操作&nbsp;MySQL&nbsp;资料库最原始的扩展库，PHP-MySQLi&nbsp;的&nbsp;i&nbsp;代表&nbsp;Improvement&nbsp;，相当于前者的增强版，也包含了相对进阶的功能，另外本身也增加了安全性，比如可以大幅度减少&nbsp;SQL&nbsp;注入等问题的发生。\r\n\r\n2.&nbsp;mysql与mysqli的概念相关\r\n\r\n（1）mysql与mysqli都是php方面的函数集，与mysql数据库关联不大。\r\n\r\n（2）在php5版本之前，一般是用php的mysql函数去驱动mysql数据库的，比如mysql_query()的函数，属于面向过程\r\n\r\n（3）在php5版本以后，增加了mysqli的函数功能，某种意义上讲，它是mysql系统函数的增强版，更稳定更高效更安全，与mysql_query()对应的有mysqli_query()，属于面向对象，用对象的方式操作驱动mysql数据库\r\n\r\n3.&nbsp;mysql与mysqli的主要区别\r\n\r\n（1）mysql是非持继连接函数，mysql每次链接都会打开一个连接的进程，所以mysqli耗费资源少一些。\r\n\r\n（2）mysqli是永远连接函数，mysqli多次运行mysqli将使用同一连接进程,从而减少了服务器的开销。mysqli封装了诸如事务等一些高级操作，同时封装了DB操作过程中的很多可用的方法。\r\n\r\n（3）mysqli提供了面向对象编程方式和面向过程编程方式，而mysql则只可以面向过程。\r\n\r\n例如如下代码分别是mysqli的面向对象编程方式和面向过程方式\r\n\r\n面向对象方式PHP</pre>', null, '1523776726', '1');
INSERT INTO `blog_detail` VALUES ('5', '1', '3', 'mac上环境变量--hexo的配置', '关于mac上环境变量--hexo 环境配置出错解决方法', '<pre>关于mac上环境变量--hexo 环境配置出错解决方法\r\n\r\n在配置了java的jdk开发环境之后，mac上的环境变量就被修改过了，然后进入hexo开发环境发现之前的指令都无效，其实只要重新修改环境变量即可解决 windows上似乎只需要添加一条path路径。\r\n1，打开终端，新建.bash_profile文件在~/目录下（如果电脑里已经有了这个文件，跳过这一步）\r\n	touch ~/.bash_profile\r\n2，打开.bash_profile\r\n	open ~/.bash_profile\r\n3，在弹出的编辑窗口中配置PATH\r\n	export PATH=/usr/local/bin:$PATH\r\n4，然后再回到终端输入，使文件生效\r\n	source ~/.bash_profile\r\n\r\n环境变量配置完成。</pre>\r\n', null, null, '1');
INSERT INTO `blog_detail` VALUES ('6', '1', '3', 'Github提交代码', '怎样用Github Desktop提交自己的本地代码到Github上', '<pre>				怎样用Github Desktop提交自己的本地代码到Github上\r\n\r\n1，	打开Github Desktop新建一个本地仓库，我一般直接建在桌面上，注意名称不要重复。（新建完后桌面上会多一个文件夹）\r\n\r\n2，	然后把你需要上传的文件放在本地仓库（文件夹里）上。\r\n\r\n3，	回到Github Desktop上会自动检测到改变，写一些summary提交上去。\r\n\r\n4，	最后publish上你的远程仓库，同样注意远程库的名称不要重复。\r\n\r\n5，打开你的github发现可以啦！</pre>\r\n\r\n', null, null, '1');
INSERT INTO `blog_detail` VALUES ('35', '3', '11', '记白云寺一日游', '去年放假的时候，我同大姨以及妹妹们一起游览了白云寺。要说这白云寺，可得听我慢慢道来了', '<p>去年放假的时候，我同大姨以及妹妹们一起游览了白云寺。要说这白云寺，可得听我慢慢道来了。</p><p>刚入口，便看到两条岔路口，路边种着两排杨柳，枝繁叶茂。一阵微风吹来，柳枝柔柔飘起，婀娜多姿，好似一位少女正在梳理着自己的秀发。正不愧为一番美景！远处的嚣闹声把我从自己的世界里拉了出来，我不禁有些好奇。继续往前走，一段幽静的小路之后，便看到了繁华的一幕，路边的小吃摊摊主在大声的吆喝着，招呼客人，而中间本就不太宽的走道，现在已经人头攒动。哇，柳州螺丝粉、花样冰淇淋、扬州炒饭……许多美食让我应接不暇。有一阵香气飘来，当我摸着已经圆滚滚的肚子时，我才明白发生了什么。</p><p>挤出水泄不通的人群，继而走进了一个寺庙，向老婆婆讨了几根香之后，虔诚的点上，默念了几句，我便脸带微笑的走了出去。接下来是一条竹林小道，许多的竹子被铁网挡到了小路两旁，幽深寂静，时而传来竹叶的沙沙声，时而又冒出头让我与它握手问好，微风吹过，带来一种时间静止的美好。</p><p>走过一座石桥，入眼的是一条长长的石梯，意未动，身先动，在我反应过来，我已“呼哧、呼哧”的爬了一大截了。当我将石梯走完时，面前没有路了，我不禁呶呶嘴，却听见旁边的叔叔说了一句意味深长的话：这世间本就没有路，走得多了也便成了路。说完，他便继续往上爬了，我不禁挠头尴尬一笑，也继续往上爬……</p><p><br/></p>', null, '1525664129', '1');
INSERT INTO `blog_detail` VALUES ('7', '1', '3', '算法>搜索', '搜索算法的代码示例', '<pre>			算法04|搜索\r\n\r\n搜索基本公式\r\nvoid bfs (int step)\r\n{\r\n	判断边界\r\n	尝试每一种可能  for(i=1;i<=n;i++)\r\n	{\r\n		继续下一步  dfs(step +1);\r\n	}\r\n	返回\r\n}\r\n\r\n一个例子\r\ninclude <stdio.h>\r\nint a[10],book[10],total=0;\r\nvoid dfs(int step)\r\n{\r\n	int i;\r\n	if (step==n+1) {//如果站在第n+1个盒子面前，则表示前n个盒子已经放好扑克牌\r\n			for(i=1;i<=n;i++)\r\n				printf(\"%d\",a[i]);\r\n				printf(\"\\n\");\r\n				return;//返回之前的一步\r\n	}\r\n	for(i=1;i<=n;i++)\r\n	{\r\n		if (book[i]==0) {//表示第i号扑克牌仍然在手上\r\n			a[step]=i;\r\n			book[i]=1;\r\n			dfs(step+1);\r\n			book[i]=0;\r\n		}\r\n	}\r\n	return;\r\n}\r\nint main(){\r\n	scanf(\"%d\",&n);\r\n	dfs(1);\r\n	getchar();getchar();\r\n	return 0;\r\n}</pre>\r\n\r\n', null, '1522341172', '1');
INSERT INTO `blog_detail` VALUES ('8', '1', '3', '迷宫问题', '数据结构与算法之迷宫问题', '<pre>			迷宫问题\r\n\r\n#include <stdio.h>\r\n//迷宫问题\r\nstruct note\r\n{\r\n	int x;\r\n	int y;\r\n	int f;\r\n	int s;\r\n};\r\nint main()\r\n{\r\n	struct note que[2501];//地图大小不超过50*50\r\n	int a[51][51]={0},book[51][51]={0};\r\n	int next[4][2] = { { 0, 1},\r\n						{ 1, 0},\r\n						{ 0, -1},\r\n						{-1, 0} };\r\n	int head, tail;\r\n	int i,j,k,m,n,startx,starty,q,p,tx,ty,flag;\r\n	\r\n	scanf(\"%d %d\",&n, &m);\r\n	for(i=1; i<=n; i++)\r\n		for(j=1;j<=m;j++)\r\n			scanf(\"%d\",&a[i][j]);\r\n	scanf(\"%d %d %d %d\",&startx, &starty,&p,&q);\r\n	//队列初始化\r\n	head=1;\r\n	tail=1;\r\n	//插入迷宫入口坐标\r\n	que[tail].x=startx;\r\n	que[tail].y=starty;\r\n	que[tail].f=0;\r\n	que[tail].s=0;\r\n	tail++;\r\n	book[startx][starty]=1;	\r\n	flag=0;\r\n	while (head<tail) {\r\n		for(k=0;k<=3;k++)\r\n		{\r\n			tx=que[head].x+next[k][0];\r\n			ty=que[head].y+next[k][1];\r\n			//判断是否越界\r\n			if (tx<1 || tx>n || ty<1 || ty>m) \r\n				continue;\r\n				//判断是否是障碍物或已经在路径中\r\n			if(a[tx][ty]==0 && book[tx][ty]==0)\r\n			{\r\n				book[tx][ty]=1;\r\n				que[tail].x=tx;\r\n				que[tail].y=ty;\r\n				que[tail].f=head;\r\n				que[tail].s=que[head].s+1;\r\n				tail++;\r\n			}\r\n			//到达目标点\r\n			if(tx==p && ty==q)\r\n			{\r\n				flag=1;\r\n				break;\r\n			}\r\n		}\r\n		if (flag==1) \r\n			break;\r\n			head++;	\r\n		\r\n	}	\r\n	printf(\"%d\",que[tail-1].s);\r\n	getchar();getchar();\r\n	return 0;\r\n}</pre>\r\n\r\n\r\n', null, null, '1');
INSERT INTO `blog_detail` VALUES ('21', '1', '3', 'PHP入门心得', '谈一下自己在入门PHP时的感想，以及简单的学习方法', '<pre>我想简单介绍一下新入门php的感受.\r\n\r\nphp开发以简单快捷著称;学它做项目比java要快(3天就可以入门);但我认为php简单的是外表;其实它的功能非常强大;要学精恐怕须多做几年的实战项目才干敢自称呢。php也有架构(但没有java强);也有连接池;不过比较麻烦.\r\n\r\n下面简单介绍一下PHP的语法。(和java对比;我会用程序说明比较直观)\r\n\r\n1、嵌入方法：\r\n\r\n类似JSP的<%，PHP可以是<?php或者是<?，结束符号是?>。\r\n\r\n2、引用文件：\r\n\r\n引用文件的方法有两种：require 及 include。(最好用require_once和include_once;效率会略高)。\r\nrequire 的使用方法如 require(\"test.php\"); 。这个函数通常放在 PHP 程序的最前面，PHP 程序在执行前，就会先读入 require 所指定引入的文件，使它变成 PHP 程序网页的一部份。常用的函数，亦可以这个方法将它引入网页中。\r\n\r\ninclude 使用方法如 include(\"test.php\"); 。这个函数一般是放在流程控制的处理部分中。PHP 程序网页在读到 include 的文件时，才将它读进来。这种方式，可以把程序执行时的流程简单化。\r\n\r\n3、注释方法：\r\n\r\n和java一样; 3种(1:/**abc */ 2:/*abc */ 3://abc)\r\n\r\n4、变量类型：\r\n\r\n$str = \"test\" ;\r\n\r\n$int1 = 66;\r\n\r\n$float1 = 1.653 ;\r\n\r\n$float2 = 1.3E+5 ;\r\n\r\n$array1 = array( \"甲\" , \"乙\" , \"丙\" , \"丁\" );\r\n\r\n这里引出两个问题，首先PHP变量以$开头，第二PHP语句以;结尾。\r\n\r\n5. php输出方法:\r\n\r\n以下有3种方法输出:\r\n\r\necho\r\n\r\nprintf 却一定要有圆括号;用来格式化数字的输出。可以把一个数作为整数，或者用科学计数法显示出来。\r\n\r\nprint 可有可无圆括号\r\n\r\n你可以用“,”号来分隔多个要显示得内容;包括变量.字符.数字.函数等类型.\r\n\r\n可以用iconv(\'gb2312\', \'utf-8\', $response)来把gb2312的字符转成utf-8的字符输出.\r\n\r\nphp退出函数用\"exit\";java用\"return\".\r\n\r\n6.了解php的系统信息方法:\r\n\r\n以下可以看到php的系统变量:\r\n\r\n<?php\r\n\r\necho \"<pre>\";\r\n\r\nprint_r($GLOBALS);\r\n\r\n?>\r\n\r\n举例:可以查到远程访问的ip\r\n\r\n<?php echo $_SERVER[\"REMOTE_ADDR\"];?>\r\n\r\n以下可以看到php的系统环境:\r\n\r\n<? php echo phpinfo(); ?>\r\n\r\n7.数据库编程:\r\n\r\n<?php\r\n\r\n//数据库连接 3个参数 ip, 用户, 密码\r\n\r\n$conn=mysql_connect(\"127.0.0.1\", \"test\", \"test\");\r\n\r\n//选择名为\"mysee\"数据库\r\n\r\nmysql_select_db(\"mysee\");\r\n\r\n//执行sql语句;得到输出结果$result\r\n\r\n$result = mysql_query(\"select channel_name, channel_url from live_channel where isactive=1\");\r\n\r\n$response=\"{\";\r\n\r\n$i=0;\r\n\r\n//循环得到$result的单记录行值$row\r\n\r\nwhile($row = mysql_fetch_array($result)) {\r\n\r\n//注意:php字符相加用\'.\'和java不一样(java用\'+\'); $row[\"channel_name\"]可以行记录的字段名\'channel_name\'的值\r\n\r\n$response .= \"\'\".$i.\"\':[\'\".$row[\"channel_name\"].\"\', \'\".$row[\"channel_url\"].\"\'],\";\r\n\r\n$i++;\r\n\r\n}</pre>\r\n', '', '15', '1');
INSERT INTO `blog_detail` VALUES ('48', '2', '12', '记忆之歌', '记忆之歌', '<p>一种感觉。</p><p>歌曲是有记忆的。</p><p>&nbsp;</p><p>某个时候你经常听的某一首歌，后来你不再听它了。</p><p>&nbsp;</p><p>但有天你偶然间路过接口拐角又刚好听到，还是会一瞬间沉寂到当时的那种心情里。</p><p>&nbsp;</p><p>这种感觉就像空气中的味道一样。</p><p>那是属于你自己的味道，说不清道不明。</p><p>&nbsp;</p><p>反正你一闻到空气中某个季节的某个味道，就会回想起很久以前的某些事。</p><p>&nbsp;</p><p>即便你心里早就已经忘了。</p><p>但那一瞬间，你心里还是会咯噔一下。</p><p>&nbsp;</p><p>这种感觉很奇妙，很难用言语表达出来。</p><p>&nbsp;</p><p>也许它并不能影响你当下的状态。</p><p>可你心里知道，这些歌曲真真切切地承载过你的记忆。</p><p><br/></p>', null, '1525665103', '1');
INSERT INTO `blog_detail` VALUES ('49', '2', '12', '曾梦想仗剑走天涯', '曾梦想仗剑走天涯', '<p>沉寂很久的高中宿舍群突然活跃了起来。</p><p>&nbsp;</p><p>有些人其实很久没联系了，聊起近况，大家插科打诨说了一阵。</p><p>&nbsp;</p><p>总觉得，好像有什么东西不那么一样了。</p><p>&nbsp;</p><p>那一会想仗剑走天涯的人，现在为填饱肚子奔波劳累。</p><p>&nbsp;</p><p>想环游世界的人坐在写字楼里，西装革履。</p><p>想当作家的人成了文员。</p><p>想学画画的人做起了财会。</p><p>&nbsp;</p><p>想走遍山和大海的人，变成了程序员，熬夜加班。</p><p>&nbsp;</p><p>你上一次踌躇满志，觉得自己能改变世界是在什么时候？</p><p>我已经记不得了。</p><p>&nbsp;</p><p><span style=\"font-size:14px;font-family:等线\">可能这就是生活吧。</span></p><p><br/></p>', null, '1525665139', '1');
INSERT INTO `blog_detail` VALUES ('50', '2', '12', '自由生长的爱情', '自由生长的爱情', '<p>你们在恋爱中最怦然心动的是什么时刻？</p><p>&nbsp;</p><p>周末和男朋友去爬山，晃晃悠悠到山顶时已经是傍晚。</p><p>太阳西沉，山顶上除了风声和虫鸣，一片寂静。</p><p>我跟他懒懒地坐在树下休憩，然后突兀地有什么掉落下来，不轻不重地砸过我的肩膀。</p><p>我们都被吓了一跳，那团东西掉在地上骨碌骨碌滚了几圈才停下。</p><p>居然是一朵木棉花。</p><p>然后我们不约而同地抬头看，橙红色、拳头大的木棉花沉甸甸地坠了满树。</p><p>&nbsp;</p><p>该怎么说呢？这个瞬间非常微妙，像一个奇迹，我们像是被这一树花见证了。</p><p>我的心滚烫，又像是一颗饱满的果子，抑制不住地想要成熟，变得芬芳馥郁。</p><p>我知道，这种感觉一定就是怦然心动。</p><p>&nbsp;</p><p>晚上下山时，我们慢慢地走下被薄雾笼罩的小路，两个人牵着手，谁也没有说话。</p><p>像是可以永远走下去。</p><p>&nbsp;</p><p>还要要求他什么呢？</p><p>不会做那些“男生考验题”又怎样呢？</p><p>有时候蠢呼呼地猜不透我心思又怎样呢？</p><p>不是网络上那些“百分男友”又怎么样呢？</p><p>&nbsp;</p><p>我们牵着手度过了一个动人到心碎的时刻呀！</p><p>&nbsp;</p><p>我知道我此刻已经得到最好的爱情了。</p><p>&nbsp;</p><p>它很普通，是扎在土里的，会长出落叶和残花，也会向着阳光，自由生长的爱情。</p><p><br/></p>', null, '1525665172', '1');
INSERT INTO `blog_detail` VALUES ('46', '2', '12', '被推着走，跟着生活流', '被推着走，跟着生活流', '<p>我觉得《最佳损友》最伤感的一句歌词其实是：</p><p>被推着走，跟着生活流。</p><p>&nbsp;</p><p>一句话道尽了所有。</p><p>&nbsp;</p><p>初三那年我有个很好的朋友，他参加中考后去读了职校。</p><p>我上了高中，参加高考，然后上大学。</p><p>&nbsp;</p><p>我上大学那会，他就已经出来工作了。</p><p>因为距离和时间的关系，我们联系越来越少。</p><p>&nbsp;</p><p>偶尔放假回家，我们一起出来吃饭。</p><p>明显能感觉到那种话题格格不入的感觉。</p><p>&nbsp;</p><p>他不了解我的生活，我听不懂他的烦恼。</p><p>&nbsp;</p><p>他结婚那会我还在上大学，我给他包红包，他偷偷塞回给了我。</p><p>回来时他送我去车站，我们一路上沉默寡言，很多话憋在心里，都说不出来。</p><p>&nbsp;</p><p>后来他回家里的工厂帮忙做生意，到我出来工作的时候，我们已经是陌生人了。</p><p>&nbsp;</p><p>分道扬镳的友情大都如此。</p><p>没有什么深仇大恨，没有轰轰烈烈的诀别。</p><p>&nbsp;</p><p>“一直躲避的借口，非什么大仇。”</p><p>是啊，不过是被时间推着走，跟着生活流，从没想过来年陌生的，竟然是昨日最亲的某某。</p><p>&nbsp;</p><p><span style=\"font-size:14px;font-family:等线\">而我的朋友……这辈子，我也就只能陪你走到这了。</span></p><p><br/></p>', null, '1525665005', '1');
INSERT INTO `blog_detail` VALUES ('47', '2', '12', '《断头王后》', '《断头王后》', '<p>人总要失去某些东西，才会突如其来地成长。</p><p>&nbsp;</p><p>因为亲近的人离开，所以才懂得珍惜。</p><p>失恋后，才知道感情中有时候要给自己留有余地。</p><p>友情的逝去，才会明白为什么最大的敌人是时间和距离。</p><p>&nbsp;</p><p>面对新环境，遭受挫折后，才明白该怎么去适应。</p><p>遭受了背叛，才知道不可用秘密去交换秘密。</p><p>&nbsp;</p><p>回看你成长的轨迹，你总会某个阶段突然想明白某些事情。</p><p>但它们都是以失去为代价的。</p><p>&nbsp;</p><p>茨威格在《断头王后》里写：</p><p>她那时候还太年轻，不知道所有命运赠送的礼物，早已在暗中标好了价格。</p><p>&nbsp;</p><p>是的。</p><p><br/></p>', null, '1525665067', '1');
INSERT INTO `blog_detail` VALUES ('44', '2', '12', '四星瓢虫', '四星瓢虫一直很孤独，想恋爱了', '<p>四星瓢虫一直挺孤独，想恋爱了。</p><p>&nbsp;</p><p>它听朋友劝，找了个占卜师看星盘。</p><p>&nbsp;</p><p>占卜师看着它背上的斑点，捋捋胡子，感叹道:孽缘啊，不简单。</p><p>&nbsp;</p><p>四星瓢虫急了，问：大师你帮帮我吧，我该怎么办？</p><p>&nbsp;</p><p>占卜师：你一直往东飞，那有个葡萄园，你见到的第一只瓢虫就会成为你恋人。</p><p>&nbsp;</p><p>它相信了占卜师，往东飞去。</p><p>&nbsp;</p><p>到了葡萄园，看见几个淌鼻涕的光屁股小孩义正言辞地指着一只十星瓢虫骂“害虫”。</p><p>&nbsp;</p><p>太侮辱虫了！</p><p>不过就是喜欢吃素，怎么就能血口喷虫骂它是害虫呢？</p><p>&nbsp;</p><p>四星瓢虫义愤填膺地飞去帮它解围。</p><p>&nbsp;</p><p>十星瓢虫崇拜地看着它，羞红了脸，问：你真好，你愿意当我对象儿么？</p><p>&nbsp;</p><p>四星瓢虫想起占卜师的话，心花怒放，连忙答应。</p><p>这时，天上一道白光闪过，占卜师笑眯眯地告诉了它们真相。</p><p>&nbsp;</p><p>其实，你是七星瓢虫，只是需要等待那个能给你三颗痣的瓢虫出现。</p><p><span style=\"font-size:14px;font-family:等线\">现在，你俩都是七星瓢虫了。</span></p><p><br/></p>', null, '1525664931', '1');
INSERT INTO `blog_detail` VALUES ('45', '2', '12', '你只身一人，该来的都躲不过', '你只身一人，该来的都躲不过', '<p>刚上高中的堂弟跟我聊天，说羡慕我。</p><p>&nbsp;</p><p>在他眼里，毕业就意味着自由，可以做自己喜欢的事情，可以不被老师和父母约束。</p><p>&nbsp;</p><p>十七八岁的时候我也是这么想的。</p><p>&nbsp;</p><p>但生活其实是一堵密不透风的墙。</p><p>日子一天天过去，生活也一天天重复。</p><p>&nbsp;</p><p>要记得什么时候要补充生活用品，什么时候得定期整理房间。</p><p>衣服要记得晾，床单每星期要记得洗。</p><p>&nbsp;</p><p>事无巨细，那些生活中从来都看不到的小角落，突然都要自己去操心了。</p><p>&nbsp;</p><p>因这些琐碎而麻烦的小事情，以前有人帮你去做，现在没有。</p><p>&nbsp;</p><p>这是我十几岁的时候没有想到的事情。</p><p>&nbsp;</p><p>我也没有想过，生活会抹去人的热血和激情。</p><p>&nbsp;</p><p>琐碎的事从不间断，加不完的班，不够花的钱。</p><p>&nbsp;</p><p>有时候会怀疑自己，说混口饭吃，又不知道这口饭的意义在哪里。</p><p>&nbsp;</p><p>当然血性还是有的。</p><p>&nbsp;</p><p>但只是和糟糕的事情抗争，就已经让人精疲力尽了。</p><p>&nbsp;</p><p>当然这些我都没跟他说。</p><p>有时候想，只言片语终究是不完整的。</p><p>&nbsp;</p><p>有些事情如果不自己亲自走上一遭，很多时候你也不会信。</p><p>&nbsp;</p><p>十几岁我也觉得躲着老师和家长是一件特别麻烦的事。</p><p>&nbsp;</p><p>但等到不用躲着学校和家长的时候，你突然发现，自己已经被生活推到了要经受风吹雨打的路口了。</p><p>&nbsp;</p><p><span style=\"font-size:14px;font-family:等线\">你只身一人，该来的都躲不过。</span></p><p><br/></p>', null, '1525664968', '1');
INSERT INTO `blog_detail` VALUES ('41', '2', '12', '成人友情', '在感情中，两个人的默契度是很重要的。', '<p>在感情中，两个人的默契度是很重要的。</p><p>&nbsp;</p><p>怎么说呢？</p><p>成年人的友情不像小孩，小时候绝交，都是大张旗鼓地罗列出原因，说我不跟你玩了。</p><p>&nbsp;</p><p>而在成年人的交际中，有时候可能是你的一些无心之举，一句稀松平常的调侃。</p><p>&nbsp;</p><p>就会不小心触碰到对方的某个点，从而出现隔阂。</p><p>&nbsp;</p><p>连你自己都没有察觉。</p><p>&nbsp;</p><p>隔阂一旦出现，两个人的距离就会疏远。</p><p>&nbsp;</p><p>当然彼此间有误会出现的话，及时消除误会肯定是必要的。</p><p>&nbsp;</p><p>但如果事事如此，连说话都小心翼翼，那相处起来也太累了。</p><p>&nbsp;</p><p>也不是说是对方不好，大家都很好，只是彼此不适合做朋友。</p><p>&nbsp;</p><p>但凡友情，在最后走到一起的，除了彼此对这段感情的看重之外。</p><p>一定要有足够的默契和信任。</p><p><br/></p>', null, '1525664768', '1');
INSERT INTO `blog_detail` VALUES ('42', '2', '12', '许小姐', '许小姐是个笑点很低的人', '<p>许小姐是个笑点很低的人。</p><p>她刷到微博上好玩的段子，经常性笑得前俯后仰，还要拉上我一起看。</p><p>&nbsp;</p><p>其实我早看过了，但笑声容易传染，我也总是被她逗笑。</p><p>她笑段子，我笑她。</p><p>&nbsp;</p><p>跟好朋友在一起也是这样。</p><p>笑点不自觉就变得很低。</p><p>&nbsp;</p><p>平时一个人看遍段子面无表情。</p><p>但是跟好朋友在一起，几个人抛梗，翻出聊天记录还能再笑一遍。</p><p>&nbsp;</p><p>日子有点难过，一辈子又那么短。</p><p>应该跟开心又有趣的人走在一起，不是吗？</p><p><br/></p>', null, '1525664836', '1');
INSERT INTO `blog_detail` VALUES ('43', '2', '12', '是我', '前几天我跟同事假期加班，午饭的时间闲聊了一会', '<p>前几天我跟同事假期加班，午饭的时间闲聊了一会。</p><p>&nbsp;</p><p>工作没有上学时候想像的美好。</p><p>他说。</p><p>&nbsp;</p><p>以前觉得上班时间很美好的事，做完一天的工作，然后剩下的时间都是自己的了。</p><p>&nbsp;</p><p>不用复习，不用考试，可以自己安排自己的业余时间。</p><p>&nbsp;</p><p>但生活善于把你期待的事情搞砸，也许是自己搞砸的也说不定。</p><p>&nbsp;</p><p>反正就是，工作之后，不要说什么有意义的业余时间了。</p><p>&nbsp;</p><p>每天八九点下班回去，躺在床上，累得连澡都不想洗。</p><p>没做什么轰轰烈烈的大事，反正就是累，那种精神上的疲倦。</p><p>&nbsp;</p><p>周末宅在家里，一个午觉睡到下午四五点。</p><p>醒过来朦朦胧胧，随之而来的又是莫名其妙而又巨大的失落。</p><p>&nbsp;</p><p>当然，星期一到五是很难看到黄昏的。</p><p>因为埋头工作完离开的时候，通常都天黑了。</p><p>&nbsp;</p><p>所以说，万事如意是多么美好的一个词。</p><p>不如意才是生活的主旋律。</p><p>&nbsp;</p><p>生活不像电影，有些努力你要过了很久才能看到回报。</p><p>有些机会不小心错过就不会再回来。</p><p>&nbsp;</p><p>昨天下班的时候是十一点多。</p><p>我走出写字楼的时候，看到在大厦楼下抽烟的保安。</p><p>&nbsp;</p><p>他问我几点了，说他没带手机。</p><p>我说十一点半，他说辛苦了。</p><p>我说你也是。</p><p>&nbsp;</p><p>谁不是呢？</p><p>&nbsp;</p><p>以前我不理解有些人为什么为一块钱奔波劳累。</p><p>有些人为什么年复一年，在枯燥的岗位上一成不变。</p><p>&nbsp;</p><p>有选择和余地，证明你已经很幸运了。</p><p>有的人在生活的间隙里摸爬滚打，连选择和一点点退路都不曾有。</p><p>&nbsp;</p><p>生活是不会给你喘息时间的。</p><p>我也是过了很久，才明白了这句话的意思。</p><p><br/></p>', null, '1525664886', '1');
INSERT INTO `blog_detail` VALUES ('30', '3', '11', '黄山游记', '“今天天气好晴朗，处处好风光、好风光……”五一劳动节到了，小长假里，我怀着喜悦的心情，和妈妈一起去游黄山', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;黄山之美真是名副其实，抬头望大门口的撑梁柱相当高，很有气势。我们沿着山路往上走，山上长满了花草树木，有红的、有蓝的，还有绿的，把黄山点缀得五彩缤纷，非常美丽。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;而在沿途路边，到处都是奇形怪状的石头，这块像什么，那块像什么，大多都依据形状想像成神仙，宫室以及器用。唯有一块石头非常独特，它圆圆的，像一个大皮球，上面刻着繁体写的“疾风”二字，我不知道它是人工雕刻出来的，还是大自然的鬼斧神工所创造，但是我希望是后者，因为这样，祖国又能增加一块大自然馈赠的美丽瑰宝了。<br/>我们走呀走，不知不觉中来到了黄山42峰中最高的天都峰。妈妈为了锻炼我的意志，要我去爬天都峰，爬天都峰，可不是像你想像中的那么容易的，有很多人想上去，可都是半途而废，我做为一名小小登攀者，也不慌不忙，系好了绳索向上爬。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我一边爬，一边向上望，黄山的景物尽收眼底，云海一片又一片，越往高处爬，就越像紫烟一样的雾气向下飘来。使人感到清凉。不多时我就置身于一云海中，像仙境一般，无比舒畅，心旷神怡。在这美丽的天都峰上领略黄山的景色，对我来说还是第一次。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;黄山最有名的就要数大峰林了，群峰汇集在一起，形成了峰林，走进去像迷宫一般。这个群峰迷宫由三部分组成，一个是东峰，一个是南峰，还有一个是西峰。西峰里唯有一柱独峙耸立在峰林中间。极顶上面，长着一棵苍翠的松树，长年新绿，非常美。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我今天终于领略了黄山的优美景色，这真是一个心情愉快的五一劳动节。</p>', null, '1525663595', '1');
INSERT INTO `blog_detail` VALUES ('31', '3', '11', '西湖游记', '金风送爽，天高云淡，我们迎来了期盼已久的国庆七天假。金秋十月，也正是旅游的好时节，这不，我和妈妈一行人来到了风景如画的杭州西湖。', '<p><span style=\"font-family: 微软雅黑, &quot;MS Sans Serif&quot;, sans-serif; font-size: 13.3333px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: normal; widows: 1; background-color: rgb(255, 237, 196);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;金风送爽，天高云淡，我们迎来了期盼已久的国庆七天假。金秋十月，也正是旅游的好时节，这不，我和妈妈一行人来到了风景如画的杭州西湖。</span><br/><span style=\"font-family: 微软雅黑, &quot;MS Sans Serif&quot;, sans-serif; font-size: 13.3333px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: normal; widows: 1; background-color: rgb(255, 237, 196);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;驱车三个多小时就到达了这里，我们也无暇顾忌旅途的辛劳，直奔西湖，只见那里人山人海，我们好不容易才从摩肩接踵的人群中挤了过去，来到了西湖边上，看着波光粼粼的湖面，我心中无比激动，我可是头一次见到这样美的景色啊！自从去年学了《西湖》这篇文章，就一直憧憬着能畅游在这人间仙境！</span><br/><span style=\"font-family: 微软雅黑, &quot;MS Sans Serif&quot;, sans-serif; font-size: 13.3333px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: normal; widows: 1; background-color: rgb(255, 237, 196);\">我们一直向名扬四海的苏堤前进，岸旁的杨柳婆娑，清风拂面，好不惬意！湖水正随着风向我们扑来，“啪啪地”击打着岸边的岩石。这时坐在岸边的木椅上，静静地欣赏着眼前的美景，真是令人心旷神怡。抬头远望，远处的雷锋塔若隐若现！</span><br/><span style=\"font-family: 微软雅黑, &quot;MS Sans Serif&quot;, sans-serif; font-size: 13.3333px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: normal; widows: 1; background-color: rgb(255, 237, 196);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我们沿着靠近湖边的一条小路来到了雷锋塔前，接着又从楼梯走上了雷锋塔，经过辛苦的攀登，我们终于到了雷锋塔顶层，从塔上向下眺望，整个西湖尽收眼底，西湖两岸的苏堤和白堤遥相呼应，美丽极了！</span><br/><span style=\"font-family: 微软雅黑, &quot;MS Sans Serif&quot;, sans-serif; font-size: 13.3333px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: normal; widows: 1; background-color: rgb(255, 237, 196);\">西湖的美丽真是名不虚传，怪不得古今中外那么多文人为它写诗、题词呢！</span></p>', null, '1525663737', '1');
INSERT INTO `blog_detail` VALUES ('32', '3', '11', '北京之旅', '去年国庆假期，妈妈带我去了祖国的首都——北京', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;去年国庆假期，妈妈带我去了祖国的首都——北京。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;刚一下车，我第一眼就看到了雄伟、壮丽的天安门。只见天安门在太阳的照耀下，更显得气势雄伟、金碧辉煌！我来到天安门城楼下，伸手摸了摸那朱红色的墙壁，感受到了古代建筑的技艺高超。我们随着人流，进了太和殿。太和殿是皇帝大典、文武群臣早朝的地方，墙壁上、柱子上都雕刻着张牙舞爪的飞龙，气势非常庄严。突出了皇帝的绝对的威严和至高无上的权利。后面的中和殿、乾清宫都让我感受到了中国古代式建筑的风格，那种典雅、对称的格局，四合院式的后宫都象征着皇宫的森严、神秘。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;出了故宫我们又来到了八达岭，看到了古代最壮观的文化遗产——万里长城。我们踏上了灰色的方砖，感受到了民族的精神。我跟着妈妈拾阶而上，来到了第一个烽火台，瞭望四周，大山、树木尽收眼底，顿时感到祖国山河的辽阔、秀丽。我们奋力攀登，终于到达了最高点。这才真正让我懂得了，不到长城非好汉的道理。攀登了长征之后，我真正了解了中国古代劳动人民的勤劳、勇敢和智慧是无穷无尽的。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;后来我们又依次游览了颐和园、军事博物馆、鸟巢、水立方……<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这次北京之旅，让我更爱我们的祖国，更爱祖国的心脏——北京。</p>', null, '1525663842', '1');
INSERT INTO `blog_detail` VALUES ('33', '3', '11', '老君山之旅', '老君山，本名景室山，位于河南省洛阳市栾川县城东三千米处。是国家级自然保护区和世界地质公园', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;老君山，本名景室山，位于河南省洛阳市栾川县城东三千米处。是国家级自然保护区和世界地质公园，据传说，老子曾在此山中修炼过，所以被人们誉为道教主流全真派圣地。栾川人民依偎在高耸的老君山下，想一个个卫视一样忠诚地守护着这片土地……突然想起梅尧臣的一句诗“好峰随处改，幽径独行迷。”<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;比起众山来，老君上更是一个威武的将军。两千多米的海拔使它傲立于云雾间。说要真正去体会云雾缭绕，还得去天路——十里画屏。十里画屏是一条修在山腰旁边的栈道。走在上面，可谓是一步一景，一景一物。左边只有一条栅栏。把头伸下去俯视，只见连绵不断的山脉在我们脚下“跳舞”。绿叶和情操奇妙地让老君山变得更有生机、翠色欲流。当然，看如此壮观的美景也是要付出代价的。像我这种恐高症患者，没考进栅栏一步，就胆战心惊。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;老君山的山顶有一座庙，叫金顶观。据说是贞观年间建造的。山底下烈日炎炎，可一到山顶上却各位凉快。林建锟做了一个张嘴吃东西的动作，笑嘻嘻地跟我说：“你看，这些云真好吃呀，我都咬了好几口了！”山上远一点连面对面都看不清，有一层白色的“屏障”隔着我们。那可不是雾霾，而是但山里独特的一种雾气，既凉爽又舒服。<br/>转眼间已经黄昏，天色不早了，我们依依不舍地踏上了回酒店的道路。想起刚才那巧夺天工、精彩绝伦的景象，我想再一次赞叹老君山的美景。</p>', null, '1525663943', '1');
INSERT INTO `blog_detail` VALUES ('34', '3', '11', '云水瑶游玩', '在4月5日的那天，就跟朋友一起约好去云水谣玩', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在4月5日的那天，就跟朋友一起约好去云水谣玩，我们是下午的车，到云水谣已经是晚上7点多了，我们在网上定了名字叫“姐妹客栈”，觉得这个名字很好，因为自己刚好是跟朋友一起去玩的的，所以觉得这个客栈名字特别适合。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;到云水谣的时候，是客栈老板娘来接我们的，走进云水谣的时候，就是走进了一个非常宁静的山村一样，看着零零落落的房屋建筑，一路走过没有路灯，但是有听到水在哗哗的流，仿佛是一切在静止一样，只听到了溪水在流的声音，这股宁静显得这个山村很和谐很安宁，瞬间就喜欢上这个村子了，还有那么几只青蛙在叫，可能是在城市生活太久了，这种宁静是没有的，所以非常的喜欢。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;到客栈以后，老板娘很热情地带我们去吃饭，告诉我们哪家好吃哪家便宜，还跟我们说了旅游的路线，吃完饭我跟朋友就稍微低走了一小圈，感受这个山村的宁静美，因为天黑，所以我跟朋友打算回客栈，第二天一早就去游览，所以回到客栈我跟朋友就洗洗就睡了。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6号的早上，打开窗户一股清新的味道扑鼻而来，看着窗外绿油油的树（不知道叫什么名字），觉得这个山村真美，透过窗户可以看到对面的土楼，土楼也是云水谣的一个特色，这种很原始的建筑已经很少见到了。随之，就跟朋友快速的起床收拾，就出门了。</p><p>第一个看到的景点就是和贵楼，一进去就有种回到古代的建筑一样，有那种土制的，还有木质的房子，一进去是几层的那种，有种电视上的包租婆的感觉，还有两个井，听隔壁的导游说是阴阳井，连名字都取得这么文艺。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;接下来我们就去云水谣的核心景区游玩了，就是沿着溪边走，经过一座桥的时候，在桥上看着整个村庄，就觉得这个古色古香的山村真的好美，就在想要是自己住在这个小山村该多好啊，觉得这个山村的人都不用有什么烦心事，在这么美这么安静这么干净的山村生活真的很难有什么事情可以打扰到自己的心。也听说这个村子的人都比较长寿，有种与世无争的感觉。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;远处望去，还可以看到梯田，往里面走，还能看见很多榕树，印象最深的就是有一颗榕树的年龄已经300多岁了，很大，估计要三个手臂很长的大人才可以抱到呢，看到榕树的枝干繁多，叶子是嫩嫩的，在小溪边矗立着，跟旁边的建筑真是形成一幅很美的画。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在云水谣跟朋友拍了很多照片，觉得怎么拍都难排除云水谣的美，觉得是一定要到现场你才可以感受到那种美那种宁静，而且建议大家在这个季节去最好，最后是在那种阴天去看，这样子才能更加显示出云水谣是一幅很美很美的画。拍出来的照片发到qq和微信上，很多朋友都说好看，都想让我下去带她们一起去玩的。这一次的云水谣的游玩真是很开心，没有让人感到失望，还想下次再去呢。之前去其他的景区游玩，去完就不想再去第二次，这次去云水谣，还想再去呢。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;云水谣真的是很美呢，那里的人那里的水那里的路那里的一切都很美！</p><p><br/></p>', null, '1525664051', '1');
INSERT INTO `blog_detail` VALUES ('38', '3', '11', '游八国风情园', '整个寒假我不是奔波在各个补习班之间，就是埋头于题海之中，为了让我放松放松，妈妈决定带我和姐姐一起去八国风情园玩一天', '<p>小考临近，我的学习任务之重可想而知，整个寒假我不是奔波在各个补习班之间，就是埋头于题海之中，为了让我放松放松，妈妈决定带我和姐姐一起去八国风情园玩一天。</p><p>一大早，我们便乘车前往八国风情园，路上，听妈妈的朋友介绍，八国风情园的风景秀丽，冬天的景致更是有一种独特的韵味。</p><p>车风情园门前停了下来，一进入园区我首先感受到的是景区热情待客的氛围，最引人注目的要数八个国家的国旗了，国旗迎风招展，甚是气派，矗立在大门口的几只高大威猛的金象，样子看起来憨厚可爱，再往里走就能看到一片如翡翠般的草坪，草坪前立着一块大石头，上面刻着“欢迎您”三个大字，园区的经理迎了上来，他热情地给我们介绍起风情园的建园初衷和园区的规划，在妈妈朋友的带领下，我开始畅游园区的景点。我在各个极具特色的景点中，领略着异国风情。</p><p>参观完景点，姐姐和我一块比赛爬山，我率先登上茶山的最高点，站在高处向下眺望，被修剪的整整齐齐的茶树，像一排排列队的士兵，昂首挺胸占据着整个山坡，远远望去，绿油油的一片，像是在绿色的海洋里畅游，而这其中最醒目的应该是那一个屹立在山腰间的瓷瓦大茶壶，古铜色的以七十五度角倾斜，显得那么雄伟壮观，壶嘴还在哗哗地流着水，游人们争相去品尝壶嘴流出来的水，水是那样的甘甜可口。</p><p>逛了一个上午，我们都觉得有些累了，妈妈便带着我们去越南茶餐厅，越南茶餐厅由竹子建造而成，具有浓厚的越南民居风格，非常别致。螺旋形的屋顶点点的光斑透进屋里，丝丝凉风轻拂脸庞，坐茶寮内品茶别有一番韵味，茶是用山泉水泡制的，非常甘甜，品完茶，我们又往东南亚餐厅，品尝东南亚美食，一道道极具东南亚特色的美食，让我们大快朵颐。其中最美味的要数那道咖喱烤鸡了，加了的咖喱腌制的烤允的味道真的很特别，在咖喱中加入柔滑的椰浆使鸡的味道既迷人又富有层次感，咖喱鸡刚端上桌就被一扫而光了。</p><p>欢乐的时光总是过得特别快，天色渐晚，我们该回家了，八国风情园一日游，让我放松了心情，时间虽短，但风情园中极具东南亚特色的景致，给我留下了深刻的印象。</p><p><br/></p>', null, '1525664285', '1');
INSERT INTO `blog_detail` VALUES ('36', '3', '11', '香港迪士尼乐园', '香港的迪士尼乐园是举世闻名的大型主题乐园之一，那里古木参天、鸟语花香，置身其间，仿佛进入了童话世界里一般', '<p>香港的迪士尼乐园是举世闻名的大型主题乐园之一，那里古木参天、鸟语花香，置身其间，仿佛进入了童话世界里一般。在那里，最吸引我眼球的是各种大型的游乐设施，有“疯帽子旋转杯”，有“小飞象”，有“森林探险”……可谓应有尽有。</p><p>在游乐场里，最好玩的要数“飞越太空山”了。一开始，太空车的车速比较慢，我的心里挺放松的。不一会儿，太空车就真正进入了漆黑一片的“宇宙空间”。此时，车速渐渐地快了起来，我想：谁说这个游戏好玩，一点也不刺激！谁知，这个念头刚从我脑海里闪过，它就来了个二百三十度的大转弯，随后又来了个“刀片超车”加急速坠落，我一下子惊呆了！耳边闪过“轰隆隆”的雷声、太空车在轨道上飞速行驶时发出的金属的“咔咔咔”的摩擦声、呼啸的风声和人们的尖叫声……妈妈铁铁地握住我的手，我自己则低着头，双手紧紧地拽着保险杆，不敢有丝毫的懈怠，生怕被甩出去。就这样，太空车在不停地改变着方向和倾斜的角度，我们在“星球”与“闪电”之间穿梭着……时光易逝，大约经历了二、三分钟，一次惊心动魄的“游程”终于结束了。当从太空车上下来的时候，嘿嘿，我的大腿还在不停地颤抖哩。</p><p>“森林探险”也不赖，它是一种游船项目，十分刺激。船缓缓地开了。突然，一道水柱直面向我们喷来，我们被吓了一跳，此时一头“小象”出现在我们的面前，原来是“小象”在和我们逗着玩呢！我们的船继续向前行进，不一会儿，我们进入了一个原始的地方，“乌鸦”时不时哇哇地叫着，让人感觉很凄凉。忽然，一个黑影从我眼前闪过，我定睛一看，原来是一个“野人”，他正在打猎，并没有伤害我们的意思。船又行驶了一段时间，忽然，我们的船被卡在岩石上一动不动了，随即，我听到了大火燃烧的声音，我扭头向右边一看，哇！大火正贴着水面向我们袭来，船四周的水面变得滚烫滚烫，水翻滚着，不停地吐着气泡。我们被逼得只得向左边靠。但是天无“绝人”之路，救星---“水”哗的一下从岩石洞里喷涌而出，伴随着浓浓的水汽，一会儿，大火被浇灭了，没等吓懵的人们回过神来，船倒了几下又开动了起来，真是虚惊一场！就这样，快乐的游程又结束了</p><p><br/></p>', null, '1525664176', '1');
INSERT INTO `blog_detail` VALUES ('37', '3', '11', '博物馆游记', '在一个晴空万里星期五，老师带我们京江晚报小记者到镇江市博物馆访问', '<p>在一个晴空万里星期五，老师带我们京江晚报小记者到镇江市博物馆访问。</p><p>过了石阶，走进大厅。我们就被大厅的富丽堂皇给吸引住了：四根大理石柱矗立在大殿中，天花板上灯光耀眼。</p><p>此时杨文倩似乎发现了什么，我们跟着她走了过去，嘿!原来是一个大大的触摸屏，出于好奇的周月，用手轻轻地碰了一下显示屏，竟弹出了“连连看”的页面，我们便蜂拥而上，玩得不亦乐乎。</p><p>这时，老师带着讲解员姐姐来给我们介绍，这位名叫高璐的姐姐面带微笑，态度亲切，我们不由的喜欢上了她。她的名字让我不禁想起了我们的前一个英语老师高璐。其他两个讲解员姐姐和她长得一样 “国色天香”。我鼓足了勇气，向其中一位姐姐提问道：姐姐您好!据我们了解，你们是一个非常团结优秀的集体，那么在平时生活中，你们是如何做到团结互助的?那位姐姐朝我笑了笑，娓娓动听地 向我阐述：说到团结，最重要的就是要分工合作，像我们这样每天都会有一个值班组长，她会规定我们每人去讲哪一场，如果去争的话，还有什么团结可言呢?……姐姐用她那如同“大珠小珠落玉盘” 银铃般动听的声音，告诉我她们是如何做到团结的，我一直盯着她那幅迷人的容颜，此时姐姐已经化为散发着幽香的兰花，永远盛开在我心中。</p><p>接着，高姐姐带着我们去参观春秋、西周时期的青铜器以及奇美珍藏展。</p><p>奇美珍藏展里都是19——20世纪里的珍贵雕塑和画像。其中令我们印象最深刻的是意大利艺术家皮耶多的作品，一个小男孩正在祷告，他穿着睡袍，低着头，满脸委屈，不知道发生了什么。当我们看到这尊 雕像时，笑得人仰马翻，只有王欣玥正出神地看一幅画，我也凑了上去，这幅画叫《爱神的菜单》，图中一位面带笑容，体态圆润的女贩正被三个代表爱情的小天使包围，淘气顽皮的小天使们为了能吃 到美味的烤马铃薯而使出浑身解数，而挂在枝头的招牌正是“爱神的菜单”，我陶醉了，恍如沉浸在画中的世界，三个小天使在我的身边飞呀飞……我立即爱上了这幅画。</p><p>要回去了，我们依依不舍地向讲解员姐姐们告别，在回校途中，我的心依旧在“爱神的菜单”里遨游，我爱“爱神的菜单”;爱被迫祷告的小男孩;更爱家乡的历史，爱家乡的沧桑……</p><p><br/></p>', null, '1525664221', '1');
INSERT INTO `blog_detail` VALUES ('39', '3', '11', '水立方游记', '今天，秋高气爽，晴空万里。同学们都早早地来到学校，因为今天是个特别的日子', '<p>今天，秋高气爽，晴空万里。同学们都早早地来到学校，因为今天是个特别的日子——中心小学一年一度地秋游活动。全体师生在操场上集合。就这样，秋游拉开了序幕。</p><p>一路上，我们欢声笑语、津津乐道。经过一小时的颠簸，终于到达目的地。这里的空气真新鲜，鸟儿向我们问好，花儿对我们频频点头，树木向我们招手，一切都好像因为我们的到来而变得生机勃勃的。</p><p>我们随着导游地领导下，走进了海立方。首先映入眼帘的是一个椭圆形鱼缸，里面有神仙鱼、魔鬼鱼、小鲨鱼、比目鱼等不计其数。然后，我们又上了二楼。</p><p>鹦鹉表演开始了，首先一位神秘的嘉宾——滑稽搞笑的小丑登场了，他欢快地向我们问好，并且与我们互动，给我们发礼物。过了一会儿，“主角”上场了，它是一只来自澳大利亚的鹦鹉，叫“小葵花”。它向我们展示了它的决技——球上行走。“小葵花”虽然外表娇小，但是它也是个“大力士”呢！</p><p>这次海立方之旅在同学们的欢声笑语中落下了帷幕。这次活动既开阔了视野，又增长了知识，我下次还要来！</p><p><br/></p>', null, '1525664341', '1');
INSERT INTO `blog_detail` VALUES ('40', '3', '11', '游长城', '北京是中国的首都，是历史文化名都。之前只能在书本上或听人们讲长城多么雄伟、壮观，所以我一直想登长城。', '<p>北京是中国的首都，是历史文化名都。之前只能在书本上或听人们讲长城多么雄伟、壮观，所以我一直想登长城。</p><p>在这个暑假，我参加了“探索帝都行走坝上，我是草原小勇士”夏令营，目睹长城的风采。</p><p>长城有几千年的历史。远看，长城像一条巨龙盘绕在崇山峻岭之间。近看，长城高得直上云霄。我们开始登长城了，长城全部都是用石头砌成的，当人们登上长城的时候，望着气势磅礴的万里长城，就会想到秦始皇让劳动人们把一块块这么重的石头背上山，是多么不容易啊！长城这么长，石头又那么重，当时又没有机械化，全是劳动人们用肓背，用手抬把一块块石头运上山，不仅让人感叹，劳动人们好伟大啊！</p><p>长城很长还很宽，可以有十个人左右并排行走，长城不但宽，还很陡，上阶梯必须抓住栏杆。走着走着，我已经满头大汗了，开始不想登长城了，但我想到了一句话：“不到长城非好汉”。休息了一会儿，我鼓起勇气，继续向上攀登，终于登顶了，我兴奋地跳了起来，心情无比激动。</p><p>这次我终于亲眼看见了万里长城的雄伟、壮观，实现了愿望，以后有机会我还要来登长城。</p><p><br/></p>', null, '1525664397', '1');

-- ----------------------------
-- Table structure for blog_user
-- ----------------------------
DROP TABLE IF EXISTS `blog_user`;
CREATE TABLE `blog_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(10) DEFAULT NULL,
  `password` int(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `advanced` int(1) DEFAULT '0',
  `login_last_time` int(10) DEFAULT NULL,
  `login_times` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_user
-- ----------------------------
INSERT INTO `blog_user` VALUES ('1', 'gfw', '123123', '1026061361@qq.com', '0', '1526712022', '18', '1');
INSERT INTO `blog_user` VALUES ('2', 'lmc', '123123', '2473238658@qq.com', '0', '1521288658', '4', '1');
INSERT INTO `blog_user` VALUES ('3', 'Emrys', '123123', '1148365540@qq.com', '0', '1526712078', '4', '1');
INSERT INTO `blog_user` VALUES ('12', 'ZhouYF', '123123', '1026061361@qq.com', '0', '1525685254', '2', '1');
INSERT INTO `blog_user` VALUES ('11', 'HongZW', '123123', '1026061361@qq.com', '0', '1525663413', '1', '1');
INSERT INTO `blog_user` VALUES ('13', 'qwert', '123123', '123123@qq.com', '0', '1526802852', '1', '1');
