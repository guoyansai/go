/*
 Navicat Premium Data Transfer

 Source Server         : mysql8
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : qichezhijia

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 12/11/2022 19:40:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for as_brand
-- ----------------------------
DROP TABLE IF EXISTS `as_brand`;
CREATE TABLE `as_brand`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstLetter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `brandId` int NULL DEFAULT NULL,
  `brandTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `brandImg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dlolr` int NULL DEFAULT NULL,
  `urlBrand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `imgBrand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tm` datetime NULL DEFAULT NULL,
  `xy` int NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1114 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of as_brand
-- ----------------------------

-- ----------------------------
-- Table structure for as_brand_group
-- ----------------------------
DROP TABLE IF EXISTS `as_brand_group`;
CREATE TABLE `as_brand_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstLetter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `brandId` int NULL DEFAULT NULL,
  `brandGroupId` int NULL DEFAULT NULL,
  `brandGroupTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `urlBrand2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tm` datetime NULL DEFAULT NULL,
  `xy` int NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 857 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of as_brand_group
-- ----------------------------

-- ----------------------------
-- Table structure for as_car
-- ----------------------------
DROP TABLE IF EXISTS `as_car`;
CREATE TABLE `as_car`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstLetter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `brandId` int NULL DEFAULT NULL,
  `brandGroupId` int NULL DEFAULT NULL,
  `seriesId` int NULL DEFAULT NULL,
  `seriesName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `specId` int NULL DEFAULT NULL,
  `specName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `specClass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `carYear` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `carPrice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `driveform` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `gearbox` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT 0,
  `tm` datetime NULL DEFAULT NULL,
  `xy` int NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43959 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of as_car
-- ----------------------------

-- ----------------------------
-- Table structure for as_car_param
-- ----------------------------
DROP TABLE IF EXISTS `as_car_param`;
CREATE TABLE `as_car_param`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `p_gengxinshijian` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_shouzimu` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_pinpai` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_pinpai_id` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_pinpai_logo` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_chexi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_chexi_id` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_chexizhanshitu` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_chexingmingcheng` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_chexing_id` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_xiaoshouzhuangtai` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_changshang` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_changshang_id` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_niankuan` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_shangshishijian` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_changshangzhidaojia` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_changshangzhidaojia_yuan` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_jibie` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_nengyuanleixing` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_huanbaobiaozhun` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_WLTCchundianxuhanglicheng_km` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_CLTCchundianxuhanglicheng_km` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_gongxinbuchundianxuhanglicheng_km` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_kuaichongshijian_xiaoshi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_manchongshijian_xiaoshi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_kuaichongdianliangbaifenbi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zuidagonglv_kW` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zuidaniuju_N_m` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_fadongji` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_diandongji_Ps` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_biansuxiang` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_changkuangao_mm` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_cheshenjiegou` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zuigaochesu_km_h` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_guanfang0_100km_h_jiasu_s` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_shice0_100km_h_jiasu_s` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_shice100_0km_h_zhidong_m` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_WLTCzongheyouhao_L_100km` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zuidihedianzhuangtaiyouhao_L_100km` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_shiceyouhao_L_100km` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_shicexuhanglicheng_km` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zhengchezhibao` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_changdu_mm` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_kuandu_mm` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_gaodu_mm` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zhouju_mm` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_qianlunju_mm` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_houlunju_mm` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_jiejinjiao_°` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_liqujiao_°` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zuixiaolidijianxi_mm` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_chemenshu_ge` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zuoweishu_ge` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_youxiangrongji_L` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_houbeixiangrongji_L` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_xinglixiangrongji_L` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zhengbeizhiliang_kg` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zuidamanzaizhiliang_kg` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_fadongjixinghao` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_pailiang_mL` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_pailiang_L` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_jinqixingshi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_fadongjibuju` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_qigangpailiexingshi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_qigangshu_ge` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_meigangqimenshu_ge` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_yasuobi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_peiqijigou` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_gangjing_mm` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_xingcheng_mm` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zuidamali_Ps` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zuidagonglvzhuansu_rpm` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zuidaniujuzhuansu_rpm` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_fadongjiteyoujishu` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zuidajinggonglv_kW` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_ranliaoxingshi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_ranyoubiaohao` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_gongyoufangshi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_ganggaicailiao` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_gangticailiao` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_dianjileixing` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_diandongjizonggonglv_kW` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_diandongjizongniuju_N_m` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_qiandiandongjizuidagonglv_kW` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_qiandiandongjizuidaniuju_N_m` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_houdiandongjizuidagonglv_kW` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_houdiandongjizuidaniuju_N_m` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_xitongzonghegonglv_kW` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_xitongzonghegonglv_Ps` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_xitongzongheniuju_N_m` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_qudongdianjishu` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_dianjibuju` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_dianchileixing` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_dianxinpinpai` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_dianchilengquefangshi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_huandian` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_dianchinengliang_kWh` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_baigonglihaodianliang_kWh_100km` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_dianchizuzhibao` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_kuaichonggonglv_kW` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_kuaichongdianliang` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_dangweigeshu` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_biansuxiangleixing` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_jiancheng` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_qudongfangshi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_siquxingshi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_qianxuanjialeixing` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_houxuanjialeixing` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zhulileixing` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_chetijiegou` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_qianzhidongqileixing` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_houzhidongqileixing` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zhuchezhidongleixing` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_qianluntaiguige` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_houluntaiguige` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_beitaiguige` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zhu_fujiashizuoanquanqinang` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_qian_houpaiceqinang` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_qian_houpaitoubuqinang_qilian` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_xibuqinang` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_fujiashizuodianshiqinang` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_houpaianquandaishiqinang` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_houpaizuoyifangxiahuaqinang` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_houpaizhongyanganquanqinang` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_beidongxingrenbaohu` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_taiyajiancegongneng` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_queqibaoyongluntai` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_anquandaiweixitixing` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_ISOFIXertongzuoyijiekou` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_ABSfangbaosi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zhidonglifenpei_EBD_CBCdeng` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_shachefuzhu_EBA_BAS_BAdeng` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_qianyinlikongzhi_ASR_TCS_TRCdeng` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_cheshenwendingkongzhi_ESC_ESP_DSCdeng` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_bingxianfuzhu` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_chedaopianliyujingxitong` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_chedaobaochifuzhuxitong` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_daolujiaotongbiaozhishibie` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zhudongshache_zhudonganquanxitong` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_yeshixitong` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_pilaojiashitishi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_DOWkaimenyujing` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_qianfangpengzhuangyujing` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_houfangpengzhuangyujing` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_qian_houzhucheleida` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_jiashifuzhuyingxiang` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_toumingdipan_540duyingxiang` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_daochecheceyujingxitong` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_xunhangxitong` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_jiashimoshiqiehuan` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zidongbocheruwei` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zidongbiandaofuzhu` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_yuanchengzhaohuan` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_fadongjiqitingjishu` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zhidongnenglianghuishouxitong` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zidongzhuche` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_shangpofuzhu` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_doupohuanjiang` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_kebianxuanjiagongneng` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_kongqixuanjia` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_dianciganyingxuanjia` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_kebianzhuanxiangbi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zhongyangchasuqisuozhigongneng` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zhengtizhudongzhuanxiangxitong` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_xianhuachasuqi_chasusuo` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_fuzhujiashixinpian` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_xinpianzongsuanli` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_shexiangtoushuliang` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_chaoshengboleidashuliang` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_haomiboleidashuliang` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_jiguangleidashuliang` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_fuzhujiashixitong` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_fuzhujiashidengji` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_tianchuangleixing` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_yundongwaiguantaojian` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_diandongraoliuban` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_lunquancaizhi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_diandongxihechemen` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_cehuamenxingshi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_diandonghoubeixiang` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_ganyinghoubeixiang` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_diandonghoubeixiangweizhijiyi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_weimenbolidulikaiqi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_chedingxinglijia` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_fadongjidianzifangdao` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_cheneizhongkongsuo` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_yaoshileixing` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_wuyaoshiqidongxitong` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_wuyaoshijinrugongneng` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_yincangdiandongmenbashou` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zhudongbiheshijinqigezha` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_yuanchengqidonggongneng` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_checejiaotaban` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_dianchiyujiare` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_duiwaifangdian` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_disuxingchejinggao` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_shaobingmoshi_qianliyan` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_fangxiangpancaizhi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_fangxiangpanweizhitiaojie` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_huandangxingshi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_duogongnengfangxiangpan` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_fangxiangpanhuandang` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_fangxiangpanjiare` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_fangxiangpanjiyi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_xingchediannaoxianshipingmu` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_quanyejingyibiaopan` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_yejingyibiaochicun` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_HUDtaitoushuzixianshi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_neizhixingchejiluyi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zhudongjiangzao` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_shoujiwuxianchongdiangongneng` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_diandongketiaotaban` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zuoyicaizhi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_yundongfenggezuoyi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zhuzuoyitiaojiefangshi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_fuzuoyitiaojiefangshi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zhu_fujiashizuodiandongtiaojie` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_qianpaizuoyigongneng` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_diandongzuoyijiyigongneng` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_fujiashiweihoupaiketiaojieanniu` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_dierpaizuoyitiaojie` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_houpaizuoyidiandongtiaojie` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_houpaizuoyigongneng` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_houpaixiaozhuoban` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_dierpaidulizuoyi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zuoyibuju` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_houpaizuoyifangdaoxingshi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_houpaizuoyidiandongfangdao` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_qian_houzhongyangfushou` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_houpaibeijia` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_jiare_zhilengbeijia` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zhongkongcaisepingmu` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zhongkongpingmuchicun` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_GPSdaohangxitong` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_fujiayuleping` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_weixingdaohangxitong` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_daohanglukuangxinxixianshi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_ditupinpai` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_gaojingditu` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_daolujiuyuanhujiao` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zhongkongyejingpingfenpingxianshi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_lanya_chezaidianhua` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_shoujihulian_yingshe` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_yuyinshibiekongzhixitong` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_shoushikongzhi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_mianbushibie` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_chelianwang` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_4G_5Gwangluo` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_OTAshengji` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_chezaidianshi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_houpaiyejingpingmu` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_houpaikongzhiduomeiti` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_duomeiti_chongdianjiekou` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_USB_Type_Cjiekoushuliang` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_chezaiCD_DVD` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_220V_230Vdianyuan` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_xinglixiang12Vdianyuanjiekou` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_yangshengqipinpaimingcheng` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_yangshengqishuliang` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_shoujiAPPyuanchengkongzhi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_jinguangdengguangyuan` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_yuanguangdengguangyuan` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_dengguangtesegongneng` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_LEDrijianxingchedeng` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zishiyingyuanjinguang` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zidongtoudeng` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zhuanxiangfuzhudeng` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_zhuanxiangtoudeng` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_cheqianwudeng` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_qiandadengyuwumoshi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_dadenggaoduketiao` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_dadengqingxizhuangzhi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_dadengyanshiguanbi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_chumoshiyuedudeng` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_cheneihuanjingfenweideng` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_qian_houdiandongchechuang` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_chechuangyijianshengjianggongneng` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_chechuangfangjiashougongneng` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_duocenggeyinboli` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_waihoushijinggongneng` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_neihoushijinggongneng` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_houfengdangzheyanglian` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_houpaicechuangzheyanglian` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_houpaiceyinsiboli` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_cheneihuazhuangjing` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_houyushua` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_ganyingyushuagongneng` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_kejiarepenshuizui` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_kongtiaowendukongzhifangshi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_houpaidulikongtiao` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_houzuochufengkou` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_wendufenqukongzhi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_chezaikongqijinghuaqi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_cheneiPM2_5guolvzhuangzhi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_fulizifashengqi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_cheneixiangfenzhuangzhi` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_chezaibingxiang` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_waiguanyanse` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `p_neishiyanse` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of as_car_param
-- ----------------------------

-- ----------------------------
-- Table structure for as_car_param_cn_to_en
-- ----------------------------
DROP TABLE IF EXISTS `as_car_param_cn_to_en`;
CREATE TABLE `as_car_param_cn_to_en`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `param_type` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `cn_name` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `en_name` tinytext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 299 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

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
  `id` int NOT NULL AUTO_INCREMENT,
  `firstLetter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `urlFirstLetter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tm` datetime NULL DEFAULT NULL,
  `xy` int NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 293 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of as_first_letter
-- ----------------------------

-- ----------------------------
-- Table structure for as_series
-- ----------------------------
DROP TABLE IF EXISTS `as_series`;
CREATE TABLE `as_series`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstLetter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `brandId` int NULL DEFAULT NULL,
  `brandGroupId` int NULL DEFAULT NULL,
  `seriesId` int NULL DEFAULT NULL,
  `seriesTitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `seriesPrice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `urlTitle3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `urlPrice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `urlZhiPrice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `urlPic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `urlOld` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `urlBbs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `urlTalk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `xy` int NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of as_series
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
