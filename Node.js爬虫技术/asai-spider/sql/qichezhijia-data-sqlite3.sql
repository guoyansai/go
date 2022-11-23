PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for as_brand
-- ----------------------------
DROP TABLE IF EXISTS `as_brand`;
CREATE TABLE `as_brand`  (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  `firstLetter` TEXT,
  `brandId` integer DEFAULT 0,
  `brandTitle` TEXT,
  `brandImg` TEXT,
  `dlolr` integer DEFAULT 0,
  `urlBrand` TEXT,
  `imgBrand` TEXT,
  `tm` TEXT,
  `xy` integer DEFAULT 1
);

-- ----------------------------
-- Records of as_brand
-- ----------------------------

-- ----------------------------
-- Table structure for as_brand_group
-- ----------------------------
DROP TABLE IF EXISTS `as_brand_group`;
CREATE TABLE `as_brand_group`  (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  `firstLetter` TEXT,
  `brandId` integer DEFAULT 0,
  `brandGroupId` integer DEFAULT 0,
  `brandGroupTitle` TEXT,
  `urlBrand2` TEXT,
  `tm` TEXT,
  `xy` integer DEFAULT 1
);

-- ----------------------------
-- Records of as_brand_group
-- ----------------------------

-- ----------------------------
-- Table structure for as_car
-- ----------------------------
DROP TABLE IF EXISTS `as_car`;
CREATE TABLE `as_car`  (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  `firstLetter` TEXT,
  `brandId` integer DEFAULT 0,
  `brandGroupId` integer DEFAULT 0,
  `seriesId` integer DEFAULT 0,
  `seriesName` TEXT,
  `specId` integer DEFAULT 0,
  `specName` TEXT,
  `specClass` TEXT,
  `carYear` TEXT,
  `carPrice` TEXT,
  `driveform` TEXT,
  `gearbox` TEXT,
  `status` int NULL DEFAULT 0,
  `tm` TEXT,
  `xy` integer DEFAULT 1
);

-- ----------------------------
-- Records of as_car
-- ----------------------------

-- ----------------------------
-- Table structure for as_car_param
-- ----------------------------
DROP TABLE IF EXISTS `as_car_param`;
CREATE TABLE `as_car_param`  (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  `p_gengxinshijian` TEXT,
  `p_shouzimu` TEXT,
  `p_pinpai` TEXT,
  `p_pinpai_id` TEXT,
  `p_pinpai_logo` TEXT,
  `p_chexi` TEXT,
  `p_chexi_id` TEXT,
  `p_chexizhanshitu` TEXT,
  `p_chexingmingcheng` TEXT,
  `p_chexing_id` TEXT,
  `p_xiaoshouzhuangtai` TEXT,
  `p_changshang` TEXT,
  `p_changshang_id` TEXT,
  `p_niankuan` TEXT,
  `p_shangshishijian` TEXT,
  `p_changshangzhidaojia` TEXT,
  `p_changshangzhidaojia_yuan` TEXT,
  `p_jibie` TEXT,
  `p_nengyuanleixing` TEXT,
  `p_huanbaobiaozhun` TEXT,
  `p_WLTCchundianxuhanglicheng_km` TEXT,
  `p_CLTCchundianxuhanglicheng_km` TEXT,
  `p_gongxinbuchundianxuhanglicheng_km` TEXT,
  `p_kuaichongshijian_xiaoshi` TEXT,
  `p_manchongshijian_xiaoshi` TEXT,
  `p_kuaichongdianliangbaifenbi` TEXT,
  `p_zuidagonglv_kW` TEXT,
  `p_zuidaniuju_N_m` TEXT,
  `p_fadongji` TEXT,
  `p_diandongji_Ps` TEXT,
  `p_biansuxiang` TEXT,
  `p_changkuangao_mm` TEXT,
  `p_cheshenjiegou` TEXT,
  `p_zuigaochesu_km_h` TEXT,
  `p_guanfang0_100km_h_jiasu_s` TEXT,
  `p_shice0_100km_h_jiasu_s` TEXT,
  `p_shice100_0km_h_zhidong_m` TEXT,
  `p_WLTCzongheyouhao_L_100km` TEXT,
  `p_zuidihedianzhuangtaiyouhao_L_100km` TEXT,
  `p_shiceyouhao_L_100km` TEXT,
  `p_shicexuhanglicheng_km` TEXT,
  `p_zhengchezhibao` TEXT,
  `p_changdu_mm` TEXT,
  `p_kuandu_mm` TEXT,
  `p_gaodu_mm` TEXT,
  `p_zhouju_mm` TEXT,
  `p_qianlunju_mm` TEXT,
  `p_houlunju_mm` TEXT,
  `p_jiejinjiao_°` TEXT,
  `p_liqujiao_°` TEXT,
  `p_zuixiaolidijianxi_mm` TEXT,
  `p_chemenshu_ge` TEXT,
  `p_zuoweishu_ge` TEXT,
  `p_youxiangrongji_L` TEXT,
  `p_houbeixiangrongji_L` TEXT,
  `p_xinglixiangrongji_L` TEXT,
  `p_zhengbeizhiliang_kg` TEXT,
  `p_zuidamanzaizhiliang_kg` TEXT,
  `p_fadongjixinghao` TEXT,
  `p_pailiang_mL` TEXT,
  `p_pailiang_L` TEXT,
  `p_jinqixingshi` TEXT,
  `p_fadongjibuju` TEXT,
  `p_qigangpailiexingshi` TEXT,
  `p_qigangshu_ge` TEXT,
  `p_meigangqimenshu_ge` TEXT,
  `p_yasuobi` TEXT,
  `p_peiqijigou` TEXT,
  `p_gangjing_mm` TEXT,
  `p_xingcheng_mm` TEXT,
  `p_zuidamali_Ps` TEXT,
  `p_zuidagonglvzhuansu_rpm` TEXT,
  `p_zuidaniujuzhuansu_rpm` TEXT,
  `p_fadongjiteyoujishu` TEXT,
  `p_zuidajinggonglv_kW` TEXT,
  `p_ranliaoxingshi` TEXT,
  `p_ranyoubiaohao` TEXT,
  `p_gongyoufangshi` TEXT,
  `p_ganggaicailiao` TEXT,
  `p_gangticailiao` TEXT,
  `p_dianjileixing` TEXT,
  `p_diandongjizonggonglv_kW` TEXT,
  `p_diandongjizongniuju_N_m` TEXT,
  `p_qiandiandongjizuidagonglv_kW` TEXT,
  `p_qiandiandongjizuidaniuju_N_m` TEXT,
  `p_houdiandongjizuidagonglv_kW` TEXT,
  `p_houdiandongjizuidaniuju_N_m` TEXT,
  `p_xitongzonghegonglv_kW` TEXT,
  `p_xitongzonghegonglv_Ps` TEXT,
  `p_xitongzongheniuju_N_m` TEXT,
  `p_qudongdianjishu` TEXT,
  `p_dianjibuju` TEXT,
  `p_dianchileixing` TEXT,
  `p_dianxinpinpai` TEXT,
  `p_dianchilengquefangshi` TEXT,
  `p_huandian` TEXT,
  `p_dianchinengliang_kWh` TEXT,
  `p_baigonglihaodianliang_kWh_100km` TEXT,
  `p_dianchizuzhibao` TEXT,
  `p_kuaichonggonglv_kW` TEXT,
  `p_kuaichongdianliang` TEXT,
  `p_dangweigeshu` TEXT,
  `p_biansuxiangleixing` TEXT,
  `p_jiancheng` TEXT,
  `p_qudongfangshi` TEXT,
  `p_siquxingshi` TEXT,
  `p_qianxuanjialeixing` TEXT,
  `p_houxuanjialeixing` TEXT,
  `p_zhulileixing` TEXT,
  `p_chetijiegou` TEXT,
  `p_qianzhidongqileixing` TEXT,
  `p_houzhidongqileixing` TEXT,
  `p_zhuchezhidongleixing` TEXT,
  `p_qianluntaiguige` TEXT,
  `p_houluntaiguige` TEXT,
  `p_beitaiguige` TEXT,
  `p_zhu_fujiashizuoanquanqinang` TEXT,
  `p_qian_houpaiceqinang` TEXT,
  `p_qian_houpaitoubuqinang_qilian` TEXT,
  `p_xibuqinang` TEXT,
  `p_fujiashizuodianshiqinang` TEXT,
  `p_houpaianquandaishiqinang` TEXT,
  `p_houpaizuoyifangxiahuaqinang` TEXT,
  `p_houpaizhongyanganquanqinang` TEXT,
  `p_beidongxingrenbaohu` TEXT,
  `p_taiyajiancegongneng` TEXT,
  `p_queqibaoyongluntai` TEXT,
  `p_anquandaiweixitixing` TEXT,
  `p_ISOFIXertongzuoyijiekou` TEXT,
  `p_ABSfangbaosi` TEXT,
  `p_zhidonglifenpei_EBD_CBCdeng` TEXT,
  `p_shachefuzhu_EBA_BAS_BAdeng` TEXT,
  `p_qianyinlikongzhi_ASR_TCS_TRCdeng` TEXT,
  `p_cheshenwendingkongzhi_ESC_ESP_DSCdeng` TEXT,
  `p_bingxianfuzhu` TEXT,
  `p_chedaopianliyujingxitong` TEXT,
  `p_chedaobaochifuzhuxitong` TEXT,
  `p_daolujiaotongbiaozhishibie` TEXT,
  `p_zhudongshache_zhudonganquanxitong` TEXT,
  `p_yeshixitong` TEXT,
  `p_pilaojiashitishi` TEXT,
  `p_DOWkaimenyujing` TEXT,
  `p_qianfangpengzhuangyujing` TEXT,
  `p_houfangpengzhuangyujing` TEXT,
  `p_qian_houzhucheleida` TEXT,
  `p_jiashifuzhuyingxiang` TEXT,
  `p_toumingdipan_540duyingxiang` TEXT,
  `p_daochecheceyujingxitong` TEXT,
  `p_xunhangxitong` TEXT,
  `p_jiashimoshiqiehuan` TEXT,
  `p_zidongbocheruwei` TEXT,
  `p_zidongbiandaofuzhu` TEXT,
  `p_yuanchengzhaohuan` TEXT,
  `p_fadongjiqitingjishu` TEXT,
  `p_zhidongnenglianghuishouxitong` TEXT,
  `p_zidongzhuche` TEXT,
  `p_shangpofuzhu` TEXT,
  `p_doupohuanjiang` TEXT,
  `p_kebianxuanjiagongneng` TEXT,
  `p_kongqixuanjia` TEXT,
  `p_dianciganyingxuanjia` TEXT,
  `p_kebianzhuanxiangbi` TEXT,
  `p_zhongyangchasuqisuozhigongneng` TEXT,
  `p_zhengtizhudongzhuanxiangxitong` TEXT,
  `p_xianhuachasuqi_chasusuo` TEXT,
  `p_fuzhujiashixinpian` TEXT,
  `p_xinpianzongsuanli` TEXT,
  `p_shexiangtoushuliang` TEXT,
  `p_chaoshengboleidashuliang` TEXT,
  `p_haomiboleidashuliang` TEXT,
  `p_jiguangleidashuliang` TEXT,
  `p_fuzhujiashixitong` TEXT,
  `p_fuzhujiashidengji` TEXT,
  `p_tianchuangleixing` TEXT,
  `p_yundongwaiguantaojian` TEXT,
  `p_diandongraoliuban` TEXT,
  `p_lunquancaizhi` TEXT,
  `p_diandongxihechemen` TEXT,
  `p_cehuamenxingshi` TEXT,
  `p_diandonghoubeixiang` TEXT,
  `p_ganyinghoubeixiang` TEXT,
  `p_diandonghoubeixiangweizhijiyi` TEXT,
  `p_weimenbolidulikaiqi` TEXT,
  `p_chedingxinglijia` TEXT,
  `p_fadongjidianzifangdao` TEXT,
  `p_cheneizhongkongsuo` TEXT,
  `p_yaoshileixing` TEXT,
  `p_wuyaoshiqidongxitong` TEXT,
  `p_wuyaoshijinrugongneng` TEXT,
  `p_yincangdiandongmenbashou` TEXT,
  `p_zhudongbiheshijinqigezha` TEXT,
  `p_yuanchengqidonggongneng` TEXT,
  `p_checejiaotaban` TEXT,
  `p_dianchiyujiare` TEXT,
  `p_duiwaifangdian` TEXT,
  `p_disuxingchejinggao` TEXT,
  `p_shaobingmoshi_qianliyan` TEXT,
  `p_fangxiangpancaizhi` TEXT,
  `p_fangxiangpanweizhitiaojie` TEXT,
  `p_huandangxingshi` TEXT,
  `p_duogongnengfangxiangpan` TEXT,
  `p_fangxiangpanhuandang` TEXT,
  `p_fangxiangpanjiare` TEXT,
  `p_fangxiangpanjiyi` TEXT,
  `p_xingchediannaoxianshipingmu` TEXT,
  `p_quanyejingyibiaopan` TEXT,
  `p_yejingyibiaochicun` TEXT,
  `p_HUDtaitoushuzixianshi` TEXT,
  `p_neizhixingchejiluyi` TEXT,
  `p_zhudongjiangzao` TEXT,
  `p_shoujiwuxianchongdiangongneng` TEXT,
  `p_diandongketiaotaban` TEXT,
  `p_zuoyicaizhi` TEXT,
  `p_yundongfenggezuoyi` TEXT,
  `p_zhuzuoyitiaojiefangshi` TEXT,
  `p_fuzuoyitiaojiefangshi` TEXT,
  `p_zhu_fujiashizuodiandongtiaojie` TEXT,
  `p_qianpaizuoyigongneng` TEXT,
  `p_diandongzuoyijiyigongneng` TEXT,
  `p_fujiashiweihoupaiketiaojieanniu` TEXT,
  `p_dierpaizuoyitiaojie` TEXT,
  `p_houpaizuoyidiandongtiaojie` TEXT,
  `p_houpaizuoyigongneng` TEXT,
  `p_houpaixiaozhuoban` TEXT,
  `p_dierpaidulizuoyi` TEXT,
  `p_zuoyibuju` TEXT,
  `p_houpaizuoyifangdaoxingshi` TEXT,
  `p_houpaizuoyidiandongfangdao` TEXT,
  `p_qian_houzhongyangfushou` TEXT,
  `p_houpaibeijia` TEXT,
  `p_jiare_zhilengbeijia` TEXT,
  `p_zhongkongcaisepingmu` TEXT,
  `p_zhongkongpingmuchicun` TEXT,
  `p_GPSdaohangxitong` TEXT,
  `p_fujiayuleping` TEXT,
  `p_weixingdaohangxitong` TEXT,
  `p_daohanglukuangxinxixianshi` TEXT,
  `p_ditupinpai` TEXT,
  `p_gaojingditu` TEXT,
  `p_daolujiuyuanhujiao` TEXT,
  `p_zhongkongyejingpingfenpingxianshi` TEXT,
  `p_lanya_chezaidianhua` TEXT,
  `p_shoujihulian_yingshe` TEXT,
  `p_yuyinshibiekongzhixitong` TEXT,
  `p_shoushikongzhi` TEXT,
  `p_mianbushibie` TEXT,
  `p_chelianwang` TEXT,
  `p_4G_5Gwangluo` TEXT,
  `p_OTAshengji` TEXT,
  `p_chezaidianshi` TEXT,
  `p_houpaiyejingpingmu` TEXT,
  `p_houpaikongzhiduomeiti` TEXT,
  `p_duomeiti_chongdianjiekou` TEXT,
  `p_USB_Type_Cjiekoushuliang` TEXT,
  `p_chezaiCD_DVD` TEXT,
  `p_220V_230Vdianyuan` TEXT,
  `p_xinglixiang12Vdianyuanjiekou` TEXT,
  `p_yangshengqipinpaimingcheng` TEXT,
  `p_yangshengqishuliang` TEXT,
  `p_shoujiAPPyuanchengkongzhi` TEXT,
  `p_jinguangdengguangyuan` TEXT,
  `p_yuanguangdengguangyuan` TEXT,
  `p_dengguangtesegongneng` TEXT,
  `p_LEDrijianxingchedeng` TEXT,
  `p_zishiyingyuanjinguang` TEXT,
  `p_zidongtoudeng` TEXT,
  `p_zhuanxiangfuzhudeng` TEXT,
  `p_zhuanxiangtoudeng` TEXT,
  `p_cheqianwudeng` TEXT,
  `p_qiandadengyuwumoshi` TEXT,
  `p_dadenggaoduketiao` TEXT,
  `p_dadengqingxizhuangzhi` TEXT,
  `p_dadengyanshiguanbi` TEXT,
  `p_chumoshiyuedudeng` TEXT,
  `p_cheneihuanjingfenweideng` TEXT,
  `p_qian_houdiandongchechuang` TEXT,
  `p_chechuangyijianshengjianggongneng` TEXT,
  `p_chechuangfangjiashougongneng` TEXT,
  `p_duocenggeyinboli` TEXT,
  `p_waihoushijinggongneng` TEXT,
  `p_neihoushijinggongneng` TEXT,
  `p_houfengdangzheyanglian` TEXT,
  `p_houpaicechuangzheyanglian` TEXT,
  `p_houpaiceyinsiboli` TEXT,
  `p_cheneihuazhuangjing` TEXT,
  `p_houyushua` TEXT,
  `p_ganyingyushuagongneng` TEXT,
  `p_kejiarepenshuizui` TEXT,
  `p_kongtiaowendukongzhifangshi` TEXT,
  `p_houpaidulikongtiao` TEXT,
  `p_houzuochufengkou` TEXT,
  `p_wendufenqukongzhi` TEXT,
  `p_chezaikongqijinghuaqi` TEXT,
  `p_cheneiPM2_5guolvzhuangzhi` TEXT,
  `p_fulizifashengqi` TEXT,
  `p_cheneixiangfenzhuangzhi` TEXT,
  `p_chezaibingxiang` TEXT,
  `p_waiguanyanse` TEXT,
  `p_neishiyanse` TEXT
);

-- ----------------------------
-- Records of as_car_param
-- ----------------------------

-- ----------------------------
-- Table structure for as_car_param_cn_to_en
-- ----------------------------
DROP TABLE IF EXISTS `as_car_param_cn_to_en`;
CREATE TABLE `as_car_param_cn_to_en`  (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  `param_type` TEXT,
  `cn_name` TEXT,
  `en_name` TEXT
);

-- ----------------------------
-- Records of as_car_param_cn_to_en
-- ----------------------------
INSERT INTO `as_car_param_cn_to_en` VALUES (1, '车型信息', '更新时间', 'p_gengxinshijian');
INSERT INTO `as_car_param_cn_to_en` VALUES (2, '车型信息', '首字母', 'p_shouzimu');
INSERT INTO `as_car_param_cn_to_en` VALUES (3, '车型信息', '品牌', 'p_pinpai');
INSERT INTO `as_car_param_cn_to_en` VALUES (4, '车型信息', '品牌_id', 'p_pinpai_id');
INSERT INTO `as_car_param_cn_to_en` VALUES (5, '车型信息', '品牌_logo', 'p_pinpai_logo');
INSERT INTO `as_car_param_cn_to_en` VALUES (6, '车型信息', '车系', 'p_chexi');
INSERT INTO `as_car_param_cn_to_en` VALUES (7, '车型信息', '车系_id', 'p_chexi_id');
INSERT INTO `as_car_param_cn_to_en` VALUES (8, '车型信息', '车系展示图', 'p_chexizhanshitu');
INSERT INTO `as_car_param_cn_to_en` VALUES (9, '车型信息', '车型名称', 'p_chexingmingcheng');
INSERT INTO `as_car_param_cn_to_en` VALUES (10, '车型信息', '车型_id', 'p_chexing_id');
INSERT INTO `as_car_param_cn_to_en` VALUES (11, '车型信息', '销售状态', 'p_xiaoshouzhuangtai');
INSERT INTO `as_car_param_cn_to_en` VALUES (12, '车型信息', '厂商', 'p_changshang');
INSERT INTO `as_car_param_cn_to_en` VALUES (13, '车型信息', '厂商_id', 'p_changshang_id');
INSERT INTO `as_car_param_cn_to_en` VALUES (14, '车型信息', '年款', 'p_niankuan');
INSERT INTO `as_car_param_cn_to_en` VALUES (15, '车型信息', '上市时间', 'p_shangshishijian');
INSERT INTO `as_car_param_cn_to_en` VALUES (16, '车型信息', '厂商指导价', 'p_changshangzhidaojia');
INSERT INTO `as_car_param_cn_to_en` VALUES (17, '基本参数', '厂商指导价(元)', 'p_changshangzhidaojia_yuan');
INSERT INTO `as_car_param_cn_to_en` VALUES (18, '基本参数', '级别', 'p_jibie');
INSERT INTO `as_car_param_cn_to_en` VALUES (19, '基本参数', '能源类型', 'p_nengyuanleixing');
INSERT INTO `as_car_param_cn_to_en` VALUES (20, '基本参数', '环保标准', 'p_huanbaobiaozhun');
INSERT INTO `as_car_param_cn_to_en` VALUES (21, '基本参数', 'WLTC纯电续航里程(km)', 'p_WLTCchundianxuhanglicheng_km');
INSERT INTO `as_car_param_cn_to_en` VALUES (22, '基本参数', 'CLTC纯电续航里程(km)', 'p_CLTCchundianxuhanglicheng_km');
INSERT INTO `as_car_param_cn_to_en` VALUES (23, '基本参数', '工信部纯电续航里程(km)', 'p_gongxinbuchundianxuhanglicheng_km');
INSERT INTO `as_car_param_cn_to_en` VALUES (24, '基本参数', '快充时间(小时)', 'p_kuaichongshijian_xiaoshi');
INSERT INTO `as_car_param_cn_to_en` VALUES (25, '基本参数', '慢充时间(小时)', 'p_manchongshijian_xiaoshi');
INSERT INTO `as_car_param_cn_to_en` VALUES (26, '基本参数', '快充电量百分比', 'p_kuaichongdianliangbaifenbi');
INSERT INTO `as_car_param_cn_to_en` VALUES (27, '基本参数', '最大功率(kW)', 'p_zuidagonglv_kW');
INSERT INTO `as_car_param_cn_to_en` VALUES (28, '基本参数', '最大扭矩(N·m)', 'p_zuidaniuju_N_m');
INSERT INTO `as_car_param_cn_to_en` VALUES (29, '基本参数', '发动机', 'p_fadongji');
INSERT INTO `as_car_param_cn_to_en` VALUES (30, '基本参数', '电动机(Ps)', 'p_diandongji_Ps');
INSERT INTO `as_car_param_cn_to_en` VALUES (31, '基本参数', '变速箱', 'p_biansuxiang');
INSERT INTO `as_car_param_cn_to_en` VALUES (32, '基本参数', '长*宽*高(mm)', 'p_changkuangao_mm');
INSERT INTO `as_car_param_cn_to_en` VALUES (33, '基本参数', '车身结构', 'p_cheshenjiegou');
INSERT INTO `as_car_param_cn_to_en` VALUES (34, '基本参数', '最高车速(km/h)', 'p_zuigaochesu_km_h');
INSERT INTO `as_car_param_cn_to_en` VALUES (35, '基本参数', '官方0-100km/h加速(s)', 'p_guanfang0_100km_h_jiasu_s');
INSERT INTO `as_car_param_cn_to_en` VALUES (36, '基本参数', '实测0-100km/h加速(s)', 'p_shice0_100km_h_jiasu_s');
INSERT INTO `as_car_param_cn_to_en` VALUES (37, '基本参数', '实测100-0km/h制动(m)', 'p_shice100_0km_h_zhidong_m');
INSERT INTO `as_car_param_cn_to_en` VALUES (38, '基本参数', 'WLTC综合油耗(L/100km)', 'p_WLTCzongheyouhao_L_100km');
INSERT INTO `as_car_param_cn_to_en` VALUES (39, '基本参数', '工信部综合油耗(L/100km)', 'p_gongxinbuzongheyouhao_L_100km');
INSERT INTO `as_car_param_cn_to_en` VALUES (40, '基本参数', '实测油耗(L/100km)', 'p_shiceyouhao_L_100km');
INSERT INTO `as_car_param_cn_to_en` VALUES (41, '基本参数', '实测续航里程(km)', 'p_shicexuhanglicheng_km');
INSERT INTO `as_car_param_cn_to_en` VALUES (42, '基本参数', '整车质保', 'p_zhengchezhibao');
INSERT INTO `as_car_param_cn_to_en` VALUES (43, '车身', '长度(mm)', 'p_changdu_mm');
INSERT INTO `as_car_param_cn_to_en` VALUES (44, '车身', '宽度(mm)', 'p_kuandu_mm');
INSERT INTO `as_car_param_cn_to_en` VALUES (45, '车身', '高度(mm)', 'p_gaodu_mm');
INSERT INTO `as_car_param_cn_to_en` VALUES (46, '车身', '轴距(mm)', 'p_zhouju_mm');
INSERT INTO `as_car_param_cn_to_en` VALUES (47, '车身', '前轮距(mm)', 'p_qianlunju_mm');
INSERT INTO `as_car_param_cn_to_en` VALUES (48, '车身', '后轮距(mm)', 'p_houlunju_mm');
INSERT INTO `as_car_param_cn_to_en` VALUES (49, '车身', '接近角(°)', 'p_jiejinjiao_°');
INSERT INTO `as_car_param_cn_to_en` VALUES (50, '车身', '离去角(°)', 'p_liqujiao_°');
INSERT INTO `as_car_param_cn_to_en` VALUES (51, '车身', '最小离地间隙(mm)', 'p_zuixiaolidijianxi_mm');
INSERT INTO `as_car_param_cn_to_en` VALUES (52, '车身', '车门数(个)', 'p_chemenshu_ge');
INSERT INTO `as_car_param_cn_to_en` VALUES (53, '车身', '座位数(个)', 'p_zuoweishu_ge');
INSERT INTO `as_car_param_cn_to_en` VALUES (54, '车身', '油箱容积(L)', 'p_youxiangrongji_L');
INSERT INTO `as_car_param_cn_to_en` VALUES (55, '车身', '后备箱容积(L)', 'p_houbeixiangrongji_L');
INSERT INTO `as_car_param_cn_to_en` VALUES (56, '车身', '行李厢容积(L)', 'p_xinglixiangrongji_L');
INSERT INTO `as_car_param_cn_to_en` VALUES (57, '车身', '整备质量(kg)', 'p_zhengbeizhiliang_kg');
INSERT INTO `as_car_param_cn_to_en` VALUES (58, '车身', '最大满载质量(kg)', 'p_zuidamanzaizhiliang_kg');
INSERT INTO `as_car_param_cn_to_en` VALUES (59, '发动机', '发动机型号', 'p_fadongjixinghao');
INSERT INTO `as_car_param_cn_to_en` VALUES (60, '发动机', '排量(mL)', 'p_pailiang_mL');
INSERT INTO `as_car_param_cn_to_en` VALUES (61, '发动机', '排量(L)', 'p_pailiang_L');
INSERT INTO `as_car_param_cn_to_en` VALUES (62, '发动机', '进气形式', 'p_jinqixingshi');
INSERT INTO `as_car_param_cn_to_en` VALUES (63, '发动机', '发动机布局', 'p_fadongjibuju');
INSERT INTO `as_car_param_cn_to_en` VALUES (64, '发动机', '气缸排列形式', 'p_qigangpailiexingshi');
INSERT INTO `as_car_param_cn_to_en` VALUES (65, '发动机', '气缸数(个)', 'p_qigangshu_ge');
INSERT INTO `as_car_param_cn_to_en` VALUES (66, '发动机', '每缸气门数(个)', 'p_meigangqimenshu_ge');
INSERT INTO `as_car_param_cn_to_en` VALUES (67, '发动机', '压缩比', 'p_yasuobi');
INSERT INTO `as_car_param_cn_to_en` VALUES (68, '发动机', '配气机构', 'p_peiqijigou');
INSERT INTO `as_car_param_cn_to_en` VALUES (69, '发动机', '缸径(mm)', 'p_gangjing_mm');
INSERT INTO `as_car_param_cn_to_en` VALUES (70, '发动机', '行程(mm)', 'p_xingcheng_mm');
INSERT INTO `as_car_param_cn_to_en` VALUES (71, '发动机', '最大马力(Ps)', 'p_zuidamali_Ps');
INSERT INTO `as_car_param_cn_to_en` VALUES (72, '发动机', '最大功率转速(rpm)', 'p_zuidagonglvzhuansu_rpm');
INSERT INTO `as_car_param_cn_to_en` VALUES (73, '发动机', '最大扭矩转速(rpm)', 'p_zuidaniujuzhuansu_rpm');
INSERT INTO `as_car_param_cn_to_en` VALUES (74, '发动机', '发动机特有技术', 'p_fadongjiteyoujishu');
INSERT INTO `as_car_param_cn_to_en` VALUES (75, '发动机', '燃料形式', 'p_ranliaoxingshi');
INSERT INTO `as_car_param_cn_to_en` VALUES (76, '发动机', '燃油标号', 'p_ranyoubiaohao');
INSERT INTO `as_car_param_cn_to_en` VALUES (77, '发动机', '供油方式', 'p_gongyoufangshi');
INSERT INTO `as_car_param_cn_to_en` VALUES (78, '发动机', '缸盖材料', 'p_ganggaicailiao');
INSERT INTO `as_car_param_cn_to_en` VALUES (79, '发动机', '缸体材料', 'p_gangticailiao');
INSERT INTO `as_car_param_cn_to_en` VALUES (80, '电动机', '电机类型', 'p_dianjileixing');
INSERT INTO `as_car_param_cn_to_en` VALUES (81, '电动机', '电动机总功率(kW)', 'p_diandongjizonggonglv_kW');
INSERT INTO `as_car_param_cn_to_en` VALUES (82, '电动机', '电动机总扭矩(N·m)', 'p_diandongjizongniuju_N_m');
INSERT INTO `as_car_param_cn_to_en` VALUES (83, '电动机', '前电动机最大功率(kW)', 'p_qiandiandongjizuidagonglv_kW');
INSERT INTO `as_car_param_cn_to_en` VALUES (84, '电动机', '前电动机最大扭矩(N·m)', 'p_qiandiandongjizuidaniuju_N_m');
INSERT INTO `as_car_param_cn_to_en` VALUES (85, '电动机', '后电动机最大功率(kW)', 'p_houdiandongjizuidagonglv_kW');
INSERT INTO `as_car_param_cn_to_en` VALUES (86, '电动机', '后电动机最大扭矩(N·m)', 'p_houdiandongjizuidaniuju_N_m');
INSERT INTO `as_car_param_cn_to_en` VALUES (87, '电动机', '系统综合功率(kW)', 'p_xitongzonghegonglv_kW');
INSERT INTO `as_car_param_cn_to_en` VALUES (88, '电动机', '系统综合功率(Ps)', 'p_xitongzonghegonglv_Ps');
INSERT INTO `as_car_param_cn_to_en` VALUES (89, '电动机', '系统综合扭矩(N·m)', 'p_xitongzongheniuju_N_m');
INSERT INTO `as_car_param_cn_to_en` VALUES (90, '电动机', '驱动电机数', 'p_qudongdianjishu');
INSERT INTO `as_car_param_cn_to_en` VALUES (91, '电动机', '电机布局', 'p_dianjibuju');
INSERT INTO `as_car_param_cn_to_en` VALUES (92, '电动机', '电池类型', 'p_dianchileixing');
INSERT INTO `as_car_param_cn_to_en` VALUES (93, '电动机', '电池能量(kWh)', 'p_dianchinengliang_kWh');
INSERT INTO `as_car_param_cn_to_en` VALUES (94, '电动机', '百公里耗电量(kWh/100km)', 'p_baigonglihaodianliang_kWh_100km');
INSERT INTO `as_car_param_cn_to_en` VALUES (95, '电动机', '电池品牌', 'p_dianxinpinpai');
INSERT INTO `as_car_param_cn_to_en` VALUES (96, '电动机', '电池冷却方式', 'p_dianchilengquefangshi');
INSERT INTO `as_car_param_cn_to_en` VALUES (97, '电动机', '换电', 'p_huandian');
INSERT INTO `as_car_param_cn_to_en` VALUES (98, '电动机', '电池组质保', 'p_dianchizuzhibao');
INSERT INTO `as_car_param_cn_to_en` VALUES (99, '电动机', '快充功率(kW)', 'p_kuaichonggonglv_kW');
INSERT INTO `as_car_param_cn_to_en` VALUES (100, '电动机', '快充电量(%)', 'p_kuaichongdianliang');
INSERT INTO `as_car_param_cn_to_en` VALUES (101, '变速箱', '挡位个数', 'p_dangweigeshu');
INSERT INTO `as_car_param_cn_to_en` VALUES (102, '变速箱', '变速箱类型', 'p_biansuxiangleixing');
INSERT INTO `as_car_param_cn_to_en` VALUES (103, '变速箱', '简称', 'p_jiancheng');
INSERT INTO `as_car_param_cn_to_en` VALUES (104, '底盘转向', '驱动方式', 'p_qudongfangshi');
INSERT INTO `as_car_param_cn_to_en` VALUES (105, '底盘转向', '四驱形式', 'p_siquxingshi');
INSERT INTO `as_car_param_cn_to_en` VALUES (106, '底盘转向', '前悬架类型', 'p_qianxuanjialeixing');
INSERT INTO `as_car_param_cn_to_en` VALUES (107, '底盘转向', '后悬架类型', 'p_houxuanjialeixing');
INSERT INTO `as_car_param_cn_to_en` VALUES (108, '底盘转向', '助力类型', 'p_zhulileixing');
INSERT INTO `as_car_param_cn_to_en` VALUES (109, '底盘转向', '车体结构', 'p_chetijiegou');
INSERT INTO `as_car_param_cn_to_en` VALUES (110, '车轮制动', '前制动器类型', 'p_qianzhidongqileixing');
INSERT INTO `as_car_param_cn_to_en` VALUES (111, '车轮制动', '后制动器类型', 'p_houzhidongqileixing');
INSERT INTO `as_car_param_cn_to_en` VALUES (112, '车轮制动', '驻车制动类型', 'p_zhuchezhidongleixing');
INSERT INTO `as_car_param_cn_to_en` VALUES (113, '车轮制动', '前轮胎规格', 'p_qianluntaiguige');
INSERT INTO `as_car_param_cn_to_en` VALUES (114, '车轮制动', '后轮胎规格', 'p_houluntaiguige');
INSERT INTO `as_car_param_cn_to_en` VALUES (115, '车轮制动', '备胎规格', 'p_beitaiguige');
INSERT INTO `as_car_param_cn_to_en` VALUES (116, '主/被动安全装备', '主/副驾驶座安全气囊', 'p_zhu_fujiashizuoanquanqinang');
INSERT INTO `as_car_param_cn_to_en` VALUES (117, '主/被动安全装备', '前/后排侧气囊', 'p_qian_houpaiceqinang');
INSERT INTO `as_car_param_cn_to_en` VALUES (118, '主/被动安全装备', '前/后排头部气囊(气帘)', 'p_qian_houpaitoubuqinang_qilian');
INSERT INTO `as_car_param_cn_to_en` VALUES (119, '主/被动安全装备', '膝部气囊', 'p_xibuqinang');
INSERT INTO `as_car_param_cn_to_en` VALUES (120, '主/被动安全装备', '副驾驶座垫式气囊', 'p_fujiashizuodianshiqinang');
INSERT INTO `as_car_param_cn_to_en` VALUES (121, '主/被动安全装备', '后排安全带式气囊', 'p_houpaianquandaishiqinang');
INSERT INTO `as_car_param_cn_to_en` VALUES (122, '主/被动安全装备', '后排座椅防下滑气囊', 'p_houpaizuoyifangxiahuaqinang');
INSERT INTO `as_car_param_cn_to_en` VALUES (123, '主/被动安全装备', '后排中央安全气囊', 'p_houpaizhongyanganquanqinang');
INSERT INTO `as_car_param_cn_to_en` VALUES (124, '主/被动安全装备', '被动行人保护', 'p_beidongxingrenbaohu');
INSERT INTO `as_car_param_cn_to_en` VALUES (125, '主/被动安全装备', '胎压监测功能', 'p_taiyajiancegongneng');
INSERT INTO `as_car_param_cn_to_en` VALUES (126, '主/被动安全装备', '缺气保用轮胎', 'p_queqibaoyongluntai');
INSERT INTO `as_car_param_cn_to_en` VALUES (127, '主/被动安全装备', '安全带未系提醒', 'p_anquandaiweixitixing');
INSERT INTO `as_car_param_cn_to_en` VALUES (128, '主/被动安全装备', 'ISOFIX儿童座椅接口', 'p_ISOFIXertongzuoyijiekou');
INSERT INTO `as_car_param_cn_to_en` VALUES (129, '主/被动安全装备', 'ABS防抱死', 'p_ABSfangbaosi');
INSERT INTO `as_car_param_cn_to_en` VALUES (130, '主/被动安全装备', '制动力分配(EBD/CBC等)', 'p_zhidonglifenpei_EBD_CBCdeng');
INSERT INTO `as_car_param_cn_to_en` VALUES (131, '主/被动安全装备', '刹车辅助(EBA/BAS/BA等)', 'p_shachefuzhu_EBA_BAS_BAdeng');
INSERT INTO `as_car_param_cn_to_en` VALUES (132, '主/被动安全装备', '牵引力控制(ASR/TCS/TRC等)', 'p_qianyinlikongzhi_ASR_TCS_TRCdeng');
INSERT INTO `as_car_param_cn_to_en` VALUES (133, '主/被动安全装备', '车身稳定控制(ESC/ESP/DSC等)', 'p_cheshenwendingkongzhi_ESC_ESP_DSCdeng');
INSERT INTO `as_car_param_cn_to_en` VALUES (134, '主/被动安全装备', '并线辅助', 'p_bingxianfuzhu');
INSERT INTO `as_car_param_cn_to_en` VALUES (135, '主/被动安全装备', '车道偏离预警系统', 'p_chedaopianliyujingxitong');
INSERT INTO `as_car_param_cn_to_en` VALUES (136, '主/被动安全装备', '车道保持辅助系统', 'p_chedaobaochifuzhuxitong');
INSERT INTO `as_car_param_cn_to_en` VALUES (137, '主/被动安全装备', '道路交通标识识别', 'p_daolujiaotongbiaozhishibie');
INSERT INTO `as_car_param_cn_to_en` VALUES (138, '主/被动安全装备', '主动刹车/主动安全系统', 'p_zhudongshache_zhudonganquanxitong');
INSERT INTO `as_car_param_cn_to_en` VALUES (139, '主/被动安全装备', '夜视系统', 'p_yeshixitong');
INSERT INTO `as_car_param_cn_to_en` VALUES (140, '主/被动安全装备', '疲劳驾驶提示', 'p_pilaojiashitishi');
INSERT INTO `as_car_param_cn_to_en` VALUES (141, '主/被动安全装备', 'DOW开门预警', 'p_DOWkaimenyujing');
INSERT INTO `as_car_param_cn_to_en` VALUES (142, '主/被动安全装备', '前方碰撞预警', 'p_qianfangpengzhuangyujing');
INSERT INTO `as_car_param_cn_to_en` VALUES (143, '主/被动安全装备', '后方碰撞预警', 'p_houfangpengzhuangyujing');
INSERT INTO `as_car_param_cn_to_en` VALUES (144, '辅助/操控配置', '前/后驻车雷达', 'p_qian_houzhucheleida');
INSERT INTO `as_car_param_cn_to_en` VALUES (145, '辅助/操控配置', '驾驶辅助影像', 'p_jiashifuzhuyingxiang');
INSERT INTO `as_car_param_cn_to_en` VALUES (146, '辅助/操控配置', '透明底盘/540度影像', 'p_toumingdipan_540duyingxiang');
INSERT INTO `as_car_param_cn_to_en` VALUES (147, '辅助/操控配置', '倒车车侧预警系统', 'p_daochecheceyujingxitong');
INSERT INTO `as_car_param_cn_to_en` VALUES (148, '辅助/操控配置', '巡航系统', 'p_xunhangxitong');
INSERT INTO `as_car_param_cn_to_en` VALUES (149, '辅助/操控配置', '驾驶模式切换', 'p_jiashimoshiqiehuan');
INSERT INTO `as_car_param_cn_to_en` VALUES (150, '辅助/操控配置', '自动泊车入位', 'p_zidongbocheruwei');
INSERT INTO `as_car_param_cn_to_en` VALUES (151, '辅助/操控配置', '自动变道辅助', 'p_zidongbiandaofuzhu');
INSERT INTO `as_car_param_cn_to_en` VALUES (152, '辅助/操控配置', '远程召唤', 'p_yuanchengzhaohuan');
INSERT INTO `as_car_param_cn_to_en` VALUES (153, '辅助/操控配置', '发动机启停技术', 'p_fadongjiqitingjishu');
INSERT INTO `as_car_param_cn_to_en` VALUES (154, '辅助/操控配置', '制动能量回收系统', 'p_zhidongnenglianghuishouxitong');
INSERT INTO `as_car_param_cn_to_en` VALUES (155, '辅助/操控配置', '自动驻车', 'p_zidongzhuche');
INSERT INTO `as_car_param_cn_to_en` VALUES (156, '辅助/操控配置', '上坡辅助', 'p_shangpofuzhu');
INSERT INTO `as_car_param_cn_to_en` VALUES (157, '辅助/操控配置', '陡坡缓降', 'p_doupohuanjiang');
INSERT INTO `as_car_param_cn_to_en` VALUES (158, '辅助/操控配置', '可变悬架功能', 'p_kebianxuanjiagongneng');
INSERT INTO `as_car_param_cn_to_en` VALUES (159, '辅助/操控配置', '空气悬架', 'p_kongqixuanjia');
INSERT INTO `as_car_param_cn_to_en` VALUES (160, '辅助/操控配置', '电磁感应悬架', 'p_dianciganyingxuanjia');
INSERT INTO `as_car_param_cn_to_en` VALUES (161, '辅助/操控配置', '可变转向比', 'p_kebianzhuanxiangbi');
INSERT INTO `as_car_param_cn_to_en` VALUES (162, '辅助/操控配置', '中央差速器锁止功能', 'p_zhongyangchasuqisuozhigongneng');
INSERT INTO `as_car_param_cn_to_en` VALUES (163, '辅助/操控配置', '整体主动转向系统', 'p_zhengtizhudongzhuanxiangxitong');
INSERT INTO `as_car_param_cn_to_en` VALUES (164, '辅助/操控配置', '限滑差速器/差速锁', 'p_xianhuachasuqi_chasusuo');
INSERT INTO `as_car_param_cn_to_en` VALUES (165, '辅助/操控配置', '涉水感应系统', 'p_sheshuiganyingxitong');
INSERT INTO `as_car_param_cn_to_en` VALUES (166, '辅助/操控配置', '辅助驾驶等级', 'p_fuzhujiashidengji');
INSERT INTO `as_car_param_cn_to_en` VALUES (167, '辅助/操控配置', '辅助驾驶芯片', 'p_fuzhujiashixinpian');
INSERT INTO `as_car_param_cn_to_en` VALUES (168, '辅助/操控配置', '芯片总算力', 'p_xinpianzongsuanli');
INSERT INTO `as_car_param_cn_to_en` VALUES (169, '辅助/操控配置', '摄像头数量', 'p_shexiangtoushuliang');
INSERT INTO `as_car_param_cn_to_en` VALUES (170, '辅助/操控配置', '超声波雷达数量', 'p_chaoshengboleidashuliang');
INSERT INTO `as_car_param_cn_to_en` VALUES (171, '辅助/操控配置', '毫米波雷达数量', 'p_haomiboleidashuliang');
INSERT INTO `as_car_param_cn_to_en` VALUES (172, '辅助/操控配置', '激光雷达数量', 'p_jiguangleidashuliang');
INSERT INTO `as_car_param_cn_to_en` VALUES (173, '外部/防盗配置', '天窗类型', 'p_tianchuangleixing');
INSERT INTO `as_car_param_cn_to_en` VALUES (174, '外部/防盗配置', '运动外观套件', 'p_yundongwaiguantaojian');
INSERT INTO `as_car_param_cn_to_en` VALUES (175, '外部/防盗配置', '电动扰流板', 'p_diandongraoliuban');
INSERT INTO `as_car_param_cn_to_en` VALUES (176, '外部/防盗配置', '轮圈材质', 'p_lunquancaizhi');
INSERT INTO `as_car_param_cn_to_en` VALUES (177, '外部/防盗配置', '电动吸合车门', 'p_diandongxihechemen');
INSERT INTO `as_car_param_cn_to_en` VALUES (178, '外部/防盗配置', '侧滑门形式', 'p_cehuamenxingshi');
INSERT INTO `as_car_param_cn_to_en` VALUES (179, '外部/防盗配置', '电动后备厢', 'p_diandonghoubeixiang');
INSERT INTO `as_car_param_cn_to_en` VALUES (180, '外部/防盗配置', '感应后备厢', 'p_ganyinghoubeixiang');
INSERT INTO `as_car_param_cn_to_en` VALUES (181, '外部/防盗配置', '电动后备厢位置记忆', 'p_diandonghoubeixiangweizhijiyi');
INSERT INTO `as_car_param_cn_to_en` VALUES (182, '外部/防盗配置', '尾门玻璃独立开启', 'p_weimenbolidulikaiqi');
INSERT INTO `as_car_param_cn_to_en` VALUES (183, '外部/防盗配置', '车顶行李架', 'p_chedingxinglijia');
INSERT INTO `as_car_param_cn_to_en` VALUES (184, '外部/防盗配置', '发动机电子防盗', 'p_fadongjidianzifangdao');
INSERT INTO `as_car_param_cn_to_en` VALUES (185, '外部/防盗配置', '车内中控锁', 'p_cheneizhongkongsuo');
INSERT INTO `as_car_param_cn_to_en` VALUES (186, '外部/防盗配置', '钥匙类型', 'p_yaoshileixing');
INSERT INTO `as_car_param_cn_to_en` VALUES (187, '外部/防盗配置', '无钥匙启动系统', 'p_wuyaoshiqidongxitong');
INSERT INTO `as_car_param_cn_to_en` VALUES (188, '外部/防盗配置', '无钥匙进入功能', 'p_wuyaoshijinrugongneng');
INSERT INTO `as_car_param_cn_to_en` VALUES (189, '外部/防盗配置', '隐藏电动门把手', 'p_yincangdiandongmenbashou');
INSERT INTO `as_car_param_cn_to_en` VALUES (190, '外部/防盗配置', '主动闭合式进气格栅', 'p_zhudongbiheshijinqigezha');
INSERT INTO `as_car_param_cn_to_en` VALUES (191, '外部/防盗配置', '远程启动功能', 'p_yuanchengqidonggongneng');
INSERT INTO `as_car_param_cn_to_en` VALUES (192, '外部/防盗配置', '车侧脚踏板', 'p_checejiaotaban');
INSERT INTO `as_car_param_cn_to_en` VALUES (193, '外部/防盗配置', '电池预加热', 'p_dianchiyujiare');
INSERT INTO `as_car_param_cn_to_en` VALUES (194, '外部/防盗配置', '对外放电', 'p_duiwaifangdian');
INSERT INTO `as_car_param_cn_to_en` VALUES (195, '外部/防盗配置', '低速行车警告', 'p_disuxingchejinggao');
INSERT INTO `as_car_param_cn_to_en` VALUES (196, '外部/防盗配置', '哨兵模式/千里眼', 'p_shaobingmoshi_qianliyan');
INSERT INTO `as_car_param_cn_to_en` VALUES (197, '内部配置', '方向盘材质', 'p_fangxiangpancaizhi');
INSERT INTO `as_car_param_cn_to_en` VALUES (198, '内部配置', '方向盘位置调节', 'p_fangxiangpanweizhitiaojie');
INSERT INTO `as_car_param_cn_to_en` VALUES (199, '内部配置', '换挡形式', 'p_huandangxingshi');
INSERT INTO `as_car_param_cn_to_en` VALUES (200, '内部配置', '多功能方向盘', 'p_duogongnengfangxiangpan');
INSERT INTO `as_car_param_cn_to_en` VALUES (201, '内部配置', '方向盘换挡', 'p_fangxiangpanhuandang');
INSERT INTO `as_car_param_cn_to_en` VALUES (202, '内部配置', '方向盘加热', 'p_fangxiangpanjiare');
INSERT INTO `as_car_param_cn_to_en` VALUES (203, '内部配置', '方向盘记忆', 'p_fangxiangpanjiyi');
INSERT INTO `as_car_param_cn_to_en` VALUES (204, '内部配置', '行车电脑显示屏幕', 'p_xingchediannaoxianshipingmu');
INSERT INTO `as_car_param_cn_to_en` VALUES (205, '内部配置', '全液晶仪表盘', 'p_quanyejingyibiaopan');
INSERT INTO `as_car_param_cn_to_en` VALUES (206, '内部配置', '液晶仪表尺寸', 'p_yejingyibiaochicun');
INSERT INTO `as_car_param_cn_to_en` VALUES (207, '内部配置', 'HUD抬头数字显示', 'p_HUDtaitoushuzixianshi');
INSERT INTO `as_car_param_cn_to_en` VALUES (208, '内部配置', '内置行车记录仪', 'p_neizhixingchejiluyi');
INSERT INTO `as_car_param_cn_to_en` VALUES (209, '内部配置', '主动降噪', 'p_zhudongjiangzao');
INSERT INTO `as_car_param_cn_to_en` VALUES (210, '内部配置', '手机无线充电功能', 'p_shoujiwuxianchongdiangongneng');
INSERT INTO `as_car_param_cn_to_en` VALUES (211, '内部配置', '电动可调踏板', 'p_diandongketiaotaban');
INSERT INTO `as_car_param_cn_to_en` VALUES (212, '座椅配置', '座椅材质', 'p_zuoyicaizhi');
INSERT INTO `as_car_param_cn_to_en` VALUES (213, '座椅配置', '运动风格座椅', 'p_yundongfenggezuoyi');
INSERT INTO `as_car_param_cn_to_en` VALUES (214, '座椅配置', '主座椅调节方式', 'p_zhuzuoyitiaojiefangshi');
INSERT INTO `as_car_param_cn_to_en` VALUES (215, '座椅配置', '副座椅调节方式', 'p_fuzuoyitiaojiefangshi');
INSERT INTO `as_car_param_cn_to_en` VALUES (216, '座椅配置', '主/副驾驶座电动调节', 'p_zhu_fujiashizuodiandongtiaojie');
INSERT INTO `as_car_param_cn_to_en` VALUES (217, '座椅配置', '前排座椅功能', 'p_qianpaizuoyigongneng');
INSERT INTO `as_car_param_cn_to_en` VALUES (218, '座椅配置', '电动座椅记忆功能', 'p_diandongzuoyijiyigongneng');
INSERT INTO `as_car_param_cn_to_en` VALUES (219, '座椅配置', '副驾驶位后排可调节按钮', 'p_fujiashiweihoupaiketiaojieanniu');
INSERT INTO `as_car_param_cn_to_en` VALUES (220, '座椅配置', '第二排座椅调节', 'p_dierpaizuoyitiaojie');
INSERT INTO `as_car_param_cn_to_en` VALUES (221, '座椅配置', '后排座椅电动调节', 'p_houpaizuoyidiandongtiaojie');
INSERT INTO `as_car_param_cn_to_en` VALUES (222, '座椅配置', '后排座椅功能', 'p_houpaizuoyigongneng');
INSERT INTO `as_car_param_cn_to_en` VALUES (223, '座椅配置', '后排小桌板', 'p_houpaixiaozhuoban');
INSERT INTO `as_car_param_cn_to_en` VALUES (224, '座椅配置', '第二排独立座椅', 'p_dierpaidulizuoyi');
INSERT INTO `as_car_param_cn_to_en` VALUES (225, '座椅配置', '座椅布局', 'p_zuoyibuju');
INSERT INTO `as_car_param_cn_to_en` VALUES (226, '座椅配置', '后排座椅放倒形式', 'p_houpaizuoyifangdaoxingshi');
INSERT INTO `as_car_param_cn_to_en` VALUES (227, '座椅配置', '后排座椅电动放倒', 'p_houpaizuoyidiandongfangdao');
INSERT INTO `as_car_param_cn_to_en` VALUES (228, '座椅配置', '前/后中央扶手', 'p_qian_houzhongyangfushou');
INSERT INTO `as_car_param_cn_to_en` VALUES (229, '座椅配置', '后排杯架', 'p_houpaibeijia');
INSERT INTO `as_car_param_cn_to_en` VALUES (230, '座椅配置', '加热/制冷杯架', 'p_jiare_zhilengbeijia');
INSERT INTO `as_car_param_cn_to_en` VALUES (231, '多媒体配置', '中控彩色液晶屏幕', 'p_zhongkongcaiseyejingpingmu');
INSERT INTO `as_car_param_cn_to_en` VALUES (232, '多媒体配置', '中控液晶屏尺寸', 'p_zhongkongyejingpingchicun');
INSERT INTO `as_car_param_cn_to_en` VALUES (233, '多媒体配置', 'GPS导航系统', 'p_GPSdaohangxitong');
INSERT INTO `as_car_param_cn_to_en` VALUES (234, '多媒体配置', '附加娱乐屏', 'p_fujiayuleping');
INSERT INTO `as_car_param_cn_to_en` VALUES (235, '多媒体配置', '卫星导航系统', 'p_weixingdaohangxitong');
INSERT INTO `as_car_param_cn_to_en` VALUES (236, '多媒体配置', '导航路况信息显示', 'p_daohanglukuangxinxixianshi');
INSERT INTO `as_car_param_cn_to_en` VALUES (237, '多媒体配置', '地图品牌', 'p_ditupinpai');
INSERT INTO `as_car_param_cn_to_en` VALUES (238, '多媒体配置', '高级地图', 'p_gaojingditu');
INSERT INTO `as_car_param_cn_to_en` VALUES (239, '多媒体配置', '道路救援呼叫', 'p_daolujiuyuanhujiao');
INSERT INTO `as_car_param_cn_to_en` VALUES (240, '多媒体配置', '中控液晶屏分屏显示', 'p_zhongkongyejingpingfenpingxianshi');
INSERT INTO `as_car_param_cn_to_en` VALUES (241, '多媒体配置', '蓝牙/车载电话', 'p_lanya_chezaidianhua');
INSERT INTO `as_car_param_cn_to_en` VALUES (242, '多媒体配置', '手机互联/映射', 'p_shoujihulian_yingshe');
INSERT INTO `as_car_param_cn_to_en` VALUES (243, '多媒体配置', '语音识别控制系统', 'p_yuyinshibiekongzhixitong');
INSERT INTO `as_car_param_cn_to_en` VALUES (244, '多媒体配置', '手势控制', 'p_shoushikongzhi');
INSERT INTO `as_car_param_cn_to_en` VALUES (245, '多媒体配置', '面部识别', 'p_mianbushibie');
INSERT INTO `as_car_param_cn_to_en` VALUES (246, '多媒体配置', '车联网', 'p_chelianwang');
INSERT INTO `as_car_param_cn_to_en` VALUES (247, '多媒体配置', '4G/5G网络', 'p_4G_5Gwangluo');
INSERT INTO `as_car_param_cn_to_en` VALUES (248, '多媒体配置', 'OTA升级', 'p_OTAshengji');
INSERT INTO `as_car_param_cn_to_en` VALUES (249, '多媒体配置', '车载电视', 'p_chezaidianshi');
INSERT INTO `as_car_param_cn_to_en` VALUES (250, '多媒体配置', '后排液晶屏幕', 'p_houpaiyejingpingmu');
INSERT INTO `as_car_param_cn_to_en` VALUES (251, '多媒体配置', '后排控制多媒体', 'p_houpaikongzhiduomeiti');
INSERT INTO `as_car_param_cn_to_en` VALUES (252, '多媒体配置', '多媒体/充电接口', 'p_duomeiti_chongdianjiekou');
INSERT INTO `as_car_param_cn_to_en` VALUES (253, '多媒体配置', 'USB/Type-C接口数量', 'p_USB_Type_Cjiekoushuliang');
INSERT INTO `as_car_param_cn_to_en` VALUES (254, '多媒体配置', '车载CD/DVD', 'p_chezaiCD_DVD');
INSERT INTO `as_car_param_cn_to_en` VALUES (255, '多媒体配置', '220V/230V电源', 'p_220V_230Vdianyuan');
INSERT INTO `as_car_param_cn_to_en` VALUES (256, '多媒体配置', '行李厢12V电源接口', 'p_xinglixiang12Vdianyuanjiekou');
INSERT INTO `as_car_param_cn_to_en` VALUES (257, '多媒体配置', '扬声器品牌名称', 'p_yangshengqipinpaimingcheng');
INSERT INTO `as_car_param_cn_to_en` VALUES (258, '多媒体配置', '扬声器数量', 'p_yangshengqishuliang');
INSERT INTO `as_car_param_cn_to_en` VALUES (259, '多媒体配置', '手机APP远程控制', 'p_shoujiAPPyuanchengkongzhi');
INSERT INTO `as_car_param_cn_to_en` VALUES (260, '灯光配置', '近光灯光源', 'p_jinguangdengguangyuan');
INSERT INTO `as_car_param_cn_to_en` VALUES (261, '灯光配置', '远光灯光源', 'p_yuanguangdengguangyuan');
INSERT INTO `as_car_param_cn_to_en` VALUES (262, '灯光配置', '灯光特色功能', 'p_dengguangtesegongneng');
INSERT INTO `as_car_param_cn_to_en` VALUES (263, '灯光配置', 'LED日间行车灯', 'p_LEDrijianxingchedeng');
INSERT INTO `as_car_param_cn_to_en` VALUES (264, '灯光配置', '自适应远近光', 'p_zishiyingyuanjinguang');
INSERT INTO `as_car_param_cn_to_en` VALUES (265, '灯光配置', '自动头灯', 'p_zidongtoudeng');
INSERT INTO `as_car_param_cn_to_en` VALUES (266, '灯光配置', '转向辅助灯', 'p_zhuanxiangfuzhudeng');
INSERT INTO `as_car_param_cn_to_en` VALUES (267, '灯光配置', '转向头灯', 'p_zhuanxiangtoudeng');
INSERT INTO `as_car_param_cn_to_en` VALUES (268, '灯光配置', '车前雾灯', 'p_cheqianwudeng');
INSERT INTO `as_car_param_cn_to_en` VALUES (269, '灯光配置', '前大灯雨雾模式', 'p_qiandadengyuwumoshi');
INSERT INTO `as_car_param_cn_to_en` VALUES (270, '灯光配置', '大灯高度可调', 'p_dadenggaoduketiao');
INSERT INTO `as_car_param_cn_to_en` VALUES (271, '灯光配置', '大灯清洗装置', 'p_dadengqingxizhuangzhi');
INSERT INTO `as_car_param_cn_to_en` VALUES (272, '灯光配置', '大灯延时关闭', 'p_dadengyanshiguanbi');
INSERT INTO `as_car_param_cn_to_en` VALUES (273, '灯光配置', '触摸式阅读灯', 'p_chumoshiyuedudeng');
INSERT INTO `as_car_param_cn_to_en` VALUES (274, '灯光配置', '车内环境氛围灯', 'p_cheneihuanjingfenweideng');
INSERT INTO `as_car_param_cn_to_en` VALUES (275, '玻璃/后视镜', '前/后电动车窗', 'p_qian_houdiandongchechuang');
INSERT INTO `as_car_param_cn_to_en` VALUES (276, '玻璃/后视镜', '车窗一键升降功能', 'p_chechuangyijianshengjianggongneng');
INSERT INTO `as_car_param_cn_to_en` VALUES (277, '玻璃/后视镜', '车窗防夹手功能', 'p_chechuangfangjiashougongneng');
INSERT INTO `as_car_param_cn_to_en` VALUES (278, '玻璃/后视镜', '多层隔音玻璃', 'p_duocenggeyinboli');
INSERT INTO `as_car_param_cn_to_en` VALUES (279, '玻璃/后视镜', '外后视镜功能', 'p_waihoushijinggongneng');
INSERT INTO `as_car_param_cn_to_en` VALUES (280, '玻璃/后视镜', '内后视镜功能', 'p_neihoushijinggongneng');
INSERT INTO `as_car_param_cn_to_en` VALUES (281, '玻璃/后视镜', '后风挡遮阳帘', 'p_houfengdangzheyanglian');
INSERT INTO `as_car_param_cn_to_en` VALUES (282, '玻璃/后视镜', '后排侧窗遮阳帘', 'p_houpaicechuangzheyanglian');
INSERT INTO `as_car_param_cn_to_en` VALUES (283, '玻璃/后视镜', '后排侧隐私玻璃', 'p_houpaiceyinsiboli');
INSERT INTO `as_car_param_cn_to_en` VALUES (284, '玻璃/后视镜', '车内化妆镜', 'p_cheneihuazhuangjing');
INSERT INTO `as_car_param_cn_to_en` VALUES (285, '玻璃/后视镜', '后雨刷', 'p_houyushua');
INSERT INTO `as_car_param_cn_to_en` VALUES (286, '玻璃/后视镜', '感应雨刷功能', 'p_ganyingyushuagongneng');
INSERT INTO `as_car_param_cn_to_en` VALUES (287, '玻璃/后视镜', '可加热喷水嘴', 'p_kejiarepenshuizui');
INSERT INTO `as_car_param_cn_to_en` VALUES (288, '空调/冰箱', '空调温度控制方式', 'p_kongtiaowendukongzhifangshi');
INSERT INTO `as_car_param_cn_to_en` VALUES (289, '空调/冰箱', '后排独立空调', 'p_houpaidulikongtiao');
INSERT INTO `as_car_param_cn_to_en` VALUES (290, '空调/冰箱', '后座出风口', 'p_houzuochufengkou');
INSERT INTO `as_car_param_cn_to_en` VALUES (291, '空调/冰箱', '温度分区控制', 'p_wendufenqukongzhi');
INSERT INTO `as_car_param_cn_to_en` VALUES (292, '空调/冰箱', '车载空气净化器', 'p_chezaikongqijinghuaqi');
INSERT INTO `as_car_param_cn_to_en` VALUES (293, '空调/冰箱', '车内PM2.5过滤装置', 'p_cheneiPM2_5guolvzhuangzhi');
INSERT INTO `as_car_param_cn_to_en` VALUES (294, '空调/冰箱', '负离子发生器', 'p_fulizifashengqi');
INSERT INTO `as_car_param_cn_to_en` VALUES (295, '空调/冰箱', '车内香氛装置', 'p_cheneixiangfenzhuangzhi');
INSERT INTO `as_car_param_cn_to_en` VALUES (296, '空调/冰箱', '车载冰箱', 'p_chezaibingxiang');
INSERT INTO `as_car_param_cn_to_en` VALUES (297, '选装包', '外观颜色', 'p_waiguanyanse');
INSERT INTO `as_car_param_cn_to_en` VALUES (298, '选装包', '内饰颜色', 'p_neishiyanse');

-- ----------------------------
-- Table structure for as_first_letter
-- ----------------------------
DROP TABLE IF EXISTS `as_first_letter`;
CREATE TABLE `as_first_letter`  (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  `firstLetter` TEXT,
  `urlFirstLetter` TEXT,
  `tm` TEXT,
  `xy` integer DEFAULT 1
);

-- ----------------------------
-- Records of as_first_letter
-- ----------------------------

-- ----------------------------
-- Table structure for as_series
-- ----------------------------
DROP TABLE IF EXISTS `as_series`;
CREATE TABLE `as_series`  (
  `id` integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  `firstLetter` TEXT,
  `brandId` integer DEFAULT 0,
  `brandGroupId` integer DEFAULT 0,
  `seriesId` integer DEFAULT 0,
  `seriesTitle` TEXT,
  `seriesPrice` TEXT,
  `urlTitle3` TEXT,
  `urlPrice` TEXT,
  `urlZhiPrice` TEXT,
  `urlPic` TEXT,
  `urlOld` TEXT,
  `urlBbs` TEXT,
  `urlTalk` TEXT,
  `tm` TEXT,
  `xy` integer DEFAULT 1
);

-- ----------------------------
-- Records of as_series
-- ----------------------------

PRAGMA foreign_keys = true;
