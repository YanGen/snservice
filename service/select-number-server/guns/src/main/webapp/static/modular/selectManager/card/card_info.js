/**
 * 初始化选号管理详情对话框
 */
var CardInfoDlg = {
    cardInfoData : {}
};

/**
 * 清除数据
 */
CardInfoDlg.clearData = function() {
    this.cardInfoData = {};
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
CardInfoDlg.set = function(key, val) {
    this.cardInfoData[key] = (typeof val == "undefined") ? $("#" + key).val() : val;
    return this;
}

/**
 * 设置对话框中的数据
 *
 * @param key 数据的名称
 * @param val 数据的具体值
 */
CardInfoDlg.get = function(key) {
    return $("#" + key).val();
}

/**
 * 关闭此对话框
 */
CardInfoDlg.close = function() {
    parent.layer.close(window.parent.Card.layerIndex);
}

/**
 * 收集数据
 */
CardInfoDlg.collectData = function() {
    this
    .set('id')
    .set('deleteFlag')
    .set('iNumber')
    .set('price')
    .set('operatorId')
    .set('provinceId')
    .set('cityId')
    .set('includedFee')
    .set('detail')
    .set('start')
    .set('processed')
    .set('status');
}

/**
 * 提交添加
 */
CardInfoDlg.addSubmit = function() {
    $("#province").attr('id','provinceId');
    $('#city').attr('id','cityId');

    this.clearData();
    this.collectData();

    $("#provinceId").attr('id','province');
    $('#cityId').attr('id','city');

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/card/add", function(data){
        Feng.success("添加成功!");
        window.parent.Card.table.refresh();
        CardInfoDlg.close();
    },function(data){
        Feng.error("添加失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.cardInfoData);
    ajax.start();
}

/**
 * 提交批量添加
 */
CardInfoDlg.addBatchSubmit = function() {

    $("#province").attr('id','provinceId');
    $('#city').attr('id','cityId');

    this.clearData();
    this.collectData();

    $("#provinceId").attr('id','province');
    $('#cityId').attr('id','city');

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/card/addBatch", function(data){
        Feng.success("添加成功!");
        window.parent.Card.table.refresh();
        CardInfoDlg.close();
    },function(data){
        Feng.error("添加失败!" + data.responseJSON.message + "!");
    });
    var formData = new FormData();
    formData.append('fileExcel',$('#fileExcel')[0].files[0]);
    formData.append("card",JSON.stringify(this.cardInfoData));
    // this.cardInfoData['fileExcel'] = document.getElementById('fileExcel').files[0];

    $.ajax({
        url:Feng.ctxPath + "/card/addBatch",
        dataType:'json',
        type:'POST',
        async: false,
        data: formData,
        processData : false, // 使数据不做处理
        contentType : false, // 不要设置Content-Type请求头
        success: function(data){
            console.log(data);
            if (data.success) {
                Feng.success("上传成功，可刷新查看！");
            }

        },
        error:function(response){
            console.log(response);
        }
    });

    // console.log(this.cardInfoData);
    // ajax.set(this.cardInfoData);
    // ajax.start();
}

/**
 * 提交修改
 */
CardInfoDlg.editSubmit = function() {
    $("#province").attr('id','provinceId');
    $('#city').attr('id','cityId');

    this.clearData();
    this.collectData();

    $("#provinceId").attr('id','province');
    $('#cityId').attr('id','city');

    //提交信息
    var ajax = new $ax(Feng.ctxPath + "/card/update", function(data){
        Feng.success("修改成功!");
        window.parent.Card.table.refresh();
        CardInfoDlg.close();
    },function(data){
        Feng.error("修改失败!" + data.responseJSON.message + "!");
    });
    ajax.set(this.cardInfoData);
    ajax.start();
}

