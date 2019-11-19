/**
 * orderManage管理初始化
 */
var Order = {
    id: "OrderTable",	//表格id
    seItem: null,		//选中的条目
    table: null,
    layerIndex: -1
};

/**
 * 初始化表格的列
 */
Order.initColumn = function () {
    return [
        {field: 'selectItem', radio: true},
            {title: '引位', field: 'id', visible: true, align: 'center', valign: 'middle'},
            {title: '插入时间', field: 'insertTime', visible: true, align: 'center', valign: 'middle'},
            {title: '最新操作时间', field: 'updateTime', visible: true, align: 'center', valign: 'middle'},
            {title: '删除标记', field: 'deleteFlag', visible: true, align: 'center', valign: 'middle'},
            {title: '选号号码', field: 'numberId', visible: true, align: 'center', valign: 'middle'},
            {title: '过程', field: 'processed', visible: true, align: 'center', valign: 'middle'},
            {title: '状态', field: 'status', visible: true, align: 'center', valign: 'middle'},
            {title: '付款渠道', field: 'payChanel', visible: true, align: 'center', valign: 'middle'},
            {title: '顾客姓名', field: 'customer', visible: true, align: 'center', valign: 'middle'},
            {title: '联系方式', field: 'contact', visible: true, align: 'center', valign: 'middle'},
            {title: 'QQ号', field: 'qq', visible: true, align: 'center', valign: 'middle'},
            {title: '微信号', field: 'wx', visible: true, align: 'center', valign: 'middle'},
            {title: '地址', field: 'location', visible: true, align: 'center', valign: 'middle'}
    ];
};

/**
 * 检查是否选中
 */
Order.check = function () {
    var selected = $('#' + this.id).bootstrapTable('getSelections');
    if(selected.length == 0){
        Feng.info("请先选中表格中的某一记录！");
        return false;
    }else{
        Order.seItem = selected[0];
        return true;
    }
};

/**
 * 点击添加orderManage
 */
Order.openAddOrder = function () {
    var index = layer.open({
        type: 2,
        title: '添加orderManage',
        area: ['800px', '420px'], //宽高
        fix: false, //不固定
        maxmin: true,
        content: Feng.ctxPath + '/order/order_add'
    });
    this.layerIndex = index;
};

/**
 * 打开查看orderManage详情
 */
Order.openOrderDetail = function () {
    if (this.check()) {
        var index = layer.open({
            type: 2,
            title: 'orderManage详情',
            area: ['800px', '420px'], //宽高
            fix: false, //不固定
            maxmin: true,
            content: Feng.ctxPath + '/order/order_update/' + Order.seItem.id
        });
        this.layerIndex = index;
    }
};

/**
 * 删除orderManage
 */
Order.delete = function () {
    if (this.check()) {
        var ajax = new $ax(Feng.ctxPath + "/order/delete", function (data) {
            Feng.success("删除成功!");
            Order.table.refresh();
        }, function (data) {
            Feng.error("删除失败!" + data.responseJSON.message + "!");
        });
        ajax.set("orderId",this.seItem.id);
        ajax.start();
    }
};

/**
 * 查询orderManage列表
 */
Order.search = function () {
    var queryData = {};
    queryData['condition'] = $("#condition").val();
    Order.table.refresh({query: queryData});
};

$(function () {
    var defaultColunms = Order.initColumn();
    var table = new BSTable(Order.id, "/order/list", defaultColunms);
    table.setPaginationType("client");
    Order.table = table.init();
});
