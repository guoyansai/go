"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [op[0] & 2, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};
var __spreadArray = (this && this.__spreadArray) || function (to, from, pack) {
    if (pack || arguments.length === 2) for (var i = 0, l = from.length, ar; i < l; i++) {
        if (ar || !(i in from)) {
            if (!ar) ar = Array.prototype.slice.call(from, 0, i);
            ar[i] = from[i];
        }
    }
    return to.concat(ar || Array.prototype.slice.call(from));
};
exports.__esModule = true;
// const path: any = require('path');
var db_1 = require("./db");
var FormatDate_1 = require("./utils/FormatDate");
var fs = require('fs');
var db;
var config = require('./config.json');
var logrr = [];
var logtimer = null;
function clog() {
    var arg = [];
    for (var _i = 0; _i < arguments.length; _i++) {
        arg[_i] = arguments[_i];
    }
    // 在Date()前面加个!，可以关闭日志功能
    if (Date()) {
        console.log.apply(console, arg);
        logrr.push(arg);
        if (!logtimer) {
            logtimer = setTimeout(function () {
                fs.appendFileSync('./log.txt', '\n' + logrr.join('\n'));
                logrr = [];
                logtimer = null;
            }, 2000);
        }
    }
}
var carFields = {};
var cheerio = require('cheerio');
var spider = require('./utils/spider');
if (Date.now()) {
    start(99);
}
function start(index) {
    return __awaiter(this, void 0, void 0, function () {
        var myConfig, dbc, curLetter, e_1;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0: return [4 /*yield*/, fs.readFileSync('./config.json', 'utf8')];
                case 1:
                    myConfig = _a.sent();
                    if (!myConfig) return [3 /*break*/, 2];
                    config = JSON.parse(myConfig);
                    return [3 /*break*/, 4];
                case 2: return [4 /*yield*/, fs.writeFileSync('./config.json', JSON.stringify(config))];
                case 3:
                    _a.sent();
                    _a.label = 4;
                case 4:
                    dbc = new db_1["default"](config);
                    db = function (sql) {
                        return dbc.sqlDb(sql);
                    };
                    console.log(666.99999, dbc, db);
                    return [4 /*yield*/, fs.writeFileSync('./log.txt', (0, FormatDate_1["default"])())];
                case 5:
                    _a.sent();
                    return [4 /*yield*/, db({
                            type: 'select',
                            table: 'as_car_param_cn_to_en',
                            field: 'cn_name,en_name'
                        }).then(function (res) {
                            res.data.forEach(function (el) {
                                carFields[el.cn_name] = el.en_name;
                            });
                        })];
                case 6:
                    _a.sent();
                    clog(666.002, carFields);
                    if (!(index > 26)) return [3 /*break*/, 10];
                    _a.label = 7;
                case 7:
                    _a.trys.push([7, 9, , 10]);
                    return [4 /*yield*/, fs.readFileSync('./firstLetter.txt', 'utf8')];
                case 8:
                    curLetter = _a.sent();
                    index = config.chars.indexOf(curLetter);
                    return [3 /*break*/, 10];
                case 9:
                    e_1 = _a.sent();
                    index = 0;
                    return [3 /*break*/, 10];
                case 10: return [4 /*yield*/, sqlFirstLetter(index)];
                case 11:
                    _a.sent();
                    return [4 /*yield*/, fs.writeFileSync('./log.txt', (0, FormatDate_1["default"])())];
                case 12:
                    _a.sent();
                    return [2 /*return*/];
            }
        });
    });
}
// 循环26个首字母
function sqlFirstLetter(index) {
    return __awaiter(this, void 0, void 0, function () {
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0: return [4 /*yield*/, fs.writeFileSync('./firstLetter.txt', config.chars[index])];
                case 1:
                    _a.sent();
                    if (!(index < config.charsLen)) return [3 /*break*/, 3];
                    return [4 /*yield*/, htmlFirstLetter(config.chars[index])];
                case 2:
                    _a.sent();
                    spider.sleep(config.tmHtml);
                    sqlFirstLetter(index + 1);
                    _a.label = 3;
                case 3: return [2 /*return*/];
            }
        });
    });
}
// 单个字母品牌
function htmlFirstLetter(char) {
    return __awaiter(this, void 0, void 0, function () {
        var charUrl;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    charUrl = config.url.firstLetter.start + char + config.url.firstLetter.end;
                    char = char.toUpperCase();
                    clog(666.101, '首字母' + char, charUrl);
                    return [4 /*yield*/, saveFirstLetter(char, charUrl)];
                case 1:
                    _a.sent();
                    return [4 /*yield*/, paCar(char, charUrl)];
                case 2:
                    _a.sent();
                    clog(666.108, char + '首字母爬完！');
                    return [2 /*return*/];
            }
        });
    });
}
// 储存首字母网址
function saveFirstLetter(char, charUrl) {
    return saveDb({
        type: 'select',
        table: 'as_first_letter',
        field: 'firstLetter',
        where: 'firstLetter="' + char + '"'
    }, {
        type: 'update',
        table: 'as_first_letter',
        set: 'tm="' + (0, FormatDate_1["default"])() + '"'
    }, {
        type: 'insert',
        table: 'as_first_letter',
        field: 'firstLetter,urlFirstLetter,tm',
        value: '"' + char + '","' + charUrl + '","' + (0, FormatDate_1["default"])() + '"'
    });
}
//  储存brand品牌
function sqlBrand(vals) {
    return __awaiter(this, void 0, void 0, function () {
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0: return [4 /*yield*/, saveBrand(vals)];
                case 1:
                    _a.sent();
                    return [4 /*yield*/, saveBrandImg(vals)];
                case 2:
                    _a.sent();
                    return [2 /*return*/];
            }
        });
    });
}
// 爬虫主程序
function paCar(char, charUrl) {
    return __awaiter(this, void 0, void 0, function () {
        var _this = this;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0: 
                // 爬取首字母页面内容
                return [4 /*yield*/, spider.getHtml(charUrl, 'gb2312').then(function (res) { return __awaiter(_this, void 0, void 0, function () {
                        var $, vals, valsArr, _i, valsArr_1, _a, valsArr_2, _loop_1, _b, valsArr_3;
                        var _this = this;
                        return __generator(this, function (_c) {
                            switch (_c.label) {
                                case 0:
                                    $ = cheerio.load(res);
                                    valsArr = [];
                                    // 下面是爬取brand品牌的名称和图片
                                    $('dl').each(function () {
                                        var imgBrand = $(this).find('dl dt a img').attr('src');
                                        var brandId = $(this).attr('id');
                                        var tmpValue = [
                                            char,
                                            brandId,
                                            $(this).attr('olr'),
                                            $(this).find('dl dt a').attr('href'),
                                            imgBrand,
                                            $(this).find('dl dt div a').text(),
                                            // spider.urlToFile(imgBrand),// 获取原来的地址路径
                                            'logo' + brandId + '.png',
                                            (0, FormatDate_1["default"])(),
                                        ];
                                        valsArr.push(tmpValue);
                                    });
                                    _i = 0, valsArr_1 = valsArr;
                                    _c.label = 1;
                                case 1:
                                    if (!(_i < valsArr_1.length)) return [3 /*break*/, 4];
                                    vals = valsArr_1[_i];
                                    clog(666.201, '品牌', vals[5]);
                                    return [4 /*yield*/, sqlBrand(vals)];
                                case 2:
                                    _c.sent();
                                    clog(666.208, vals[5] + '品牌爬完！');
                                    spider.sleep(config.tmSql);
                                    _c.label = 3;
                                case 3:
                                    _i++;
                                    return [3 /*break*/, 1];
                                case 4:
                                    // 下面是爬取与储存厂商品牌
                                    valsArr = [];
                                    $('dd .h3-tit').each(function () {
                                        var urlBrand2 = $(this).find('a').attr('href');
                                        var ids = urlBrand2.split('.html')[0].split('-');
                                        var tmpValue = [
                                            char,
                                            ids[1],
                                            ids[2],
                                            $(this).find('a').text(),
                                            urlBrand2,
                                            (0, FormatDate_1["default"])(),
                                        ];
                                        valsArr.push(tmpValue);
                                    });
                                    _a = 0, valsArr_2 = valsArr;
                                    _c.label = 5;
                                case 5:
                                    if (!(_a < valsArr_2.length)) return [3 /*break*/, 8];
                                    vals = valsArr_2[_a];
                                    clog(666.301, '品牌厂商', vals[3]);
                                    return [4 /*yield*/, saveBrandGroup(vals)];
                                case 6:
                                    _c.sent();
                                    clog(666.308, vals[3] + '品牌厂商爬完！');
                                    spider.sleep(config.tmSql);
                                    _c.label = 7;
                                case 7:
                                    _a++;
                                    return [3 /*break*/, 5];
                                case 8:
                                    // 下面爬取品牌下车系
                                    valsArr = [];
                                    $('dl dd').each(function () {
                                        var urlBrand2 = $(this).find('.h3-tit a').attr('href');
                                        var ids = urlBrand2.split('.html')[0].split('-');
                                        var mainValue = [char, ids[1], ids[2]];
                                        $(this)
                                            .find('.rank-list-ul li')
                                            .each(function () {
                                            var seriesName = $(this).find('h4').text();
                                            if (seriesName) {
                                                var tmpValue = __spreadArray(__spreadArray([], mainValue, true), [
                                                    $(this).attr('id').slice(1),
                                                    seriesName,
                                                    $(this).find('div .red').text(),
                                                    $(this).find('h4 a').attr('href'),
                                                    $(this).find('div .red').attr('href'),
                                                    $(this).find('div :nth-child(1)').attr('href'),
                                                    $(this).find('div :nth-child(2)').attr('href'),
                                                    $(this).find('div :nth-child(3)').attr('href'),
                                                    $(this).find('div :nth-child(4)').attr('href'),
                                                    $(this).find('div :nth-child(5)').attr('href'),
                                                    (0, FormatDate_1["default"])(),
                                                ], false);
                                                valsArr.push(tmpValue);
                                            }
                                        });
                                    });
                                    _loop_1 = function () {
                                        var seriess, cars, carsVals, urlSeries, _d, carsVals_1;
                                        return __generator(this, function (_e) {
                                            switch (_e.label) {
                                                case 0:
                                                    clog(666.401, '车系', vals[4]);
                                                    return [4 /*yield*/, saveSeries(vals)];
                                                case 1:
                                                    _e.sent();
                                                    clog(666.408, vals[4] + '车系爬完！');
                                                    spider.sleep(config.tmSql);
                                                    seriess = [vals[0], vals[1], vals[2], vals[3], vals[4]];
                                                    cars = [];
                                                    carsVals = [];
                                                    urlSeries = 'https:' + vals[6];
                                                    clog(666.501, '车系网址', urlSeries);
                                                    return [4 /*yield*/, spider.getHtml(urlSeries, 'gb2312').then(function (res) { return __awaiter(_this, void 0, void 0, function () {
                                                            var years, urlSpec, _i, years_1;
                                                            var _this = this;
                                                            return __generator(this, function (_a) {
                                                                switch (_a.label) {
                                                                    case 0:
                                                                        $ = cheerio.load(res);
                                                                        //  爬取在售车型
                                                                        $('#specWrap-2 dl').each(function () {
                                                                            var sTitle = $(this).find('dt .spec-name span').text();
                                                                            $(this)
                                                                                .find('dd')
                                                                                .each(function () {
                                                                                var specUrl = $(this)
                                                                                    .find('.spec-info .info-link :nth-child(4)')
                                                                                    .attr('href');
                                                                                var specId;
                                                                                if (specUrl) {
                                                                                    specId = specUrl.split('spec/')[1].split('/config.html')[0];
                                                                                }
                                                                                var tmpValue = __spreadArray(__spreadArray([], seriess, true), [
                                                                                    specId,
                                                                                    $(this).find('.spec-name .name-param p .name').text(),
                                                                                    sTitle,
                                                                                    $(this).attr('data-sift1'),
                                                                                    $(this)
                                                                                        .find('.spec-guidance .guidance-price .guidance-price__con span')
                                                                                        .text(),
                                                                                    $(this)
                                                                                        .find('.spec-name .name-param :nth-child(2) :nth-child(1)')
                                                                                        .text(),
                                                                                    $(this).attr('data-sift4'),
                                                                                    1,
                                                                                    (0, FormatDate_1["default"])(),
                                                                                ], false);
                                                                                carsVals.push(tmpValue);
                                                                            });
                                                                        });
                                                                        // 爬取即将销售车型
                                                                        $('#specWrap-1 dl').each(function () {
                                                                            var sTitle = $(this).find('dt .spec-name span').text();
                                                                            $(this)
                                                                                .find('dd')
                                                                                .each(function () {
                                                                                var specUrl = $(this)
                                                                                    .find('.spec-info .info-link :nth-child(4)')
                                                                                    .attr('href');
                                                                                var specId;
                                                                                if (specUrl) {
                                                                                    specId = specUrl.split('spec/')[1].split('/config.html')[0];
                                                                                }
                                                                                var tmpValue = __spreadArray(__spreadArray([], seriess, true), [
                                                                                    specId,
                                                                                    $(this).find('.spec-name .name-param p .name').text(),
                                                                                    sTitle,
                                                                                    $(this).attr('data-sift1'),
                                                                                    $(this)
                                                                                        .find('.spec-guidance .guidance-price .guidance-price__con span')
                                                                                        .text(),
                                                                                    $(this)
                                                                                        .find('.spec-name .name-param :nth-child(2) :nth-child(1)')
                                                                                        .text(),
                                                                                    $(this).attr('data-sift4'),
                                                                                    2,
                                                                                    (0, FormatDate_1["default"])(),
                                                                                ], false);
                                                                                carsVals.push(tmpValue);
                                                                            });
                                                                        });
                                                                        // 爬取未售车型
                                                                        $('#specWrap-4 dl').each(function () {
                                                                            var sTitle = $(this).find('dt .spec-name span').text();
                                                                            $(this)
                                                                                .find('dd')
                                                                                .each(function () {
                                                                                var specUrl = $(this)
                                                                                    .find('.spec-info .info-link :nth-child(4)')
                                                                                    .attr('href');
                                                                                var specId;
                                                                                if (specUrl) {
                                                                                    specId = specUrl.split('spec/')[1].split('/config.html')[0];
                                                                                }
                                                                                var tmpValue = __spreadArray(__spreadArray([], seriess, true), [
                                                                                    specId,
                                                                                    $(this).find('.spec-name .name-param p .name').text(),
                                                                                    sTitle,
                                                                                    $(this).attr('data-sift1'),
                                                                                    $(this)
                                                                                        .find('.spec-guidance .guidance-price .guidance-price__con span')
                                                                                        .text(),
                                                                                    $(this)
                                                                                        .find('.spec-name .name-param :nth-child(2) :nth-child(1)')
                                                                                        .text(),
                                                                                    $(this).attr('data-sift4'),
                                                                                    3,
                                                                                    (0, FormatDate_1["default"])(),
                                                                                ], false);
                                                                                carsVals.push(tmpValue);
                                                                            });
                                                                        });
                                                                        years = [];
                                                                        $('#haltList li').each(function () {
                                                                            years.push([
                                                                                config.url.years.start +
                                                                                    seriess[3] +
                                                                                    config.url.years.middle +
                                                                                    $(this).find('a').attr('data-yearid') +
                                                                                    config.url.years.end,
                                                                                $(this).find('a').text(),
                                                                            ]);
                                                                        });
                                                                        _i = 0, years_1 = years;
                                                                        _a.label = 1;
                                                                    case 1:
                                                                        if (!(_i < years_1.length)) return [3 /*break*/, 4];
                                                                        urlSpec = years_1[_i];
                                                                        return [4 /*yield*/, spider.getHtml(urlSpec[0], 'gb2312').then(function (res) { return __awaiter(_this, void 0, void 0, function () {
                                                                                var yearRes;
                                                                                return __generator(this, function (_a) {
                                                                                    yearRes = JSON.parse(res || '[]');
                                                                                    yearRes.forEach(function (el) {
                                                                                        el.speclist.forEach(function (elc) {
                                                                                            // if (!elc.specid) {
                                                                                            //   spider.sleep(100000000 * config.tmSql);
                                                                                            // }
                                                                                            var tmpValue = __spreadArray(__spreadArray([], seriess, true), [
                                                                                                elc.specid,
                                                                                                elc.specname,
                                                                                                el.name,
                                                                                                elc.syear + '款',
                                                                                                elc.price,
                                                                                                elc.driveform,
                                                                                                elc.gearbox,
                                                                                                0,
                                                                                                (0, FormatDate_1["default"])(),
                                                                                            ], false);
                                                                                            carsVals.push(tmpValue);
                                                                                        });
                                                                                    });
                                                                                    spider.sleep(config.tSql);
                                                                                    return [2 /*return*/];
                                                                                });
                                                                            }); })];
                                                                    case 2:
                                                                        _a.sent();
                                                                        spider.sleep(config.tmHtml);
                                                                        _a.label = 3;
                                                                    case 3:
                                                                        _i++;
                                                                        return [3 /*break*/, 1];
                                                                    case 4: return [2 /*return*/];
                                                                }
                                                            });
                                                        }); })];
                                                case 2:
                                                    _e.sent();
                                                    _d = 0, carsVals_1 = carsVals;
                                                    _e.label = 3;
                                                case 3:
                                                    if (!(_d < carsVals_1.length)) return [3 /*break*/, 7];
                                                    cars = carsVals_1[_d];
                                                    clog(666.601, '车型', cars[5], cars[6]);
                                                    return [4 /*yield*/, saveCar(cars)];
                                                case 4:
                                                    _e.sent();
                                                    clog(666.608, cars[6] + '车型爬完！');
                                                    spider.sleep(config.tmHtml);
                                                    return [4 /*yield*/, paCarParam(cars)];
                                                case 5:
                                                    _e.sent();
                                                    _e.label = 6;
                                                case 6:
                                                    _d++;
                                                    return [3 /*break*/, 3];
                                                case 7: return [2 /*return*/];
                                            }
                                        });
                                    };
                                    _b = 0, valsArr_3 = valsArr;
                                    _c.label = 9;
                                case 9:
                                    if (!(_b < valsArr_3.length)) return [3 /*break*/, 12];
                                    vals = valsArr_3[_b];
                                    return [5 /*yield**/, _loop_1()];
                                case 10:
                                    _c.sent();
                                    _c.label = 11;
                                case 11:
                                    _b++;
                                    return [3 /*break*/, 9];
                                case 12: return [2 /*return*/];
                            }
                        });
                    }); })];
                case 1:
                    // 爬取首字母页面内容
                    _a.sent();
                    return [2 /*return*/];
            }
        });
    });
}
function paCarParam(cars) {
    return __awaiter(this, void 0, void 0, function () {
        var specId;
        var _this = this;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    specId = cars[5];
                    if (!specId) return [3 /*break*/, 2];
                    return [4 /*yield*/, spider
                            .getHtml(config.url.car.start + specId, 'gb2312')
                            .then(function (res) { return __awaiter(_this, void 0, void 0, function () {
                            var params, fields_1, brandTitle_1, brandImg_1, values_1;
                            var _a, _b;
                            return __generator(this, function (_c) {
                                switch (_c.label) {
                                    case 0:
                                        params = ((_b = (_a = JSON.parse(res || '{}')) === null || _a === void 0 ? void 0 : _a.result) === null || _b === void 0 ? void 0 : _b.paramtypeitems) || [];
                                        if (!params.length) return [3 /*break*/, 3];
                                        fields_1 = [
                                            'p_chexing_id',
                                            'p_gengxinshijian',
                                            'p_shouzimu',
                                            'p_pinpai',
                                            'p_pinpai_id',
                                            'p_pinpai_logo',
                                            'p_chexi',
                                            'p_chexi_id',
                                        ];
                                        return [4 /*yield*/, db({
                                                type: 'select',
                                                table: 'as_brand',
                                                field: 'brandTitle,brandImg',
                                                where: 'brandId=' + cars[1]
                                            }).then(function (res) {
                                                res.data.forEach(function (el) {
                                                    brandTitle_1 = el.brandTitle;
                                                    brandImg_1 = el.brandImg;
                                                });
                                            })];
                                    case 1:
                                        _c.sent();
                                        values_1 = [
                                            specId,
                                            (0, FormatDate_1["default"])(),
                                            cars[0],
                                            brandTitle_1,
                                            cars[1],
                                            brandImg_1,
                                            cars[4],
                                            cars[3],
                                        ];
                                        params.forEach(function (elp) {
                                            if (elp.paramitems && elp.paramitems.length) {
                                                elp.paramitems.forEach(function (el) {
                                                    var field = carFields[el.name];
                                                    if (field && !fields_1.includes(field)) {
                                                        fields_1.push(field);
                                                        values_1.push(el.valueitems[0].value
                                                            .replaceAll('(', '')
                                                            .replaceAll(')', ''));
                                                    }
                                                });
                                            }
                                        });
                                        return [4 /*yield*/, saveCarParam(fields_1, values_1)];
                                    case 2:
                                        _c.sent();
                                        spider.sleep(config.tmHtml);
                                        _c.label = 3;
                                    case 3: return [2 /*return*/];
                                }
                            });
                        }); })];
                case 1:
                    _a.sent();
                    _a.label = 2;
                case 2: return [2 /*return*/];
            }
        });
    });
}
function saveCar(vals) {
    var fields = [
        'firstLetter',
        'brandId',
        'brandGroupId',
        'seriesId',
        'seriesName',
        'specId',
        'specName',
        'specClass',
        'carYear',
        'carPrice',
        'driveform',
        'gearbox',
        'status',
        'tm',
    ];
    if (vals[5]) {
        return spider.run(saveDb({
            type: 'select',
            table: 'as_car',
            field: 'specId',
            where: 'specId=' + vals[5] + ''
        }, {
            type: 'update',
            table: 'as_car',
            set: 'tm="' + (0, FormatDate_1["default"])() + '"'
        }, {
            type: 'insert',
            table: 'as_car',
            field: fields.join(','),
            value: '"' + vals.join('","') + '"'
        }));
    }
    else {
        return Promise.resolve();
    }
}
function saveSeries(vals) {
    var fields = [
        'firstLetter',
        'brandId',
        'brandGroupId',
        'seriesId',
        'seriesTitle',
        'seriesPrice',
        'urlTitle3',
        'urlPrice',
        'urlZhiPrice',
        'urlPic',
        'urlOld',
        'urlBbs',
        'urlTalk',
        'tm',
    ];
    if (vals[3]) {
        return spider.run(saveDb({
            type: 'select',
            table: 'as_series',
            field: 'seriesId',
            where: 'seriesId=' + vals[3] + ''
        }, {
            type: 'update',
            table: 'as_series',
            set: 'tm="' + (0, FormatDate_1["default"])() + '"'
        }, {
            type: 'insert',
            table: 'as_series',
            field: fields.join(','),
            value: '"' + vals.join('","') + '"'
        }));
    }
    else {
        return Promise.resolve();
    }
}
function saveBrandGroup(vals) {
    var fields = [
        'firstLetter',
        'brandId',
        'brandGroupId',
        'brandGroupTitle',
        'urlBrand2',
        'tm',
    ];
    if (vals[2]) {
        return spider.run(saveDb({
            type: 'select',
            table: 'as_brand_group',
            field: 'brandGroupId',
            where: 'brandGroupId=' + vals[2] + ''
        }, {
            type: 'update',
            table: 'as_brand_group',
            set: 'tm="' + (0, FormatDate_1["default"])() + '"'
        }, {
            type: 'insert',
            table: 'as_brand_group',
            field: fields.join(','),
            value: '"' + vals.join('","') + '"'
        }));
    }
    else {
        return Promise.resolve();
    }
}
function saveBrand(vals) {
    var fields = [
        'firstLetter',
        'brandId',
        'dlolr',
        'urlBrand',
        'imgBrand',
        'brandTitle',
        'brandImg',
        'tm',
    ];
    if (vals[1]) {
        return spider.run(saveDb({
            type: 'select',
            table: 'as_brand',
            field: 'brandId',
            where: 'brandId=' + vals[1] + ''
        }, {
            type: 'update',
            table: 'as_brand',
            set: 'tm="' + (0, FormatDate_1["default"])() + '"'
        }, {
            type: 'insert',
            table: 'as_brand',
            field: fields.join(','),
            value: '"' + vals.join('","') + '"'
        }));
    }
    else {
        return Promise.resolve();
    }
}
function saveCarParam(fields, values) {
    if (values[0]) {
        return spider.run(saveDb({
            type: 'select',
            table: 'as_car_param',
            field: 'p_chexing_id',
            where: 'p_chexing_id="' + values[0] + '"'
        }, {
            type: 'update',
            table: 'as_car_param',
            set: 'p_gengxinshijian="' + (0, FormatDate_1["default"])() + '"'
        }, {
            type: 'insert',
            table: 'as_car_param',
            field: fields.join(','),
            value: '"' + values.join('","') + '"'
        }));
    }
    else {
        return Promise.resolve();
    }
}
function saveBrandImg(vals) {
    // const absPath = path.resolve(__dirname, config.dirDist + 'logo/' + vals[6]);
    var absPath = config.dirDist + 'logo/' + vals[6];
    return spider.run(spider.getImg('https:' + vals[4], absPath));
}
function saveDb(select, update, insert) {
    return new Promise(function (resolve, reject) {
        try {
            db(select)
                .then(function (ress) {
                if (ress.code === 909) {
                    db(update)
                        .then(function (res) {
                        clog(666.702, 'update', update.table);
                        resolve(res);
                    })["catch"](function (err) {
                        clog(666.703, 'update', update);
                        reject(err);
                    });
                }
                else {
                    db(insert)
                        .then(function (res) {
                        clog(666.704, 'insert', update.table);
                        resolve(res);
                    })["catch"](function (err) {
                        clog(666.705, 'insert', insert);
                        reject(err);
                    });
                }
            })["catch"](function (err) {
                clog(666.707, 'select', select);
                reject(err);
            });
        }
        catch (err) {
            clog(666.709, 'db', update.table);
            reject(err);
        }
    });
}
