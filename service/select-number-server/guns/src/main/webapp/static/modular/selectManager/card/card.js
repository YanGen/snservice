/**
 * 选号管理管理初始化
 */
var Card = {
    id: "CardTable",	//表格id
    seItem: null,		//选中的条目
    table: null,
    layerIndex: -1
};

/**
 * 初始化表格的列
 */
Card.initColumn = function () {
    return [
        {field: 'selectItem', checkbox: true},
            {title: '引位', field: 'id', visible: true, align: 'center', valign: 'middle'},
            {title: '插入时间', field: 'insertTime', visible: true, align: 'center', valign: 'middle'},
            {title: '更新时间', field: 'updateTime', visible: true, align: 'center', valign: 'middle'},
            {title: '删除标记', field: 'deleteFlag', visible: true, align: 'center', valign: 'middle'},
            {title: '号码', field: 'iNumber', visible: true, align: 'center', valign: 'middle'},
            {title: '价格', field: 'price', visible: true, align: 'center', valign: 'middle'},
            {title: '运营商', field: 'operatorId', visible: true, align: 'center', valign: 'middle'},
            {title: '省份', field: 'provinceId', visible: true, align: 'center', valign: 'middle'},
            {title: '城市', field: 'cityId', visible: true, align: 'center', valign: 'middle'},
            {title: '内含话费', field: 'includedFee', visible: true, align: 'center', valign: 'middle'},
            {title: '描述', field: 'detail', visible: true, align: 'center', valign: 'middle'},
            {title: '星级', field: 'start', visible: true, align: 'center', valign: 'middle'},
            {title: '过程', field: 'processed', visible: true, align: 'center', valign: 'middle'},
            {title: '状态', field: 'status', visible: true, align: 'center', valign: 'middle'}
    ];
};

/**
 * 检查是否选中
 */
Card.check = function () {
    var selected = $('#' + this.id).bootstrapTable('getSelections');
    if(selected.length == 0){
        Feng.info("请先选中表格中的某一记录！");
        return false;
    }else{
        Card.seItem = selected[0];
        return true;
    }
};

/**
 * 点击添加选号管理
 */
Card.openAddCard = function () {
    var index = layer.open({
        type: 2,
        title: '添加',
        area: ['800px', '420px'], //宽高
        fix: false, //不固定
        maxmin: true,
        content: Feng.ctxPath + '/card/card_add'
    });
    this.layerIndex = index;
};

/**
 * 点击批量添加选号管理
 */
Card.openAddBatchCard = function () {
    var index = layer.open({
        type: 2,
        title: '批量添加',
        area: ['800px', '420px'], //宽高
        fix: false, //不固定
        maxmin: true,
        content: Feng.ctxPath + '/card/card_add_batch'
    });
    this.layerIndex = index;
};

/**
 * 打开查看选号管理详情
 */
Card.openCardDetail = function () {
    if (this.check()) {
        var index = layer.open({
            type: 2,
            title: '选号管理详情',
            area: ['800px', '420px'], //宽高
            fix: false, //不固定
            maxmin: true,
            content: Feng.ctxPath + '/card/card_update/' + Card.seItem.id
        });
        this.layerIndex = index;
    }
};

/**
 * 删除选号管理
 */
// Card.delete = function () {
//     if (this.check()) {
//         var ajax = new $ax(Feng.ctxPath + "/card/delete", function (data) {
//             Feng.success("删除成功!");
//             Card.table.refresh();
//         }, function (data) {
//             Feng.error("删除失败!" + data.responseJSON.message + "!");
//         });
//         ajax.set("cardId",this.seItem.id);
//         ajax.start();
//     }
// };
/**
 * 批量删除选号
 */
Card.delete = function () {
    if (this.check()) {
        var selected = $('#' + this.id).bootstrapTable('getSelections');
        var ids = "";
        for(var i = 0; i < selected.length; i++) {
            ids += selected[i].id + ",";
        }
        var ajax = new $ax(Feng.ctxPath + "/card/deleteBatch", function (data) {
            Feng.success("删除成功!");
            Card.table.refresh();
        }, function (data) {
            Feng.error("删除失败!" + data.responseJSON.message + "!");
        });
        ajax.set("ids", ids);
        ajax.start();
    }
};

/**
 * 根据当前账号删除上传号码
 */

Card.deleteTotalByCurrentUser = function () {

        var ajax = new $ax(Feng.ctxPath + "/card/deleteByCurrentUser", function (data) {
            Feng.success("删除成功!");
            Card.table.refresh();
        }, function (data) {
            Feng.error("删除失败!" + data.responseJSON.message + "!");
        });
        ajax.start();

};

/**
 * 查询选号管理列表
 */
Card.search = function () {
    var queryData = {};
    queryData['condition'] = $("#condition").val();
    Card.table.refresh({query: queryData});
};

/**
 * searchDelete
 * 根据搜索框关键字 删除所属内容
 */
Card.searchDelete = function(){
    var queryData = {};
    var ajax = new $ax(Feng.ctxPath + "/card/searchDelete", function (data) {
        Feng.success("删除成功!");
        Card.table.refresh();
    }, function (data) {
        Feng.error("删除失败!" + data.responseJSON.message + "!");
    });
    ajax.set("condition", $("#condition").val());
    ajax.start();
};



$(function () {
    var defaultColunms = Card.initColumn();
    var table = new BSTable(Card.id, "/card/list", defaultColunms);
    table.setPaginationType("client");
    Card.table = table.init();
});

