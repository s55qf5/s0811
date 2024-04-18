-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        8.0.32 - MySQL Community Server - GPL
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 导出 s0811 的数据库结构
CREATE DATABASE IF NOT EXISTS `s0811` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `s0811`;

-- 导出  表 s0811.address 结构
DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710147145213 DEFAULT CHARSET=utf8mb3 COMMENT='地址';

-- 正在导出表  s0811.address 的数据：~1 rows (大约)
REPLACE INTO `address` (`id`, `addtime`, `userid`, `address`, `name`, `phone`, `isdefault`) VALUES
	(1710147145212, '2024-03-11 08:52:25', 1710147003038, '山东', '孙', '12345678912', '是');

-- 导出  表 s0811.cart 结构
DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712720458025 DEFAULT CHARSET=utf8mb3 COMMENT='购物车表';

-- 正在导出表  s0811.cart 的数据：~2 rows (大约)
REPLACE INTO `cart` (`id`, `addtime`, `tablename`, `userid`, `goodid`, `goodname`, `picture`, `buynumber`, `price`, `discountprice`) VALUES
	(1705025242458, '2024-01-12 02:07:22', 'shangpinxinxi', 11, 42, '商品名称2', 'http://localhost:8080/feiwuzhiwenhua/upload/1616074525410.jpg', 2, 99.9, 0);

-- 导出  表 s0811.chat 结构
DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `adminid` bigint DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710147343453 DEFAULT CHARSET=utf8mb3 COMMENT='客服聊天表';

-- 正在导出表  s0811.chat 的数据：~1 rows (大约)
REPLACE INTO `chat` (`id`, `addtime`, `userid`, `adminid`, `ask`, `reply`, `isreply`) VALUES
	(1710147343452, '2024-03-11 08:55:42', 1710147003038, NULL, '摩西摩西', NULL, 1);

-- 导出  表 s0811.config 结构
DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

-- 正在导出表  s0811.config 的数据：~6 rows (大约)
REPLACE INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/feiwuzhiwenhua/upload/1713179180672.jpg'),
	(2, 'picture2', 'http://localhost:8080/feiwuzhiwenhua/upload/1711284680937.jpg'),
	(3, 'picture3', 'http://localhost:8080/feiwuzhiwenhua/upload/1711284703838.png'),
	(6, 'homepage', 'http://localhost:8080/feiwuzhiwenhua/upload/1711284716570.jpg'),
	(7, 'picture4', 'http://localhost:8080/feiwuzhiwenhua/upload/1711284729192.jpg');

-- 导出  表 s0811.dictionary 结构
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

-- 正在导出表  s0811.dictionary 的数据：~2 rows (大约)
REPLACE INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `create_time`) VALUES
	(1, 'sf_types', '是否同意', 2, '是', NULL, '2024-02-25 03:41:54'),
	(2, 'sf_types', '是否同意', 1, '否', NULL, '2024-02-25 03:41:54');

-- 导出  表 s0811.discussshangpinxinxi 结构
DROP TABLE IF EXISTS `discussshangpinxinxi`;
CREATE TABLE IF NOT EXISTS `discussshangpinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710927153717 DEFAULT CHARSET=utf8mb3 COMMENT='商品信息评论表';

-- 正在导出表  s0811.discussshangpinxinxi 的数据：~7 rows (大约)
REPLACE INTO `discussshangpinxinxi` (`id`, `addtime`, `refid`, `userid`, `content`, `reply`) VALUES
	(1710228036333, '2024-03-12 07:20:35', 41, 1710147003038, '超可爱！', '感谢！'),
	(1710228980525, '2024-03-12 07:36:20', 42, 1710147003038, '惟妙惟肖！！！', NULL),
	(1710232629691, '2024-03-12 08:37:08', 46, 1710147003038, '可爱！', NULL),
	(1710923289624, '2024-03-20 08:28:08', 44, 1710147003038, '美死了', NULL),
	(1710924534765, '2024-03-20 08:48:54', 42, 1710919356507, '制作精良', NULL),
	(1710924579945, '2024-03-20 08:49:39', 44, 1710919356507, '制作精良', NULL),
	(1710927153716, '2024-03-20 09:32:33', 46, 1710919356507, '拜一下！运气加成！', NULL);

-- 导出  表 s0811.news 结构
DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710217891703 DEFAULT CHARSET=utf8mb3 COMMENT='商品资讯';

-- 正在导出表  s0811.news 的数据：~11 rows (大约)
REPLACE INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(1710213021314, '2024-03-12 03:10:21', '探寻中国年画——杨家埠木板年画', '杨家埠木版年画是一种流传于山东省潍坊市杨家埠的传统民间版画。其制作方法简便，工艺精湛，色彩鲜艳，内容丰富。每年春节年画题材都会更换一次，许多新思想、新事物出现之后，马上就能够在年画中反映出来，对社会的进步起到一定的促进作用。另外，杨家埠木版年画还间接地记录下了中国民居和民间社会生活的情况，对于中国古代文化的研究有一定的参考价值。杨家埠木版年画乡土气息浓厚，制作工艺别具特色，与天津杨柳青、苏州桃花坞并称中国木刻版画三大产地。', 'http://localhost:8080/feiwuzhiwenhua/upload/1711284780785.jpg', '<p>杨家埠木版年画按照农民的思想要求、风俗信仰、审美观点、生活需要逐步发展完善，形成了自己古朴雅拙、简明鲜艳的风格。它植根于民间，装饰于节日，长期以来起着丰富人民精神生活，反映人民美好愿望，美化人民节日环境的作用。</p><p><br></p><p>杨家埠木版年画的艺术特征为：不受自然的约束，以丰富的想象力，概括、浪漫主义、象征和寓意的手法表现主题；构图完整、饱满、匀称；造型夸张、简练、粗犷、朴实。制作年画时，艺人首先用柳枝木炭条、香灰作画，名为“朽稿”，在此基础上再完成正稿，描出线稿，分别雕出线版和色版，手工印刷。年画印出后，再手工补上各种颜色并进行简单描绘，使其更加自然生动。</p><p><br></p><p><span style="color: rgb(51, 51, 51);">杨家埠木版年画按张贴部位可以分为：</span>	<a href="https://baike.baidu.com/item/%E9%97%A8%E7%A5%9E/27045?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">门神</a>	<span style="color: rgb(51, 51, 51);">类、炕头画类、窗帘画类、中堂画类、实用</span>	<a href="https://baike.baidu.com/item/%E5%B9%B4%E7%94%BB/317478?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">年画</a>	<span style="color: rgb(51, 51, 51);">、条屏画类等。按题材分类，有祈福迎祥年画、辟邪保安的神像、吉祥年画、风俗年画、生产劳动题材年画、小说戏出和神话传说年画、山水花卉、珍禽瑞兽年画、时事幽默、百戏娱乐的年画等等。</span></p><p><br></p><p><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711284774125.jpg"></p><p><br></p><p>2006年5月20日，杨家埠木版年画经国务院批准列入第一批国家级非物质文化遗产名录。</p><p><br></p><p>2007年6月5日，经国家文化部确定，山东省潍坊市的杨洛书为该文化遗产项目代表性传承人，并被列入第一批国家级非物质文化遗产项目226名代表性传承人名单。</p><p><br></p><p>杨家埠年制作的木版年画高达2000余万幅，远销全国各地与世界100多个国家和地区。在山东潍坊千里民俗旅游线上，杨家埠成了重要一站。在那里，人们可以欣赏到100多套年画佳品，可目睹自明代以后的各种各样的年画制作工具、原版，还可现场观看充满神秘色彩的年画制作工艺。</p><p><br></p><p>但是，杨家埠木版年画也有可忧之处。一是年画题材缺乏新意，二是人才匮乏，除几位在世的老艺人，能系统并真正掌握木版年画技艺和精髓的接班人，几乎没有，而这将直接影响杨家埠木版年画的发展和生存。因此，民间文化抢救工程应尽快启动，为杨家埠木版年画的保护和发展创造有利环境。</p>'),
	(1710213748302, '2024-03-12 03:22:28', '探寻岭南古韵——粤剧', '粤剧（Cantonese Opera），又称广府戏、广东大戏，流行于珠江三角洲等广府民系聚居地，是广东及广西粤方言区最大的剧种。发源于佛山，以粤方言演唱，汉族传统戏曲之一、人类非物质文化遗产代表作。粤剧形成于广东，后传入广西、香港、澳门、台湾，在东南亚和美洲各国有华侨居住的地方均有粤剧演出。随着粤语华人的移民及其对粤剧的喜爱和传唱，被传播到美国、加拿大、英国、东南亚等广府华侨聚集地。', 'http://localhost:8080/feiwuzhiwenhua/upload/1711284823378.jpg', '<p>粤剧源自<a href="https://baike.baidu.com/item/%E5%8D%97%E6%88%8F/1605203?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">南戏</a>，是以明清时期流入广东的<a href="https://baike.baidu.com/item/%E6%B5%B7%E7%9B%90%E8%85%94/8506498?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">海盐腔</a>、<a href="https://baike.baidu.com/item/%E5%BC%8B%E9%98%B3%E8%85%94/1246861?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">弋阳腔</a>、<a href="https://baike.baidu.com/item/%E6%98%86%E5%B1%B1%E8%85%94/8506517?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">昆山腔</a>、<a href="https://baike.baidu.com/item/%E6%A2%86%E5%AD%90%E8%85%94/839684?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">梆子腔</a>等诸腔为基础，并吸收珠江三角洲的民间音乐所形成。清代咸丰、道光年间，广东本地班在演出中以“梆簧”（西皮、二簧）作为基本曲调，兼收高腔、昆腔及广东民间乐曲和时调，用“戏棚官话”为基本语言，间杂以粤方言，逐渐形成粤剧。1912年前后，粤剧演出基本上已改用广州方言，表演体系日趋完善，开始在梆簧中穿插民歌小调，并改假声演唱为“平喉”演唱<span style="color: rgb(51, 102, 204);">&nbsp;。</span></p><p><br></p><p>2003年开始，粤港澳三地政府将每年11月最后的一个星期日定为<a href="https://baike.baidu.com/item/%E7%B2%A4%E5%89%A7%E6%97%A5/49796169?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">粤剧日</a>，藉以扩阔观众层面，达到推广及保存粤剧的目的。2006年5月20日，列入第一批<a href="https://baike.baidu.com/item/%E5%9B%BD%E5%AE%B6%E7%BA%A7%E9%9D%9E%E7%89%A9%E8%B4%A8%E6%96%87%E5%8C%96%E9%81%97%E4%BA%A7%E5%90%8D%E5%BD%95/2490096?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">国家级非物质文化遗产名录</a>，编号Ⅳ-36<span style="color: rgb(51, 102, 204);">&nbsp;</span>。2009年10月2日，由广东、香港和澳门联合申报，粤剧被列为<a href="https://baike.baidu.com/item/%E8%81%94%E5%90%88%E5%9B%BD%E6%95%99%E7%A7%91%E6%96%87%E7%BB%84%E7%BB%87/265071?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">联合国教科文组织</a>人类<a href="https://baike.baidu.com/item/%E9%9D%9E%E7%89%A9%E8%B4%A8%E6%96%87%E5%8C%96%E9%81%97%E4%BA%A7/271489?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">非物质文化遗产</a>代表作名录。</p><p><br></p><p><span style="color: rgb(51, 51, 51);">粤剧演员的表演工艺分为四大基本类别——唱、做、念、打。</span></p><p><br></p><p><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711284847130.jpg"></p><p><br></p><p><span style="color: rgb(51, 51, 51);">传统粤剧的基础表演程式，如“拉山”“云手”等动作，都有自己的特点，保留着古拙、刚劲的艺术风格。在长期舞台艺术实践中，前辈艺人创造了“大架”“十八罗汉架”“五更架”“锣边大滚花”“七槌头”等表演程式组合，经过不断的筛选、积淀和丰富，形成了鲜明的粤剧特点。随着粤剧与京剧等剧种的艺术交流渐多，粤剧以海纳百川的胸怀，不断地吸收、借鉴、学习其它艺术形式为己所用，形成驳杂、多彩、全面的程式特点。</span></p><p><br></p><p><span style="color: rgb(51, 51, 51);">粤剧的传统剧目早期主要有《一捧雪》《二度梅》《三官堂》《四进士》《五登科》等所谓“江湖十八本”，后又出现《黄花山》《西河会》《双结缘》《雪重冤》等“新江湖十八本”和《苏武牧羊》《黛玉葬花》等“大排场十八本”。其他代表性剧目还有《白金龙》《火烧阿房宫》《平贵别窑》《宝莲灯》《罗成写书》《凤仪亭》等。</span></p><p><br></p><p>粤剧广泛吸收<a href="https://baike.baidu.com/item/%E5%B9%BF%E4%B8%9C%E9%9F%B3%E4%B9%90/366096?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">广东音乐</a>、<a href="https://baike.baidu.com/item/%E5%B9%BF%E7%BB%A3/1127631?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">广绣</a>、<a href="https://baike.baidu.com/item/%E7%89%99%E9%9B%95/765074?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">牙雕</a>、<a href="https://baike.baidu.com/item/%E9%99%B6%E7%93%B7/2681?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">陶瓷</a>、<a href="https://baike.baidu.com/item/%E7%81%B0%E5%A1%91/1269488?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">灰塑</a>等地方艺术形式，充分体现了<a href="https://baike.baidu.com/item/%E5%B9%BF%E5%BA%9C%E6%B0%91%E7%B3%BB/11019927?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">广府民系</a>群落的地域文化传统，辐射范围遍及全球各地，在世界华人中具有文化凝聚力<span style="color: rgb(51, 102, 204);">&nbsp;</span>。</p><p><br></p><p>粤剧善于向其他剧种和时尚艺术学习，因而表现出高度的开放性，成为时尚潮流的剧种之一。无论其开放灵活的表演，还是丰富优美的唱腔、舞美，都显现出敢立戏剧潮头的先锋姿态。正因为如此，粤剧的戏剧风格既有传统戏剧的风采，又轻快流畅、灵活善变。</p>'),
	(1710214456173, '2024-03-12 03:34:15', '瞬息之间展现内心百态——川剧变脸', '川剧是传统戏曲剧种之一，流行于四川东中部、重庆及贵州、云南部分地区。川剧变脸是川剧表演的特技之一，用于揭示剧中人物的内心及思想感情的变化，即把不可见、不可感的抽象的情绪和心理状态变成可见、可感的具体形象——脸谱。川剧变脸是运用在川剧艺术中塑造人物的一种特技。是揭示剧中人物内心思想感情的一种浪漫主义手法。', 'http://localhost:8080/feiwuzhiwenhua/upload/1711284862501.jpg', '<p>变脸之于川剧，有如喷火之于秦腔，皆属招牌路数、看家绝技！</p><p><br></p><p>说起变脸，有必要先到川剧那里去溯一溯源头。话说清<a href="https://baike.baidu.com/item/%E4%B9%BE%E9%9A%86/129924?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">乾隆</a>、嘉庆年间，每至逢年过节之际，在四川乡镇村落码头处林立的庙堂都会搭起戏台以作庆典，久而久之，川剧就在街头巷尾之中渐成气候。清代“两湖填四川”，为蜀地的文化带来了诸多新元素，昆、高、胡、弹、灯，诸腔戏班汇集入<a href="https://baike.baidu.com/item/%E5%B7%B4%E8%9C%80/18909?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">巴蜀</a>各大城中的酒肆街坊之中，生、旦、净、末、丑同亮相于<a href="https://baike.baidu.com/item/%E8%8C%B6%E9%A6%86/32287?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">茶馆</a>的小戏台之上，日久逐渐形成共同的风格，清末时统称"川戏"，后才改称“川剧”。</p><p><br></p><p>相较于川剧艺术本身的渊源和博大，变脸的技艺成形则还要归属于二十世纪。在这期间，变脸在戏班的对台戏中不断摸索、演变、精化，渐渐成为川剧的一大特色。川剧的悲剧极有特色，喜剧独树一帜，凡是情感波折、内心激变之处，变脸皆有用武之地，它以其怪诞狰狞的面相变化表现出人物内心不可名状之律动，作为一种对人物内心非常独特的表现手法，无疑大大增加了川剧本身的表现力，每及名角表演变脸，就常常酿成爆棚之患。可见，老百姓对这种极端好看的耍活儿是打心眼地认可的。</p><p><br></p><p>川剧的变脸<a href="https://baike.baidu.com/item/%E7%BB%9D%E6%8A%80/2161220?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">绝技</a>，让人匪夷所思：一张脸刹那间可以变幻出十四张之多，真是值得惊叹的事情。而鲁迅先生横眉冷对的“一阔脸就变”，同样让观众惊诧万分。</p><p><br></p><p><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711284874399.jpg"></p><p><br></p><p>“变脸”之一种：曾经穷途末路，苦不堪言，一朝得势，飞黄腾达，则再难正眼瞧人，朋友熟人不相往来，看见也不相招呼，连走路也衣角翻飞，拂人于咫尺。</p><p><br></p><p>“变脸”之二种：现实社会，人们可以经常看到达官贵人驾乘高档轿车，出入高档别墅、会所，衣香鬓影地频繁参加所谓的交际、娱乐，一副纸醉金迷又趾高气扬的派头，而一旦“双规”，一旦失势，就又耷拉脑袋，满脸无奈与悔恨，教人视之哭笑不得，顿感滑稽之极，又深为痛恨！</p><p><br></p><p>“变脸”之三种：认识一个搞工程建修的经理，前几年衣冠楚楚，脸面光鲜，不想新近碰倒却是大变其样，一副委琐潦倒之象，连说话也底气不足，嗫嗫嚅嚅，让人顿生怜惜之情。一问才知是因为外出包工被骗30余万，银行和个人借款不能到期归还所致。</p><p><br></p><p>“变脸”之四种：而丑陋的女人，不是通过自身素质的培养，以增强可爱的程度，而是借助现代的整容技术美化成一张精致漂亮的脸，却居然可以为她换来金钱甚至前途，实在是奇妙得很！</p><p><br></p><p><span style="color: rgb(51, 51, 51);">川剧变脸是运用在</span>	<a href="https://baike.baidu.com/item/%E5%B7%9D%E5%89%A7/0?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">川剧</a>	<span style="color: rgb(51, 51, 51);">艺术中塑造人物的一种特技。是揭示剧中人物内心思想感情的一种浪漫主义手法。相传“变脸”是古代人类面对凶猛的野兽，为了生存把自己脸部用不同的方式勾画出不同形态，以吓唬入侵的野兽。川剧把“变脸”搬上舞台，用绝妙的技巧使它成为一门独特的艺术。</span></p>'),
	(1710214984782, '2024-03-12 03:43:03', '剪纸艺术', '中国剪纸是一种用剪刀或刻刀在纸上剪刻花纹，用于装点生活或配合其他民俗活动的民间艺术。在中国，剪纸具有广泛的群众基础，交融于各族人民的社会生活，是各种民俗活动的重要组成部分。其传承赓续的视觉形象和造型格式，蕴涵了丰富的文化历史信息，表达了广大民众的社会认知、道德观念、实践经验、生活理想和审美情趣，具有认知、教化、表意、抒情、娱乐、交往等多重社会价值。', 'http://localhost:8080/feiwuzhiwenhua/upload/1711284887697.jpg', '<p><span style="color: rgb(51, 51, 51);">民间剪纸善于把多种物象组合在一起，并产生出理想中的美好结果。无论用一个或多个形象组合，皆是“以象寓意”“以意构象”来造型，而不是根据客观的自然形态来造型，同时，又善于用比兴的手法创造出来多种吉祥物，把约定成俗的形象组合起来表达自己的心理。追求吉祥的喻意成为意象组合的最终目的之一。地域的封闭和文化的局限，以及自然灾害等逆境的侵扰，激发了人们对美满幸福生活的渴求。人们祈求丰衣足食、人丁兴旺、健康长寿、万事如意，这种朴素的愿望，便借托剪纸传达出来。</span></p><p><br></p><p><span style="color: rgb(51, 51, 51);">在民间剪纸中有许多反映生产生活的画面，这些作品有着一个最大的相同点，就是对主体进行的夸大，大大的鱼、大大的辣椒、大大的蚕、大大的谷粒等，通过剪纸，人们虚构了美好的形象；来</span>	<a href="https://baike.baidu.com/item/%E6%85%B0%E8%97%89/8914297?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">慰藉</a>	<span style="color: rgb(51, 51, 51);">自己的心灵，来张扬人征服自然的伟大创造力，以期建立自己的理想世界，并肯定人的力量，鼓舞人们继续奋斗的勇气。</span></p><p><br></p><p><span style="color: rgb(25, 27, 31);">据历史记载，剪纸的起源可以追溯到汉代。在古代，剪纸被用于庆祝节日、婚庆喜事、祭祀活动等，传统的剪纸作品多以民间故事、传说、风俗习惯等为主题，具有鲜明的地域文化特色。</span></p><p><br></p><p>中国传统剪纸艺术的传承和发展是一个不断演变的过程。在中国古代，剪纸艺术被广泛传承和发展，不同地区和民族都有各自独特的风格和形式。</p><p><br></p><p>在现代，随着科技的发展和时代的变迁，剪纸艺术也得到了新的发展和创新，例如数字剪纸、激光剪纸等新兴形式的出现。</p><p><br></p><p><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711284905807.jpg"></p><p><br></p><p>剪纸艺术作为中国传统民间文化的一种形式，承载着丰富的文化内涵和传统价值。剪纸艺术的创作需要丰富的想象力、细致的手工技巧和深厚的文化底蕴，它体现了中国人民的智慧、勤劳和创造力。</p>'),
	(1710216008427, '2024-03-12 04:00:07', '内蒙古人的自然心声——呼麦', '呼麦（图瓦语：Хөөмей；蒙古语：Хөөмий，意为“咽喉”），又称喉音唱法、双声唱法、多声唱法或浩林潮尔。古游牧民族在不同社会场合如盛大的仪式，或家庭节日庆祝中演唱呼麦。放牧的途中或是在蒙古包中哄婴儿入睡也会演唱呼麦。\n呼麦是阿尔泰山原住民族创造的一种神奇的歌唱艺术，是一个歌手纯粹用自己的发声器官，在同一时间里唱出两个及以上声部。呼麦声部关系的基本结构为一个持续低音和它上面流动的旋律相结合。又可以分为“泛音呼麦”、“震音呼麦”、“复合呼麦”等。在中国各民族民歌中，它是独一无二的。', 'http://localhost:8080/feiwuzhiwenhua/upload/1711284934192.jpg', '<p>呼麦是一种源于蒙古西部阿尔泰山脉的一种歌唱艺术：一个歌手纯粹用自己的发声器官，在同一时间里唱出两个声部。在发出持续基础低音的同时，歌手演唱出和谐的旋律。</p><p><br></p><p>呼麦唱法是在特殊的地域条件和生产、生活方式下产生的，其发声方法、声音特色比较罕见，不同于举世闻名的<a href="https://baike.baidu.com/item/%E8%92%99%E5%8F%A4%E6%97%8F%E9%95%BF%E8%B0%83/268118?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">蒙古族长调</a>的唱法，声乐专家形容这种唱法是"高如登苍穹之颠，低如下瀚海之底，宽如于大地之边"。呼麦发声原理特殊，有时声带振动，有时不振动，是用腔体内的气量产生共鸣。它运用特殊的声音技巧，一人同时唱出两个声部，形成罕见的<a href="https://baike.baidu.com/item/%E5%A4%9A%E5%A3%B0%E9%83%A8/9054585?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">多声部</a>形态。演唱者运用闭气技巧，使气息猛烈冲击声带，发出粗壮的<a href="https://baike.baidu.com/item/%E6%B0%94%E6%B3%A1%E9%9F%B3/2731588?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">气泡音</a>，形成低音声部。在此基础上，巧妙调节<a href="https://baike.baidu.com/item/%E5%8F%A3%E8%85%94%E5%85%B1%E9%B8%A3/2576629?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">口腔共鸣</a>，强化和集中<a href="https://baike.baidu.com/item/%E6%B3%9B%E9%9F%B3/486069?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">泛音</a>，唱出透明清亮、带有金属声的高音声部，获得无比美妙的声音效果。</p><p><br></p><p>作为一种特殊的民间歌唱形式，呼麦是<a href="https://baike.baidu.com/item/%E8%92%99%E5%8F%A4%E6%97%8F/129889?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">蒙古族</a>杰出的创造。它传达着蒙古族人民对自然宇宙和世界万物深层的哲学思考和体悟，表达了蒙古民族追求和谐生存发展的理念和健康向上的审美情趣。</p><p><br></p><p><span style="color: rgb(51, 51, 51);">呼麦主要分布在内蒙古自治区的锡林郭勒、呼伦贝尔草原及呼和浩特市等地区，新疆维吾尔自治区阿尔泰山一带的蒙古族居住地，蒙古国、俄罗斯图瓦共和国等地区和国家也能听到这种方式的歌唱。</span></p><p><br></p><p><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711284955471.jpg"></p><p><br></p><p>呼麦是蒙古民族最古老的艺术形式之一，它更多地保留了原始歌唱的某些因素，是一种来自民族记忆深处的久远<a href="https://baike.baidu.com/item/%E5%9B%9E%E9%9F%B3/3101709?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">回音</a>，与蒙古族的历史、文化息息相关，对于人类学、<a href="https://baike.baidu.com/item/%E6%B0%91%E6%97%8F%E5%AD%A6/9647465?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">民族学</a>、<a href="https://baike.baidu.com/item/%E6%B0%91%E4%BF%97%E5%AD%A6/1313938?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">民俗学</a>研究均有重要的价值。</p><p><br></p><p>正因如此，为当代蒙古民族继承并传播开来的呼麦艺术，不仅轰动国际乐坛也引起世界各国社会学、人类学、历史学、文化<a href="https://baike.baidu.com/item/%E8%89%BA%E6%9C%AF%E5%AD%A6/3362725?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">艺术学</a>等专家学者的极大兴趣和普遍关注，更为<a href="https://baike.baidu.com/item/%E6%B0%91%E6%97%8F%E9%9F%B3%E4%B9%90/9739007?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">民族音乐</a>学家、声乐界专家学者高度重视。<a href="https://baike.baidu.com/item/%E4%B8%AD%E5%9B%BD%E9%9F%B3%E4%B9%90%E5%AE%B6%E5%8D%8F%E4%BC%9A/2051887?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">中国音乐家协会</a>名誉主席、音乐<a href="https://baike.baidu.com/item/%E7%90%86%E8%AE%BA%E7%95%8C/5671354?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">理论界</a>泰斗<a href="https://baike.baidu.com/item/%E5%90%95%E9%AA%A5/1851972?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">吕骥</a>先生指出：“蒙古族就有一种一个人同时唱两个声部的歌曲，外人是想象不出来的，我们应该认真学习研究。”</p><p><br></p><p>内蒙古音协名誉主席<a href="https://baike.baidu.com/item/%E8%8E%AB%E5%B0%94%E5%90%89%E8%83%A1/10038262?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">莫尔吉胡</a>最近撰文云：“浩林<a href="https://baike.baidu.com/item/%E6%BD%AE%E5%B0%94/915044?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">潮尔</a>音乐是人类最为古老的具有古代<a href="https://baike.baidu.com/item/%E6%96%87%E7%89%A9%E4%BB%B7%E5%80%BC/3448616?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">文物价值</a>的音乐遗产，是活的音乐化石，是至今发掘发现的一切人种、民族的音乐遗产中最具有科学探索与认识价值的音乐遗产。”</p><p><br></p><p>在继承和发展"呼麦"这一蒙古族精美绝伦的<a href="https://baike.baidu.com/item/%E6%96%87%E5%8C%96%E9%81%97%E4%BA%A7/749049?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">文化遗产</a>方面，<a href="https://baike.baidu.com/item/%E5%86%85%E8%92%99%E5%8F%A4%E8%8D%89%E5%8E%9F/1099277?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">内蒙古草原</a>远远落后于<a href="https://baike.baidu.com/item/%E9%98%BF%E5%B0%94%E6%B3%B0%E5%B1%B1/578959?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">阿尔泰山</a>麓等其他蒙古族地区，如<a href="https://baike.baidu.com/item/%E8%92%99%E5%8F%A4%E5%9B%BD/209648?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">蒙古国</a>已早把呼麦艺术列为“国宝”；俄罗斯<a href="https://baike.baidu.com/item/%E5%9B%BE%E7%93%A6%E5%85%B1%E5%92%8C%E5%9B%BD/7690714?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">图瓦共和国</a>则视呼麦为“民族魂”；两国<a href="https://baike.baidu.com/item/%E5%9D%87%E5%B7%B2/6068131?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">均已</a>把呼麦艺术发掘、研究列入国家艺术<a href="https://baike.baidu.com/item/%E9%87%8D%E7%82%B9%E5%AD%A6%E7%A7%91/7002532?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">重点学科</a>，并引入蒙古族声乐<a href="https://baike.baidu.com/item/%E6%95%99%E5%AD%A6%E4%BD%93%E7%B3%BB/303275?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">教学体系</a>之中。中国中央音乐学院也把呼麦艺术列为国家艺术学科重点课题——《世界民族民间音乐》中的重要部分，并由原院党委书记、世界<a href="https://baike.baidu.com/item/%E6%B0%91%E6%97%8F%E9%9F%B3%E4%B9%90%E5%AD%A6/3954084?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">民族音乐学</a>专家<a href="https://baike.baidu.com/item/%E9%99%88%E8%87%AA%E6%98%8E/8137932?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">陈自明</a>教授亲自牵头主持研究。</p>'),
	(1710216424574, '2024-03-12 04:07:03', '世界八大奇迹之一秦始皇兵马俑', '兵马俑，即秦始皇陵兵马俑，亦简称秦兵马俑或秦俑，是第一批全国重点文物保护单位、第一批中国世界遗产，位于今陕西省西安市临潼区秦始皇陵以东1.5千米处的兵马俑坑内。先后有200多位外国元首和政府首脑参观访问，成为中国古代辉煌文明的一张金字名片，又被誉为世界十大古墓稀世珍宝之一。\n兵马俑是古代墓葬雕塑的一个类别。古代施行人殉，奴隶是奴隶主生前的附属品，奴隶主死后奴隶要作为殉葬品为奴隶主陪葬。兵马俑即制成兵马（战车、战马、士兵）形状的殉葬品。', 'http://localhost:8080/feiwuzhiwenhua/upload/1711285012103.jpg', '<p>兵马俑从身份上区分，主要有士兵与<a href="https://baike.baidu.com/item/%E5%86%9B%E5%90%8F/2190351?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">军吏</a>两大类，军吏又有低级、中级、高级之别。一般士兵不戴冠，而军吏戴冠，普通军吏的冠与将军的冠又不相同，甚至铠甲也有区别。其中的兵俑包括步兵、骑兵、车兵三类。根据实战需要，不同兵种的武士装备各异。</p><p><br></p><p>俑坑中最多的是武士俑，大部分手执青铜兵器，有弓、弩、箭镞、<a href="https://baike.baidu.com/item/%E9%93%8D/9437720?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">铍</a>、矛、戈、<a href="https://baike.baidu.com/item/%E6%AE%B3/94873?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">殳</a>、剑、弯刀和<a href="https://baike.baidu.com/item/%E9%92%BA/49735423?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">钺</a>，身穿甲片细密的<a href="https://baike.baidu.com/item/%E9%93%A0%E7%94%B2/1524751?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">铠甲</a>，胸前有彩线挽成的结穗。军吏头戴长冠，数量比武将多。秦俑的脸型、身材、表情、眉毛、眼睛和年龄都有不同之处。</p><p><br></p><p>兵马俑的制作工匠是处于秦帝国社会下层的一批<a href="https://baike.baidu.com/item/%E9%99%B6%E5%B7%A5/4868004?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">陶工</a>。这些陶工有的来自宫廷的制陶作坊，有的来自地方的制陶作坊。从陶俑身上发现的陶工名有80个，都是具有丰富实践经验的优秀陶工。</p><p><br></p><p>在陶俑、陶马身上打印或刻划陶工名，源于战国中期秦国的“<a href="https://baike.baidu.com/item/%E7%89%A9%E5%8B%92%E5%B7%A5%E5%90%8D/9266345?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">物勒工名</a>”制度，是秦国政府管理官府手工业、保证产品质量、控制和监督工匠生产的一种手段。这种手段运用于秦陵兵马俑的制作上，一方面加强了对工匠的控制与管理，另一方面也有利于作品质量的提高。</p><p><br></p><p>兵马俑的塑造，基本上以现实生活为基础，手法细腻、明快。每个陶俑的装束、神态都不一样。人物的发式就有许多种，手势也各不相同，面部的表情更是各有差异。从他们的装束、神情和手势就可以判断出是官还是兵，是步兵还是骑兵。总体而言，所有的秦俑面容中都流露出秦人独有的威严与从容，具有鲜明的个性和强烈的时代特征。</p><p><br></p><p>兵马俑雕塑采用绘塑结合的方式，虽然年代久远，但在刚刚发掘出来的时候还依稀可见人物面部和衣服上绘饰的色彩。在手法上注重传神，构图巧妙，技法灵活，既有真实性也富装饰性。正因为如此，秦兵马俑在中国的雕塑史上占有重要的地位。从已整理出土的一千多个陶俑、陶马来看，几乎无一雷同。</p><p><br></p><p><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285022048.jpg"></p><p><br></p><p>秦俑丰富而生动地塑造了多种具有一定性格的人物形象。其风格浑厚、洗练，富于感人的艺术魅力，是中国古代塑造艺术臻于成熟的标志。它既继承了战国以来中国的陶塑传统，又为唐代塑造艺术的繁荣奠定了基础，起着承上启下的作用，被誉为“世界第八大奇迹”、“人类古代精神文明的瑰宝”。</p><p><br></p><p>1987年，秦始皇陵及兵马俑坑被<a href="https://baike.baidu.com/item/%E8%81%94%E5%90%88%E5%9B%BD%E6%95%99%E7%A7%91%E6%96%87%E7%BB%84%E7%BB%87/265071?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">联合国教科文组织</a>批准列入《<a href="https://baike.baidu.com/item/%E4%B8%96%E7%95%8C%E9%81%97%E4%BA%A7%E5%90%8D%E5%BD%95/6174540?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">世界遗产名录</a>》。</p>'),
	(1710216777518, '2024-03-12 04:12:56', '强身健体的太极', '太极拳，是以中国传统儒、道哲学中的太极、阴阳辩证理念为核心思想，集颐养性情、强身健体、技击对抗等多种功能为一体，结合易学的阴阳五行之变化，中医经络学，古代的导引术和吐纳术形成的一种内外兼修、柔和、缓慢、轻灵、刚柔相济的中国传统拳术。太极拳主要代表人物有施承志、陈正雷、杨振铎、李秉慈、孙婉容、钟振山等。\n2020年12月，联合国教科文组织保护非物质文化遗产政府间委员会第15届常会将“太极拳”项目列入联合国教科文组织人类非物质文化遗产代表作名录。', 'http://localhost:8080/feiwuzhiwenhua/upload/1711285049214.jpg', '<p><span style="color: rgb(51, 51, 51);">太极拳属武术一大拳系。太极拳这个名称是因为拳法</span>	<a href="https://baike.baidu.com/item/%E5%8F%98%E5%B9%BB%E6%97%A0%E7%A9%B7/1590065?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">变幻无穷</a>	<span style="color: rgb(51, 51, 51);">，遂用中国古代的“阴阳”、“太极”这一哲学理论来解释拳理而被命名的。</span></p><p><br></p><p><span style="color: rgb(51, 51, 51);">传统太极拳门派众多，常见的</span>	<a href="https://baike.baidu.com/item/%E5%A4%AA%E6%9E%81%E6%8B%B3%E6%B5%81%E6%B4%BE/1162320?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">太极拳流派</a>	<span style="color: rgb(51, 51, 51);">有陈氏、杨氏、武氏、吴氏、孙氏、和氏等派别，各派既有传承关系，相互借鉴，也各有自己的特点，呈百花齐放之态。由于太极拳是近代形成的拳种，流派众多，群众基础广泛，因此是</span>	<a href="https://baike.baidu.com/item/%E4%B8%AD%E5%9B%BD%E6%AD%A6%E6%9C%AF/1446959?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">中国武术</a>	<span style="color: rgb(51, 51, 51);">拳种中非常具有生命力的一支。</span></p><p><br></p><p><span style="color: rgb(51, 51, 51);">太极拳是一种拳术运动，符合拳理，具有技击性。这里的拳理是指太极拳动作本身符合攻防规律，具有攻防含义，能够产生一定的攻防实效，这既是太极拳动作与体操、舞蹈、导引等其它运动的基本区别也是本质区别之一。</span></p><p><br></p><p><span style="color: rgb(51, 51, 51);">太极拳技术是指充分合理、有效地完成太极拳动作的方法。这里合理是指合哲、拳、医等传统原理以及生理、心理、生物力学等现代科学；有效为最大限度地发挥人体身心潜能，以最小的付出获得最大的健身、技击效果。根据太极拳运动状态和动作组成要素分为相对静止的静态(阴性)身型技术与动态(阳性)的运动技术。</span></p><p><br></p><p class="ql-align-justify">太极拳的魅力在于其融合了武术、哲学、医学等多种元素，形成了一种独特的身心锻炼方式。它通过缓慢、连续的动作，配合深呼吸和意念集中，使人达到内外合一、身心和谐的状态。太极拳的动作看似简单，却蕴含着深厚的内涵和精妙的技巧。它不仅能够锻炼身体，提高身体的柔韧性和平衡能力，更能够调节人的心理状态，使人保持平和、宁静的心态。</p><p class="ql-align-justify"><br></p><p class="ql-align-justify">太极拳对人体的好处不言而喻。首先，太极拳能够增强人体的免疫力，提高身体的抵抗力。通过持续的锻炼，太极拳能够使人的气血流通更加顺畅，促进新陈代谢，增强内脏器官的功能，从而有效地预防和治疗多种疾病。其次，太极拳对于调节心理状态有着显著的效果。在快节奏、高压力的现代生活中，人们常常感到焦虑、疲惫和紧张。而太极拳通过呼吸和意念的配合，能够使人放松身心，缓解压力，提高注意力和专注力，使人更加冷静、清晰地面对生活中的各种挑战。</p><p class="ql-align-justify"><br></p><p class="ql-align-justify"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285064532.jpg"></p><p class="ql-align-justify"><br></p><p class="ql-align-justify"><span style="color: rgb(25, 25, 25);">太极拳的推广和普及，不仅有助于提升人们的健康水平，更有助于促进不同文化之间的交流与融合。太极拳作为中国的传统武术之一，蕴含着深厚的文化底蕴和哲学思想。通过学习和练习太极拳，人们不仅可以锻炼身体，更可以了解中国的传统文化和价值观，增进对中华文化的认同感和尊重。</span></p>'),
	(1710217670831, '2024-03-12 04:27:50', '散落人间的火树银花', '打铁花，是流传于豫晋地区民间传统的烟火，历史悠久可以追溯到春秋战国时期。它的采矿炼铁业几乎与中华民族的冶炼史同步兴起。丰富的煤炭和铁矿资源，为冶炼业的发展提供了极为便利的条件。 鼎盛于明清时期，至今已有千余年的历史。', 'http://localhost:8080/feiwuzhiwenhua/upload/1711285138341.jpg', '<p>打铁花，是流传于豫晋地区民间传统的烟火，历史悠久可以追溯到春秋战国时期。它的采矿炼铁业几乎与中华民族的冶炼史同步兴起。丰富的煤炭和铁矿资源，为冶炼业的发展提供了极为便利的条件。 鼎盛于明清时期，至今已有千余年的历史。</p><p><br></p><p>确山打铁花具有深厚的文化内涵，而且，这一千年绝技本就起源于老乐山道教文化，是一种由民间工匠及老乐山道人共同祭祀道教始祖太上老君而举行的活动，后来演变为综合性民间传统庆祝仪式。目前是河南省仅存的大型民间传统焰火，素有"民间焰火之最"、"中原文化奇葩"、"中华第一铁花"的美誉，于2008年被国务院和文化部公布为"国家级非物质文化遗产"。</p><p><br></p><p><strong>《山海经》曾记：“虎尾山之阴有铁矿。”</strong></p><p><br></p><p>指的就是今山西晋城市大阳至今还在开采的虎尾山矿区。晋国最早使用的炼铁鼓风炉，首先在大阳发明和使用。连战国最著名的“阳阿古剑”也产自这里，它刀刃锋利，削铁如泥，当时的大阳已成为北方各诸侯国制造兵器所需生铁的重要产地。</p><p><br></p><p>明、清两代，泽州府（今山西晋城市）境内的大阳镇采煤、炼铁和铸造行业最为鼎盛，不仅产有铁锅、铁钉、铁锁等生活用具，而且镰刀、斧头、铁锹、犁铧等农具样样齐备。《中国实业志》记载，清代山西冶铁中心古泽州府（即今晋城市），熟铁炉业炉数约计百余座。</p><p><br></p><p>源自于北宋时期的确山打铁花大型表演原是老乐山炼丹道士与民间金、银、铜、铁、锡五门工匠每年春节共同祭祀太上老君祖师爷而举行的一种仪式，后经千年流传，不仅增加了鞭炮、烟花，还把耍龙灯、打铜器、游社火吸收进来，形成一种场面恢弘、气势磅礴、喜庆吉祥的独特表演风格。表演时古乐齐鸣，十几盘化铁炉火光冲天，打铁花艺人赤膊上阵，舞动着千余度高温的铁汁自如穿梭，被击打后的铁花纷飞，可迸出几丈高冲向空中朵朵绽放，场面蔚为壮观。</p><p><br></p><p>这种小型的打铁花活动，在生活水平十分低下、文化艺术生活极度贫乏的古代农村，给乡民们带来了无限的欢乐和振奋。这种有着浓厚的道教和行业特点的“打铁花”活动，逐渐得到了社会各界人士的喜爱和支持，成为确山县的一项群众喜闻乐见的民间传统娱乐活动。</p><p><br></p><p class="ql-align-justify">打铁花民俗起源于春秋，虽屡有中断，因技艺依附于道教，实施依附于铁匠行业的开炉及民间年节及喜庆日等活动，故传承不绝、绵延于今。</p><p class="ql-align-justify"><br></p><p class="ql-align-justify">打铁花场面恢弘壮观、气势磅礴，在民众中有很大影响。打花技艺性很强，传承困难，投入大，急需保护。</p><p class="ql-align-justify"><br></p><p class="ql-align-justify"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285128688.jpg"></p>'),
	(1710217754637, '2024-03-12 04:29:14', '舞出非遗——舞狮', '舞狮（Lion Dance），古时称“太平乐”，是中华人民共和国正式开展的体育项目，也是中国优秀的民间艺术。\n舞狮有南北之分，南狮又称醒狮，而北狮则分为“文狮”和“武狮”。唐朝时，舞狮运动主要以狮舞的形式作为宫廷娱乐节目供皇帝欣赏，地位极高。五代十国之后，随着中原移民的南迁，舞狮文化传入岭南地区。舞狮活动也广泛流传于海外华人社区，有华人之处，必有舞狮，这成为了扬民族之威、立中国之魂的重要仪式，以及海外同胞认祖归宗的文化桥梁，其文化价值和影响十分深远。区，有华人之处，必舞狮，这成为了扬民族之威、立中国之魂的重要仪式，以及海外同胞认祖归宗的文化桥梁，其文化价值和影响十分深远。', 'http://localhost:8080/feiwuzhiwenhua/upload/1711285175816.jpg', '<p>西汉张骞（公元前164－前113年）通西域、开丝路后，才开始有狮子的相关记载。不过当时多称其为狻猊、狻麋（由梵语“Simha”音译而来），后取“Sim”音简称为“师子”（加犬字旁成今日的狮子）。但从西域进贡的真狮，只有皇室才能亲眼看到，平民老百姓是没有眼福的。不过随着佛教传入后，在象征智慧的文殊菩萨骑狮宣传佛法下，民间才逐渐认识早已被印度人神格化的狮子。</p><p><br></p><p>对于中国老百姓来说，狮子是有驱邪除煞神力的瑞兽，这股对狮子的崇拜，自然也会融进艺术生活当中。有关舞狮子的记载，最早见于《汉书．礼乐志》，其中有疑似舞狮的表演记载：“若今戏虾鱼、师子者也”，唐代史学家颜师古作注时引东吴史家韦昭的说法：“着假面者也”，即戴着仿狮子的面具跳舞。看起来与今日的舞狮十分相似，部份学者认为这是中国最早出现舞狮的文献。但究竟舞狮的起源是源自中原，还是与西域文化融合产生，至今仍无定论。</p><p><br></p><p>相传汉章帝时，西域大月氏国向汉朝进贡了一头金毛雄狮子，使者扬言朝野，若有人能驯服此狮，便继续向汉朝进贡，否则断绝邦交。在大月氏使者走后，汉章帝先后选了三人驯狮，均未成功。后来金毛雄狮狂性发作，被宫人乱棒打死，宫人为逃避章帝降罪，于是将狮皮拔下，由宫人兄弟俩装扮成金毛狮子，一人逗引起舞，此举不但骗过了大月氏使臣，连章帝也信以为真，此事后来传出汉宫，老百姓认为舞狮子是为国争光、吉祥的象征。于是仿造狮子，表演狮子舞。舞狮从此风靡流行。</p><p><br></p><p>经历千年，舞狮不但没有被历史洪流淹没，反而更被“活化”起来。香港舞狮技艺的其中一位传承者、夏国璋龙狮团主席夏德建师傅说：“我父亲（夏国璋师傅）见传统舞狮已不再吸引观众，于是把心一横，将狮尾剪短，实行‘南狮北舞’，改革了传统的南狮技艺。”</p><p><br></p><p class="ql-align-center"><img src="https://chiculture.org.hk/sites/mainsite/files/styles/free_style_image_styles/public/2023-01/202115phw022_01.jpg?itok=J8aXtiz6" alt="202115phw022_01"></p><p class="ql-align-center"><br></p><p class="ql-align-center">夏德建师傅（左）详细讲解柔功门的功夫与狮艺（图片提供：叶德平）</p><p class="ql-align-center"><br></p><p>原来，舞狮有南狮与北狮之分。北狮造型酷肖真狮，步履轻盈，极多翻滚跳跃的表演动作，富娱乐性。相反，早期南狮四平八稳，体型又大，自然不及轻巧的北狮吸引。因此，夏国璋师傅大胆地剪短南狮的尾巴，并在传统南狮子表演上，融入北狮的舞蹈身法，又引入杂技表演的“叠罗汉”功夫，改变了“采青”阵式。这一系列的革新，让南狮表演在保留传统之余，又可以变得更为明快刺激，自然更具吸引力。</p><p>&nbsp;</p><p>夏德建师傅指这一系列的改革，让柔功门舞狮表演能突围而出。柔功门狮艺除了讲求整体性，更要求像真，要“舞得像一只真狮子”。动若脱兔，静如处子；无论跳跃翻滚，还是匍伏蓄势，都要与真狮无异。表演者举着狮头，时而摇首，时而眨眼，演活狮子的喜、怒、疑、惊、乐、醉、睡、醒的感情变化。当同行看到改革成功，纷纷景从，刺激本地舞狮更上一层楼，而且，柔功门的狮艺更成为了世界舞狮比赛的蓝本，扬威国际。</p>'),
	(1710217841403, '2024-03-12 04:30:41', '舌尖上的非遗——胶东花饽饽', '花饽饽距今有三百多年历史，不仅外观好看，而且是纯天然手工制作，营养美味，健康环保，是山东省省级非物质文化遗产。花饽饽主要分威海大花饽饽，烟台盘饽饽。\n胶东花饽饽以面粉为原料，用简单的工具，不仅可以捏塑成千姿百态的人物形象，还可以做成活灵活现的各种动物、鲜艳美丽的花草树木。胶东花饽饽源自民间，植根于人民生活，已成为民俗风情独特的表现方式。', 'http://localhost:8080/feiwuzhiwenhua/upload/1711285207002.jpg', '<p>山东莱西面食文化悠久，《辞海》《辞源》中这样记载了“小麦”一词——“小麦名曰‘莱’”。</p><p><br></p><p>《莱西县志·礼属篇》记载，莱西民间“以麦为美”“巧姐儿”们以一块面为原型蒸出来的大饽饽，寓意生活“蒸蒸日上”。</p><p><br></p><p><a href="https://baike.baidu.com/item/%E9%A5%BD%E9%A5%BD/5280872?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">饽饽</a>就是我们通常所说的<a href="https://baike.baidu.com/item/%E9%A6%92%E5%A4%B4/6133?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">馒头</a>。但是大饽饽同馒头相比，要比馒头大三四倍，也不是单纯的馒头样子，而是做成各种形状，就像工艺品一样，美极了。花饽饽是饽饽的一种，有许多栩栩如生的花样所以称之为花饽饽。</p><p><br></p><p>在<a href="https://baike.baidu.com/item/%E8%83%B6%E4%B8%9C/8988525?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">胶东</a>，过年最有<a href="https://baike.baidu.com/item/%E5%B9%B4%E5%91%B3/1438042?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">年味</a>的莫过于吃那白白胖胖的大饽饽。过大年，蒸饽饽，期盼来年的日子蒸蒸向上、红红火火。大约到了农历的腊月二十，各家就开始蒸大饽饽了，一直能持续到年根，每家都蒸上好多，整个正月都不用做面食了。</p><p><br></p><p class="ql-align-center"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285199671.jpg"></p><p><br></p><p><a href="https://baike.baidu.com/item/%E8%83%B6%E4%B8%9C/8988525?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">胶东</a>花饽饽习俗省级非物质文化遗产传承人贾雨萍介绍，花饽饽最早可以追溯至汉代，仍然流行于山东<a href="https://baike.baidu.com/item/%E7%83%9F%E5%8F%B0/207299?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">烟台</a>、威海等胶东地区。聪明勤劳的胶东农村妇女在各种<a href="https://baike.baidu.com/item/%E4%BC%A0%E7%BB%9F%E8%8A%82%E6%97%A5/3302724?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">传统节日</a>期间，用面团做出<a href="https://baike.baidu.com/item/%E9%B8%B3%E9%B8%AF/10203899?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">鸳鸯</a>、<a href="https://baike.baidu.com/item/%E9%B2%A4/409722?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">鲤</a>鱼、龙、凤、<a href="https://baike.baidu.com/item/%E5%AF%BF%E6%A1%83/5200300?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">寿桃</a>等寓意造型，蒸熟凉透，再点染五彩缤纷的颜色，便成了一件件生动的“艺术品”。</p><p><br></p><p>“花饽饽的制作流程包括和面、<a href="https://baike.baidu.com/item/%E5%8F%91%E9%9D%A2/10032286?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">发面</a>、揉面、捏型、雕刻、锅蒸、上色等步骤，以刀、剪、笔等工具进行创作。”贾雨萍说，在制作技法上，不同地域各有特色，风格不同。按<a href="https://baike.baidu.com/item/%E4%BA%BA%E7%94%9F%E7%A4%BC%E4%BB%AA/6246315?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">人生礼仪</a>、岁时节物和各地习俗，通常分为“结婚”“送三”“百岁”“过年”等几个大类别。</p><p><br></p><p>贾雨萍除了制作花饽饽之外，还经常在家乡山东<a href="https://baike.baidu.com/item/%E6%A0%96%E9%9C%9E/2493615?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">栖霞</a>的幼儿园、中小学及职业院校中授课，讲述制作过程和背后的文化。“以讲述胶东花饽饽的历史和当地<a href="https://baike.baidu.com/item/%E6%B0%91%E4%BF%97%E6%96%87%E5%8C%96/9901668?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">民俗文化</a>为主，加深大家对历史和传统的认识及印象。</p>'),
	(1710217891702, '2024-03-12 04:31:31', '光影中的艺术', '皮影戏（Shadow Puppets），又称“影子戏”或“灯影戏”，是一种以兽皮或纸板做成的人物剪影以表演故事的民间戏剧。表演时，艺人们在白色幕布后面，一边操纵影人，一边用当地流行的曲调讲述故事，同时配以打击乐器和弦乐，有浓厚的乡土气息。其流行范围极为广泛，并因各地所演的声腔不同而形成多种多样的皮影戏。\n皮影戏是中国民间古老的传统艺术，老北京人都叫它“驴皮影”。据史书记载，皮影戏始于西汉，兴于唐朝，盛于清代，元代时期传至西亚和欧洲，可谓历史悠久，源远流长。', 'http://localhost:8080/feiwuzhiwenhua/upload/1711285225468.jpeg', '<p>皮影戏，旧称“影子戏”或“灯影戏”，是一种用蜡烛或燃烧的酒精等光源照射<a href="https://baike.baidu.com/item/%E5%85%BD%E7%9A%AE/0?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">兽皮</a>或纸板做成的人物剪影以表演故事的民间戏剧。表演时，艺人们在白色幕布后面，一边操纵戏曲人物，一边用当地流行的曲调唱述故事（有时用方言），同时配以<a href="https://baike.baidu.com/item/%E6%89%93%E5%87%BB%E4%B9%90%E5%99%A8/0?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">打击乐器</a>和弦乐，有浓厚的乡土气息。在河南、山西、陕西、甘肃天水等地农村，这种拙朴的汉族民间艺术形式很受人们的欢迎。</p><p><br></p><p>“皮影”是对皮影戏和皮影戏人物（包括场面道具景物）制品的通用称谓。皮影戏是让观众通过白色幕布，观看一种平面人偶表演的灯影来达到艺术效果的戏剧形式；而皮影戏中的平面人偶以及场面景物，通常是民间艺人用手工，刀雕彩绘而成的皮制品，故称之为皮影。在过去还没有电影、电视的年代，皮影戏曾是十分受欢迎的民间娱乐活动之一。</p><p><br></p><p><span style="color: rgb(51, 51, 51);">中国地域广阔，各地的皮影都有自己的特色，但是皮影的制作程序大多相同，通常要经过选皮、制皮、画稿、过稿、镂刻、敷彩、发汗熨平、缀结合成等八道工序、手工雕刻3000余刀，是一个复杂奇妙的过程。皮影的</span>	<a href="https://baike.baidu.com/item/%E8%89%BA%E6%9C%AF%E5%88%9B%E6%84%8F/0?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">艺术创意</a>	<span style="color: rgb(51, 51, 51);">汲取了中国汉代帛画、画像石、画像砖和唐、宋寺院</span>	<a href="https://baike.baidu.com/item/%E5%A3%81%E7%94%BB/0?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">壁画</a>	<span style="color: rgb(51, 51, 51);">之手法与风格。</span>	<span style="color: rgb(51, 51, 51);">其制作过程是：先将羊皮、驴皮或其他兽皮的毛、血去净，然后经药物处理，使皮革变薄，呈半透明，涂上桐油，然后艺人们将各种人物的图谱描绘在上面，用各种型号的刀具</span>	<a href="https://baike.baidu.com/item/%E5%88%BB%E5%87%BF/0?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">刻凿</a>	<span style="color: rgb(51, 51, 51);">后，再涂抹上颜色，上色时主要使用红、黄、青、绿、黑等五种纯色。</span></p><p><br></p><p><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285234790.jpg"></p><p><br></p><p>演皮影戏的操耍技巧和唱功，是皮影戏班水平高低的关键。而操耍和演唱都是经师父心传口授和长期勤学苦练而成的。在演出时，艺人们都有操纵影人、乐器伴凑合道白配唱同时兼顾的本领。有的高手一人能同时操耍七、八个影人。武打场面是紧锣密鼓，影人枪来剑往、上下翻腾，热闹非凡。而文场的音乐与唱腔却又是音韵缭绕、优美动听。或激昂或缠绵，有喜有悲、声情并茂，动人心弦。</p><p><br></p><p>由于皮影戏中的车船马轿、奇妖怪兽都能上场，飞天入地、隐身变形、喷烟吐火、劈山倒海都能表现，还能配以各种皮影特技操作和声光效果，所以演出大型<a href="https://baike.baidu.com/item/%E7%A5%9E%E8%AF%9D%E5%89%A7/0?fromModule=lemma_inlink" rel="noopener noreferrer" target="_blank" style="color: rgb(19, 110, 194);">神话剧</a>的奇幻场面之绝，在百戏中非皮影戏莫属。</p>');

-- 导出  表 s0811.orders 结构
DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1712720541656 DEFAULT CHARSET=utf8mb3 COMMENT='订单';

-- 正在导出表  s0811.orders 的数据：~8 rows (大约)
REPLACE INTO `orders` (`id`, `addtime`, `orderid`, `tablename`, `userid`, `goodid`, `goodname`, `picture`, `buynumber`, `price`, `discountprice`, `total`, `discounttotal`, `type`, `status`, `address`) VALUES
	(1710232571939, '2024-03-12 08:36:11', '202431216361144008269', 'shangpinxinxi', 1710147003038, 46, '三不小萌佛摆件', 'http://localhost:8080/feiwuzhiwenhua/upload/1710232017584.png', 1, 99.9, 99.9, 99.9, 99.9, 1, '已完成', '山东'),
	(1710235492698, '2024-03-12 09:24:52', '202431217245221494563', 'shangpinxinxi', 1710147003038, 43, '苏绣双面团扇', 'http://localhost:8080/feiwuzhiwenhua/upload/1710229624384.png', 1, 108, 108, 108, 108, 1, '已退款', '山东'),
	(1710235578260, '2024-03-12 09:26:17', '202431217261784266138', 'shangpinxinxi', 1710147003038, 1710233498559, '复古茶室纸巾盒', 'http://localhost:8080/feiwuzhiwenhua/upload/1710233092658.png', 1, 648, 648, 648, 648, 1, '已发货', '山东'),
	(1710235617911, '2024-03-12 09:26:57', '202431217265715085181', 'shangpinxinxi', 1710147003038, 1710234343002, '和田玉挂件', 'http://localhost:8080/feiwuzhiwenhua/upload/1710234060549.png', 1, 648, 648, 648, 648, 1, '已取消', '山东'),
	(1710235645272, '2024-03-12 09:27:25', '202431217272498978335', 'shangpinxinxi', 1710147003038, 1710235333451, '新年钥匙扣', 'http://localhost:8080/feiwuzhiwenhua/upload/1710235261520.png', 1, 29.9, 29.9, 29.9, 29.9, 1, '已支付', '山东'),
	(1710937680568, '2024-03-20 12:28:00', '202432020275994505643', 'shangpinxinxi', 1710147003038, 43, '苏绣双面团扇', 'http://localhost:8080/feiwuzhiwenhua/upload/1710229624384.png', 1, 108, 108, 108, 108, 1, '已支付', '山东'),
	(1712720492865, '2024-04-10 03:41:31', '202441011413197146949', 'shangpinxinxi', 1710147003038, 41, '川剧变脸娃娃', 'http://localhost:8080/feiwuzhiwenhua/upload/1711284166655.png', 1, 88.9, 88.9, 88.9, 88.9, 1, '已退款', '山东'),
	(1712720541655, '2024-04-10 03:42:20', '202441011422094506080', 'shangpinxinxi', 1710147003038, 41, '川剧变脸娃娃', 'http://localhost:8080/feiwuzhiwenhua/upload/1711284166655.png', 1, 88.9, 88.9, 88.9, 88.9, 1, '已支付', '山东');

-- 导出  表 s0811.shangpinfenlei 结构
DROP TABLE IF EXISTS `shangpinfenlei`;
CREATE TABLE IF NOT EXISTS `shangpinfenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1616118982314 DEFAULT CHARSET=utf8mb3 COMMENT='商品分类';

-- 正在导出表  s0811.shangpinfenlei 的数据：~4 rows (大约)
REPLACE INTO `shangpinfenlei` (`id`, `addtime`, `shangpinfenlei`) VALUES
	(21, '2024-03-15 07:59:12', '文创类'),
	(22, '2024-03-15 07:59:12', '礼品类'),
	(23, '2024-03-15 07:59:12', '实用类'),
	(24, '2024-03-15 07:59:12', '饰品类');

-- 导出  表 s0811.shangpinpingjia 结构
DROP TABLE IF EXISTS `shangpinpingjia`;
CREATE TABLE IF NOT EXISTS `shangpinpingjia` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `pingfen` varchar(200) NOT NULL COMMENT '评分',
  `pingjianeirong` longtext NOT NULL COMMENT '评价内容',
  `tianjiatupian` varchar(200) DEFAULT NULL COMMENT '添加图片',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710232916022 DEFAULT CHARSET=utf8mb3 COMMENT='商品评价';

-- 正在导出表  s0811.shangpinpingjia 的数据：~1 rows (大约)
REPLACE INTO `shangpinpingjia` (`id`, `addtime`, `dingdanbianhao`, `shangpinmingcheng`, `shangpinfenlei`, `pinpai`, `pingfen`, `pingjianeirong`, `tianjiatupian`, `pingjiariqi`, `yonghuming`, `lianxidianhua`, `sfsh`, `shhf`) VALUES
	(1710232916021, '2024-03-12 08:41:55', '202431216361144008269', '三不小萌佛摆件', '礼品类', '久造', '5', '制作精细，超可爱！', 'http://localhost:8080/feiwuzhiwenhua/upload/1710232887951.png', '2024-03-10', 's0811', '12345678912', '是', NULL);

-- 导出  表 s0811.shangpinxinxi 结构
DROP TABLE IF EXISTS `shangpinxinxi`;
CREATE TABLE IF NOT EXISTS `shangpinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `biaoqian` varchar(200) DEFAULT NULL COMMENT '标签',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710235333452 DEFAULT CHARSET=utf8mb3 COMMENT='商品信息';

-- 正在导出表  s0811.shangpinxinxi 的数据：~11 rows (大约)
REPLACE INTO `shangpinxinxi` (`id`, `addtime`, `shangpinmingcheng`, `shangpinfenlei`, `tupian`, `biaoqian`, `pinpai`, `shangpinxiangqing`, `clicktime`, `clicknum`, `price`) VALUES
	(41, '2023-03-15 07:59:12', '川剧变脸娃娃', '礼品类', 'http://localhost:8080/feiwuzhiwenhua/upload/1711284166655.png,http://localhost:8080/feiwuzhiwenhua/upload/1711284174072.png', '川剧 变脸 中国风 玩具', '四川', '<p>产品名称：川剧变脸娃娃</p><p>产品规格：10*15</p><p>产品材质：瓷</p><p>产品说明：按下娃娃帽檐即可变脸</p><p>注意：手工制作，以实物为准</p>', '2024-04-15 11:11:03', 51, 88.9),
	(42, '2023-03-15 07:59:12', '兵马俑摆件', '礼品类', 'http://localhost:8080/feiwuzhiwenhua/upload/1711285280100.png,http://localhost:8080/feiwuzhiwenhua/upload/1711285288714.png', '兵马俑 纪念品 西安博物馆', '西安博物馆', '<p>3D建模一比一复刻经典</p><p>产品材质：树脂</p><p>产品规格：5*15 5*20 15*15</p><p>注意：以实物为准</p><p><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285301556.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285306927.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285313671.jpg"></p>', '2024-04-15 11:11:49', 78, 66.9),
	(43, '2023-03-15 07:59:12', '苏绣双面团扇', '礼品类', 'http://localhost:8080/feiwuzhiwenhua/upload/1711285350705.png', '扇子 团扇 苏绣 中国风 工艺品', '江苏', '<p><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285361214.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285368157.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285373715.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285379013.jpg"></p>', '2024-04-15 11:13:10', 44, 108),
	(44, '2023-03-15 07:59:12', '只此青绿摆件', '礼品类', 'http://localhost:8080/feiwuzhiwenhua/upload/1711285474033.png', '中国风 仕女 摆件 古典 国潮', '只此青绿', '<p><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285489363.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285495452.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285499272.jpg"></p>', '2024-04-15 11:13:41', 47, 88),
	(45, '2023-03-15 07:59:12', '十二月令书签', '文创类', 'http://localhost:8080/feiwuzhiwenhua/upload/1711285548569.png', '二十四节气 书签 文创 国潮 文具', '故宫', '<p><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285560692.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285565435.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285574760.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285579281.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285584179.jpg"></p>', '2024-04-15 11:14:09', 27, 112.9),
	(46, '2023-03-15 07:59:12', '小萌佛摆件', '礼品类', 'http://localhost:8080/feiwuzhiwenhua/upload/1711285612831.png,http://localhost:8080/feiwuzhiwenhua/upload/1711285618294.png', '佛意 摆件 新中式', '久造', '<p><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285627469.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285634346.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285641380.jpg"></p>', '2024-04-15 11:14:56', 34, 99.9),
	(1710233498559, '2024-03-12 08:51:38', '复古茶室纸巾盒', '实用类', 'http://localhost:8080/feiwuzhiwenhua/upload/1711285824657.png', '复古 纸巾盒 实木', 'other', '<p><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285850634.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285853656.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285857146.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285859585.jpg"></p>', '2024-04-15 11:16:25', 7, 648),
	(1710233872651, '2024-03-12 08:57:52', '敦煌井色花语茶盏', '实用类', 'http://localhost:8080/feiwuzhiwenhua/upload/1711285922403.png', '茶具 敦煌 纪念品', '敦煌研究所', '<p><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285933129.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285938166.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711285950129.jpg"></p>', '2024-04-15 11:20:57', 2, 129),
	(1710234343002, '2024-03-12 09:05:42', '和田玉挂件', '饰品类', 'http://localhost:8080/feiwuzhiwenhua/upload/1711286110384.png,http://localhost:8080/feiwuzhiwenhua/upload/1711286117432.png', '和田玉 小叶紫檀 复古 挂件', 'other', '<p><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711286125753.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711286133165.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711286142194.jpg"></p>', '2024-04-15 11:21:19', 5, 648),
	(1710234742656, '2024-03-12 09:12:22', '二十四节气熏香', '实用类', 'http://localhost:8080/feiwuzhiwenhua/upload/1711286171452.png', '复古 熏香 二十四节气', 'other', '<p><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711286182492.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711286189406.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711286195725.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711286203232.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711286209234.jpg"></p>', '2024-04-15 11:21:41', 2, 256),
	(1710235161811, '2024-03-12 09:19:20', '古风文创套装', '文创类', 'http://localhost:8080/feiwuzhiwenhua/upload/1711286228984.png,http://localhost:8080/feiwuzhiwenhua/upload/1711286238564.png', '古风 手帐本 文创', 'other', '<p><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711286268684.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711286275794.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711286285416.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711286293075.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711286298096.jpg"></p>', '2024-04-15 11:22:15', 2, 39.9),
	(1710235333451, '2024-03-12 09:22:13', '新年钥匙扣', '饰品类', 'http://localhost:8080/feiwuzhiwenhua/upload/1711286498684.png,http://localhost:8080/feiwuzhiwenhua/upload/1711286504532.png', '中国风 复古 钥匙扣', 'other', '<p><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711286513277.jpg"><img src="http://localhost:8080/feiwuzhiwenhua/upload/1711286518387.jpg"></p>', '2024-04-15 11:22:45', 5, 29.9);

-- 导出  表 s0811.shenqing 结构
DROP TABLE IF EXISTS `shenqing`;
CREATE TABLE IF NOT EXISTS `shenqing` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yh_types` bigint DEFAULT NULL COMMENT '申请人',
  `shenqing_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '申请时间',
  `sf_types` tinyint DEFAULT NULL COMMENT '是否同意',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

-- 正在导出表  s0811.shenqing 的数据：~4 rows (大约)
REPLACE INTO `shenqing` (`id`, `yh_types`, `shenqing_time`, `sf_types`) VALUES
	(4, 1710147003038, '2024-03-12 09:41:53', 1),
	(5, 1710919356507, '2024-03-20 09:34:41', 2),
	(6, 1711098535814, '2024-03-22 09:19:10', 2),
	(7, 1711098634495, '2024-03-22 09:26:53', 2),
	(8, 1711098686127, '2024-03-22 09:30:56', 2);

-- 导出  表 s0811.storeup 结构
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710923249143 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

-- 正在导出表  s0811.storeup 的数据：~4 rows (大约)
REPLACE INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1705025244391, '2024-01-12 02:07:23', 11, 42, 'shangpinxinxi', '商品名称2', 'http://localhost:8080/feiwuzhiwenhua/upload/1616074525410.jpg'),
	(1710230304270, '2024-03-12 07:58:23', 1710147003038, 43, 'shangpinxinxi', '扇子古风女苏绣双面绣云锦特色中国风工艺品团扇', 'http://localhost:8080/feiwuzhiwenhua/upload/1710229624384.png'),
	(1710923249142, '2024-03-20 08:27:28', 1710147003038, 42, 'shangpinxinxi', '兵马俑摆件', 'http://localhost:8080/feiwuzhiwenhua/upload/1710228141374.png');

-- 导出  表 s0811.token 结构
DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

-- 正在导出表  s0811.token 的数据：~7 rows (大约)
REPLACE INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1710147003038, 's0811', 'yonghu', '用户', 'bpe5d4uonrcn8v32vgxmg60orpm01lzg', '2024-03-11 08:50:20', '2024-04-15 04:26:50'),
	(2, 1710919356507, '11', 'yonghu', '用户', 'kmec923k08ug2b9u8b2eooh76o6yqvxt', '2024-03-20 08:47:35', '2024-03-20 02:42:50'),
	(3, 1711098535814, '张三', 'yonghu', '用户', '8q6hgyl3bxi00r80z9jx7ccu2pai6ji1', '2024-03-22 09:09:05', '2024-03-22 02:22:06'),
	(4, 1711098634495, '李四', 'yonghu', '用户', '4gy4hqcti8ung5ldq08emdu8zfv4s3pn', '2024-03-22 09:10:43', '2024-03-22 02:30:12'),
	(5, 1711098686127, '王五', 'yonghu', '用户', 'r79fgps7sq2dcvtsuw7i25d9het2jwpu', '2024-03-22 09:11:36', '2024-03-22 02:30:46'),
	(6, 1711098745264, '赵六', 'yonghu', '用户', 'rl65jytizm5q7tja7ggxxkuog54c9t8y', '2024-03-22 09:12:34', '2024-03-22 02:12:34'),
	(12, 1, 'admin', 'users', '管理员', '6djst15lgppmw6hj36g2nwjtlp1gbywf', '2024-03-22 09:41:55', '2024-04-15 03:58:05');

-- 导出  表 s0811.users 结构
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

-- 正在导出表  s0811.users 的数据：~0 rows (大约)
REPLACE INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-12-15 07:59:12');

-- 导出  表 s0811.yonghu 结构
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  `role` varchar(255) DEFAULT NULL COMMENT '身份',
  `xiangqing` varchar(255) DEFAULT NULL COMMENT '个人介绍',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1711098745265 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

-- 正在导出表  s0811.yonghu 的数据：~6 rows (大约)
REPLACE INTO `yonghu` (`id`, `addtime`, `yonghuming`, `mima`, `xingming`, `touxiang`, `xingbie`, `lianxidianhua`, `money`, `role`, `xiangqing`) VALUES
	(1710147003038, '2024-03-11 08:50:03', 's0811', '123456', '孙', 'http://localhost:8080/feiwuzhiwenhua/upload/1713178715794.png', '女', '12345678912', 1024.3, '用户', NULL),
	(1710919356507, '2024-03-20 07:22:36', '打铁花传承人', '123456', '罗铁花', 'http://localhost:8080/feiwuzhiwenhua/upload/1711283861340.png', '男', '12365478965', 0, '传承人', '<p>罗铁花</p><p><br></p><p><strong><em><u>打铁花传承人</u></em></strong></p><p><br></p><p>热爱非遗文化，精通多种失传技术，终身致力于为非遗做贡献。</p>'),
	(1711098535814, '2024-03-22 09:08:55', '风筝文化传承人', '123456', '张三', 'http://localhost:8080/feiwuzhiwenhua/upload/1711283882824.jpg', '男', '12345678912', 0, '传承人', '<p>张三</p><p><br></p><p><strong><em><u>风筝文化传承人</u></em></strong></p><p><br></p><p>从小热爱放风筝，喜欢收集各种风筝相关的纪念品。</p><p>受文化熏陶后，开始研究制作风筝的技术。</p>'),
	(1711098634495, '2024-03-22 09:10:34', '皮影戏文化传承人', '123456', '李四', 'http://localhost:8080/feiwuzhiwenhua/upload/1711283899122.jpeg', '女', '12345678913', 0, '传承人', '<p>李四</p><p><br></p><p><strong><em><u>皮影戏文化传承人</u></em></strong></p><p><br></p><p>热爱皮影戏，年幼时在父辈的熏陶下爱上皮影戏，长大后开始一门心思的钻研皮影的制作以及表演。</p>'),
	(1711098686127, '2024-03-22 09:11:26', '舞狮文化传承人', '123456', '王五', 'http://localhost:8080/feiwuzhiwenhua/upload/1711283916433.jpg', '男', '12345678914', 0, '传承人', '<p>王五</p><p><br></p><p><strong><em><u>舞狮文化传承人</u></em></strong></p><p><br></p><p>自幼习武，热爱舞狮表演，喜欢中国传统文化。</p>'),
	(1711098745264, '2024-03-22 09:12:25', '赵六', '123456', '赵六', 'http://localhost:8080/feiwuzhiwenhua/upload/1711283989095.jpg', '男', '12345678915', 0, '用户', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
s0811s0811news