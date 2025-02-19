USE [master]
GO
/****** Object:  Database [HotWord]    Script Date: 08/28/2019 17:05:09 ******/
CREATE DATABASE [HotWord] ON  PRIMARY 
( NAME = N'HotWord', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\HotWord.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HotWord_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\HotWord_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HotWord] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HotWord].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HotWord] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [HotWord] SET ANSI_NULLS OFF
GO
ALTER DATABASE [HotWord] SET ANSI_PADDING OFF
GO
ALTER DATABASE [HotWord] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [HotWord] SET ARITHABORT OFF
GO
ALTER DATABASE [HotWord] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [HotWord] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [HotWord] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [HotWord] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [HotWord] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [HotWord] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [HotWord] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [HotWord] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [HotWord] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [HotWord] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [HotWord] SET  DISABLE_BROKER
GO
ALTER DATABASE [HotWord] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [HotWord] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [HotWord] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [HotWord] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [HotWord] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [HotWord] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [HotWord] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [HotWord] SET  READ_WRITE
GO
ALTER DATABASE [HotWord] SET RECOVERY SIMPLE
GO
ALTER DATABASE [HotWord] SET  MULTI_USER
GO
ALTER DATABASE [HotWord] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [HotWord] SET DB_CHAINING OFF
GO
USE [HotWord]
GO
/****** Object:  Table [dbo].[type]    Script Date: 08/28/2019 17:05:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type](
	[father] [nvarchar](100) NULL,
	[type] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[type] ([father], [type]) VALUES (N'编程语言', N'1')
INSERT [dbo].[type] ([father], [type]) VALUES (N'风云人物', N'2')
INSERT [dbo].[type] ([father], [type]) VALUES (N'技术相关', N'3')
INSERT [dbo].[type] ([father], [type]) VALUES (N'其他', N'4')
/****** Object:  Table [dbo].[HotWord]    Script Date: 08/28/2019 17:05:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotWord](
	[name] [nvarchar](50) NULL,
	[type] [nvarchar](50) NOT NULL,
	[content] [nvarchar](4000) NULL,
	[num] [nchar](10) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[HotWord] ([name], [type], [content], [num]) VALUES (N'大数据', N'3', N'大数据（big data），指无法在一定时间范围内用常规软件工具进行捕捉、管理和处理的数据集合，是需要新处理模式才能具有更强的决策力、洞察发现力和流程优化能力的海量、高增长率和多样化的信息资产。在维克托·迈尔-舍恩伯格及肯尼斯·库克耶编写的《大数据时代》中大数据指不用随机分析法（抽样调查）这样捷径，而采用所有数据进行分析处理。大数据的5V特点（IBM提出）：Volume（大量）、Velocity（高速）、Variety（多样）、Value（低价值密度）、Veracity（真实性）。...', N'41        ')
INSERT [dbo].[HotWord] ([name], [type], [content], [num]) VALUES (N'区块链', N'3', N'区块链是分布式数据存储、点对点传输、共识机制、加密算法等计算机技术的新型应用模式。1区块链（Blockchain），是比特币的一个重要概念，它本质上是一个去中心化的数据库，同时作为比特币的底层技术，是一串使用密码学方法相关联产生的数据块，每一个数据块中包含了一批次比特币网络交易的信息，用于验证其信息的有效性（防伪）和生成下一个区块。2比特币白皮书英文原版3其实并未出现 blockchain 一词，而是使用的 chain of blocks。最早的比特币白皮书中文翻译版4中，将 chain of blocks 翻译成了区块链。这是“区块链”这一中文词最早的出现时间。国家互联网信息办公室2019年1月10日发布《区块链信息服务管理规定》，自2019年2月15日起施行。5...', N'7         ')
INSERT [dbo].[HotWord] ([name], [type], [content], [num]) VALUES (N'java', N'1', N'Java是一门面向对象编程语言，不仅吸收了C++语言的各种优点，还摒弃了C++里难以理解的多继承、指针等概念，因此Java语言具有功能强大和简单易用两个特征。Java语言作为静态面向对象编程语言的代表，极好地实现了面向对象理论，允许程序员以优雅的思维方式进行复杂的编程。Java具有简单性、面向对象、分布式、健壮性、安全性、平台独立与可移植性、多线程、动态性等特点。Java可以编写桌面应用程序、Web应用程序、分布式系统和嵌入式系统应用程序等。...', N'3         ')
INSERT [dbo].[HotWord] ([name], [type], [content], [num]) VALUES (N'马云', N'2', N'马云，男，汉族，中共党员1，1964年9月10日生于浙江省杭州市，祖籍浙江省嵊州市谷来镇， 阿里巴巴集团主要创始人，现担任阿里巴巴集团董事局主席、日本软银董事、大自然保护协会中国理事会主席兼全球董事会成员、华谊兄弟董事、生命科学突破奖基金会董事、联合国数字合作高级别小组联合主席。231988年毕业于杭州师范学院外语系，同年担任杭州电子工业学院英文及国际贸易教师，1995年创办中国第一家互联网商业信息发布网站“中国黄页”，1998年出任中国国际电子商务中心国富通信息技术发展有限公司总经理，1999年创办阿里巴巴，并担任阿里集团CEO、董事局主席。2013年5月10日，辞任阿里巴巴集团CEO，继续担任阿里集团董事局主席。46月30日，马云当选全球互联网治理联盟理事会联合主席。52017年10月28日，马云在个人微博上公布了一张电影海报，并配以大有深意的“那一夜，那一梦”六个字，证实参演影片《功...', N'2         ')
INSERT [dbo].[HotWord] ([name], [type], [content], [num]) VALUES (N'马化腾', N'2', N'马化腾，1971年10月29日生于原广东省海南岛东方市八所港（今海南省东方市）1，祖籍广东省汕头市。腾讯公司主要创办人之一。现任腾讯公司董事会主席兼首席执行官；全国青联副主席；全国人大代表。21984年随父母从海南迁至深圳，1993年毕业于深圳大学计算机系。同年进入深圳润迅通讯发展有限公司开始寻呼系统的研究开发工作。1995年创建惠多网深圳站，名为ponysoft。1998年，马化腾和同学张志东注册成立"深圳市腾讯计算机系统有限公司"，随后陈一丹、许晨晔、曾李青相继加入。2017年8月7日，腾讯股价盘中再创历史新高价320.6港元，马化腾身家361亿美元成为中国首富。32018年4月，获《时代周刊》2018年全球最具影响力人物荣誉。42018年10月25日，福布斯发布了2018福布斯中国400富豪榜，马化腾凭借328亿美元的身家蝉联榜单第二名。2018年12月18日，党...', N'2         ')
INSERT [dbo].[HotWord] ([name], [type], [content], [num]) VALUES (N'雷军', N'2', N'雷军，1969年12月出生于湖北仙桃，毕业于武汉大学，是中国大陆著名天使投资人。1雷军作为中国互联网代表人物及全球年度电子商务创新领袖人物1，曾获中国经济年度人物及十大财智领袖人物、中国互联网年度人物2等多项国内外荣誉，并当选《福布斯》（亚洲版）2014年度商业人物。同时兼任金山、YY、猎豹移动等三家上市公司董事长。雷军曾任两届海淀区政协委员，2012年当选北京市人大代表，2013年2月当选全国人民代表大会代表。2017年12月，荣获2017“质量之光”年度质量人物奖。3现任第十三届全国人大代表，全国工商联副主席，北京市工商联副主席，小米科技有限责任公司董事长兼首席执行官，...', N'2         ')
INSERT [dbo].[HotWord] ([name], [type], [content], [num]) VALUES (N'人工智能', N'3', N'人工智能（Artificial Intelligence），英文缩写为AI。它是研究、开发用于模拟、延伸和扩展人的智能的理论、方法、技术及应用系统的一门新的技术科学。人工智能是计算机科学的一个分支，它企图了解智能的实质，并生产出一种新的能以人类智能相似的方式做出反应的智能机器，该领域的研究包括机器人、语言识别、图像识别、自然语言处理和专家系统等。人工智能从诞生以来，理论和技术日益成熟，应用领域也不断扩大，可以设想，未来人工智能带来的科技产品，将会是人类智慧的“容器”。人工智能可以对人的意识、思维的信息过程的模拟。人工智能不是人的智能，但能像人那样思考、也可能超过人的智能。人工智能是一门极富挑战性的科学，从事这项工作的人必须懂得计算机知识，心理学和哲学。人工智能是包括十分广泛的科学，它由不同的领域组成，如机器学习，计算机视觉等等，总的说来，人工智能研究的一个主要目标是使机器能够胜任一些通常需...', N'1         ')
INSERT [dbo].[HotWord] ([name], [type], [content], [num]) VALUES (N'AI', N'3', N'人工智能（Artificial Intelligence），英文缩写为AI。它是研究、开发用于模拟、延伸和扩展人的智能的理论、方法、技术及应用系统的一门新的技术科学。人工智能是计算机科学的一个分支，它企图了解智能的实质，并生产出一种新的能以人类智能相似的方式做出反应的智能机器，该领域的研究包括机器人、语言识别、图像识别、自然语言处理和专家系统等。人工智能从诞生以来，理论和技术日益成熟，应用领域也不断扩大，可以设想，未来人工智能带来的科技产品，将会是人类智慧的“容器”。人工智能可以对人的意识、思维的信息过程的模拟。人工智能不是人的智能，但能像人那样思考、也可能超过人的智能。人工智能是一门极富挑战性的科学，从事这项工作的人必须懂得计算机知识，心理学和哲学。人工智能是包括十分广泛的科学，它由不同的领域组成，如机器学习，计算机视觉等等，总的说来，人工智能研究的一个主要目标是使机器能够胜任一些通常需...', N'1         ')
INSERT [dbo].[HotWord] ([name], [type], [content], [num]) VALUES (N'rfid', N'4', N'射频识别，RFID（Radio Frequency Identification）技术，又称无线射频识别，是一种通信技术，可通过无线电讯号识别特定目标并读写相关数据，而无需识别系统与特定目标之间建立机械或光学接触。射频的话，一般是微波，1-100GHz，适用于短距离识别通信。RFID读写器也分移动式的和固定式的，目前RFID技术应用很广，如：图书馆，门禁系统，食品安全溯源等。...', N'1         ')
INSERT [dbo].[HotWord] ([name], [type], [content], [num]) VALUES (N'小米', N'4', N'小米：小米公司小米：禾本科狗尾草属一年生草本小米：电视剧《桃花小妹》中人物小米：电视剧《武林外传》中人物小米：周刊神奇宝贝放送局（小刚的母亲）小米：汕尾市特色小吃小米：我的狐仙老婆中人物小米：电视剧《神犬奇兵》军犬小米：动画《野生动物宝宝》角色小米：动画《赛尔号》中的精灵小米：《为美好的世界献上祝福！》里的角色小米：电影《美食总动员》中角色...', N'1         ')
INSERT [dbo].[HotWord] ([name], [type], [content], [num]) VALUES (N'卷积', N'3', N'在泛函分析中，卷积、旋积或摺积(英语：Convolution)是通过两个函数f 和g 生成第三个函数的一种数学算子，表征函数f 与g经过翻转和平移的重叠部分的面积。如果将参加卷积的一个函数看作区间的指示函数，卷积还可以被看作是“滑动平均”的推广。...', N'1         ')
INSERT [dbo].[HotWord] ([name], [type], [content], [num]) VALUES (N'适配器模式', N'3', N'在计算机编程中，适配器模式（有时候也称包装样式或者包装）将一个类的接口适配成用户所期待的。一个适配允许通常因为接口不兼容而不能在一起工作的类工作在一起，做法是将类自己的接口包裹在一个已存在的类中。...', N'1         ')
INSERT [dbo].[HotWord] ([name], [type], [content], [num]) VALUES (N'大主宰', N'4', N'《大主宰》是天蚕土豆在2013年创作的第四部长篇小说，首发于起点中文网，与《斗破苍穹》和《武动乾坤》有联系，讲述少年牧尘不断成长的的故事。2016年11月大主宰荣登2016中国泛娱乐指数盛典中国IP价值榜-网络文学榜top10。2017年7月12日，《2017猫片 胡润原创文学IP价值榜》发布，《大主宰》位列41位。...', N'1         ')
INSERT [dbo].[HotWord] ([name], [type], [content], [num]) VALUES (N'卷积神经网络', N'3', N'卷积神经网络（Convolutional Neural Networks, CNN）是一类包含卷积计算且具有深度结构的前馈神经网络（Feedforward Neural Networks），是深度学习（deep learning）的代表算法之一。由于卷积神经网络能够进行平移不变分类（shift-invariant classification），因此也被称为“平移不变人工神经网络（Shift-Invariant Artificial Neural Networks, SIANN）”。对卷积神经网络的研究始于二十世纪80至90年代，时间延迟网络和LeNet-5是最早出现的卷积神经网络；在二十一世纪后，随着深度学习理论的提出和数值计算设备的改进，卷积神经网络得到了快速发展，并被大量应用于计算机视觉、自然语言处理等领域。卷积神经网络仿造生物的视知觉（visual perception）机制构建，...', N'8         ')
INSERT [dbo].[HotWord] ([name], [type], [content], [num]) VALUES (N'工业互联网', N'4', N'工业互联网是全球工业系统与高级计算、分析、感应技术以及互联网连接融合的结果。工业互联网通过智能机器间的连接并最终将人机连接，结合软件和大数据分析，重构全球工业、激发生产力，让世界更美好、更快速、更安全、更清洁且更经济。中国工业互联网标识解析国家顶级节点落户在北京、上海、广州、武汉、重庆五大城市。2018年7月，工业和信息化部印发了《工业互联网平台建设及推广指南》和《工业互联网平台评价方法》。...', N'2         ')
INSERT [dbo].[HotWord] ([name], [type], [content], [num]) VALUES (N'互联网', N'3', N'互联网（英语：Internet），又称国际网络，互联网始于1969年美国的阿帕网。是网络与网络之间所串连成的庞大网络，这些网络以一组通用的协议相连，形成逻辑上的单一巨大国际网络。通常internet泛指互联网，而Internet则特指因特网。这种将计算机网络互相联接在一起的方法可称作“网络互联”，在这基础上发展出覆盖全世界的全球性互联网络称互联网，即是互相连接一起的网络结构。互联网并不等同万维网，万维网只是一建基于超文本相互链接而成的全球性系统，且是互联网所能提供的服务其中之一。...', N'1         ')
INSERT [dbo].[HotWord] ([name], [type], [content], [num]) VALUES (N'条形码', N'4', N'条形码(barcode)是将宽度不等的多个黑条和空白，按照一定的编码规则排列，用以表达一组信息的图形标识符。常见的条形码是由反射率相差很大的黑条（简称条）和白条（简称空）排成的平行线图案。条形码可以标出物品的生产国、制造厂家、商品名称、生产日期、图书分类号、邮件起止地点、类别、日期等许多信息，因而在商品流通、图书管理、邮政管理、银行系统等许多领域都得到广泛的应用。...', N'1         ')
INSERT [dbo].[HotWord] ([name], [type], [content], [num]) VALUES (N'php', N'1', N'PHP（外文名:PHP: Hypertext Preprocessor，中文名：“超文本预处理器”）是一种通用开源脚本语言。语法吸收了C语言、Java和Perl的特点，利于学习，使用广泛，主要适用于Web开发领域。PHP 独特的语法混合了C、Java、Perl以及PHP自创的语法。它可以比CGI或者Perl更快速地执行动态网页。用PHP做出的动态页面与其他的编程语言相比，PHP是将程序嵌入到HTML（标准通用标记语言下的一个应用）文档中去执行，执行效率比完全生成HTML标记的CGI要高许多；PHP还可以执行...', N'1         ')
INSERT [dbo].[HotWord] ([name], [type], [content], [num]) VALUES (N'智慧城市', N'4', N'智慧城市（英语：Smart City）是指利用各种信息技术或创新意念，集成城市的组成系统和服务，以提升资源运用的效率，优化城市管理和服务，以及改善市民生活质量。智慧城市把新一代信息技术充分运用在城市的各行各业之中的基于知识社会下一代创新（创新2.0）的城市信息化高级形态，实现信息化、工业化与城镇化深度融合，有助于缓解“大城市病”，提高城镇化质量，实现精细化和动态管理，并提升城市管理成效和改善市民生活质量。关于智慧城市的具体定义比较广泛，目前在国际上被广泛认同的定义是，智慧城市是新一代信息技术支撑、知识社会下一代创新（创新2.0）环境下的城市形态，强调智慧城市不仅仅是物联网、云计算等新一代信息技术的应用，更重要的是通过面向知识社会的创新2.0的方法论应用，构建用户创新、开放创新、大众创新、协同创新为特征的城市可持续创新生态。...', N'1         ')
INSERT [dbo].[HotWord] ([name], [type], [content], [num]) VALUES (N'单例模式', N'3', N'单例模式，是一种常用的软件设计模式。在它的核心结构中只包含一个被称为单例的特殊类。通过单例模式可以保证系统中，应用该模式的一个类只有一个实例。即一个类只有一个对象实例。...', N'1         ')
INSERT [dbo].[HotWord] ([name], [type], [content], [num]) VALUES (N'量子计算', N'4', N'量子计算是一种遵循量子力学规律调控量子信息单元进行计算的新型计算模式。对照于传统的通用计算机，其理论模型是通用图灵机；通用的量子计算机，其理论模型是用量子力学规律重新诠释的通用图灵机。从可计算的问题来看，量子计算机只能解决传统计算机所能解决的问题，但是从计算的效率上，由于量子力学叠加性的存在，目前某些已知的量子算法在处理问题时速度要快于传统的通用计算机。...', N'2         ')
INSERT [dbo].[HotWord] ([name], [type], [content], [num]) VALUES (N'神经网络', N'3', N'神经网络可以指向两种，一个是生物神经网络，一个是人工神经网络。生物神经网络：一般指生物的大脑神经元，细胞，触点等组成的网络，用于产生生物的意识，帮助生物进行思考和行动。人工神经网络（Artificial Neural Networks，简写为ANNs）也简称为神经网络（NNs）或称作连接模型（Connection Model），它是一种模仿动物神经网络行为特征，进行分布式并行信息处理的算法数学模型。这种网络依靠系统的复杂程度，通过调整内部大量节点之间相互连接的关系，从而达到处理信息的目的。人工神经网络：是一种应用类似于大脑神经突触联接的结构进行信息处理的数学模型。在工程与学术界也常直接简称为“神经网络”或类神经网络。...', N'2         ')
INSERT [dbo].[HotWord] ([name], [type], [content], [num]) VALUES (N'C语言', N'1', N'C语言是一门通用计算机编程语言，广泛应用于底层开发。C语言的设计目标是提供一种能以简易的方式编译、处理低级存储器、产生少量的机器码以及不需要任何运行环境支持便能运行的编程语言。尽管C语言提供了许多低级处理的功能，但仍然保持着良好跨平台的特性，以一个标准规格写出的C语言程序可在许多电脑平台上进行编译，甚至包含一些嵌入式处理器（单片机或称MCU）以及超级电脑等作业平台。二十世纪八十年代，为了避免各开发厂商用的C语言语法产生差异，由美国国家标准局为C语言制定了一套完整的美国国家标准语法，称为ANSI C，作为C语言最初的标准。1目前2011年12月8日，国际标准化组织（ISO）和国际电工委员会（IEC）发布的C11标准是C语言的第三个官方标准，也是C语言的最新标准，该标准更好的支持了汉字函数名和汉字标识符，一定程度上实现了汉字编程。C语言是一门面向过程的计算机编程语言，与C++，Java等面向对...', N'1         ')
