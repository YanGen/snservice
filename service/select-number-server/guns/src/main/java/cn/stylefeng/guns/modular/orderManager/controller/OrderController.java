package cn.stylefeng.guns.modular.orderManager.controller;

import cn.stylefeng.roses.core.base.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.beans.factory.annotation.Autowired;
import cn.stylefeng.guns.core.log.LogObjectHolder;
import org.springframework.web.bind.annotation.RequestParam;
import cn.stylefeng.guns.modular.system.model.Order;
import cn.stylefeng.guns.modular.orderManager.service.IOrderService;

import java.util.ArrayList;
import java.util.List;

/**
 * 订单管理控制器
 *
 * @author fengshuonan
 * @Date 2019-11-08 10:12:24
 */
@Controller
@RequestMapping("/order")
public class OrderController extends BaseController {

    private String PREFIX = "/orderManager/order/";

    @Autowired
    private IOrderService orderService;

    /**
     * 跳转到订单管理首页
     */
    @RequestMapping("")
    public String index() {
        return PREFIX + "order.html";
    }

    /**
     * 跳转到添加订单管理
     */
    @RequestMapping("/order_add")
    public String orderAdd() {
        return PREFIX + "order_add.html";
    }

    /**
     * 跳转到修改订单管理
     */
    @RequestMapping("/order_update/{orderId}")
    public String orderUpdate(@PathVariable Integer orderId, Model model) {
        Order order = orderService.selectById(orderId);
        model.addAttribute("item",order);
        LogObjectHolder.me().set(order);
        return PREFIX + "order_edit.html";
    }

    /**
     * 获取订单管理列表
     */
    @RequestMapping(value = "/list")
    @ResponseBody
    public Object list(String condition) {
        return orderService.selectList(null);
    }

    /**
     * 新增订单管理
     */
    @RequestMapping(value = "/add")
    @ResponseBody
    public Object add(Order order) {
        orderService.insert(order);
        return SUCCESS_TIP;
    }

    /**
     * 删除订单管理
     */
    @RequestMapping(value = "/delete")
    @ResponseBody
    public Object delete(@RequestParam Integer orderId) {
        orderService.deleteById(orderId);
        return SUCCESS_TIP;
    }

    /**
     * 批量删除订单
     */
    @RequestMapping(value = "/deleteBatch")
    @ResponseBody
    public Object deleteBatch(@RequestParam String ids) {
        String[] ss = ids.split(",");
        List<Integer> ii = new ArrayList<>();
        for (String s : ss) {
            ii.add(Integer.parseInt(s));
        }
        orderService.deleteBatchIds(ii);
        return SUCCESS_TIP;
    }


    /**
     * 修改订单管理
     */
    @RequestMapping(value = "/update")
    @ResponseBody
    public Object update(Order order) {
        orderService.updateById(order);
        return SUCCESS_TIP;
    }

    /**
     * 订单管理详情
     */
    @RequestMapping(value = "/detail/{orderId}")
    @ResponseBody
    public Object detail(@PathVariable("orderId") Integer orderId) {
        return orderService.selectById(orderId);
    }
}
