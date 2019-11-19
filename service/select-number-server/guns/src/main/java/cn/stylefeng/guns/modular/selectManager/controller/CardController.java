package cn.stylefeng.guns.modular.selectManager.controller;

import cn.stylefeng.guns.modular.selectManager.service.ImportExcelService;
import cn.stylefeng.roses.core.base.controller.BaseController;
import cn.stylefeng.roses.core.util.ToolUtil;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.google.gson.Gson;
import org.apache.ibatis.jdbc.Null;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.beetl.ext.fn.Print;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import cn.stylefeng.guns.core.log.LogObjectHolder;
import cn.stylefeng.guns.modular.system.model.Card;
import cn.stylefeng.guns.modular.selectManager.service.ICardService;
import org.springframework.web.multipart.MultipartFile;

import java.io.InputStream;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

/**
 * 选号管理控制器
 *
 * @author fengshuonan
 * @Date 2019-11-05 11:57:47
 */
@Controller
@RequestMapping("/card")
public class CardController extends BaseController {

    private String PREFIX = "/selectManager/card/";

    @Autowired
    private ICardService cardService;
    @Autowired
    private ImportExcelService importExcelService;

    /**
     * 跳转到选号管理首页
     */
    @RequestMapping("")
    public String index() {
        return PREFIX + "card.html";
    }

    /**
     * 跳转到添加选号管理
     */
    @RequestMapping("/card_add")
    public String cardAdd() {
        return PREFIX + "card_add.html";
    }

    /**
     * 跳转到批量添加选号管理
     */
    @RequestMapping("/card_add_batch")
    public String cardAddBatch() {
        return PREFIX + "card_add_batch.html";
    }

    /**
     * 跳转到修改选号管理
     */
    @RequestMapping("/card_update/{cardId}")
    public String cardUpdate(@PathVariable Integer cardId, Model model) {
        Card card = cardService.selectById(cardId);
        model.addAttribute("item",card);
        LogObjectHolder.me().set(card);
        return PREFIX + "card_edit.html";
    }

    /**
     * 获取选号管理列表
     */
    @RequestMapping(value = "/list")
    @ResponseBody
    public Object list(String condition) {
        if(ToolUtil.isEmpty(condition)){
            EntityWrapper<Card> cardEntityWrapper = new EntityWrapper<>();
            Wrapper<Card> cardWrapper = cardEntityWrapper.orderBy("id",false)
                    .eq("delete_flag", 0);
            return cardService.selectList(cardWrapper);
        }else {
            EntityWrapper<Card> cardEntityWrapper = new EntityWrapper<>();
            Wrapper<Card> cardWrapper = cardEntityWrapper.like("i_number", condition)
                    .orderBy("id",false)
                    .eq("delete_flag", 0);
            return cardService.selectList(cardWrapper);
        }
    }

    /**
     * 获取选号管理列表
     */
    @RequestMapping(value = "/searchDelete")
    @ResponseBody
    public Object searchDelete(String condition) {
        if(!ToolUtil.isEmpty(condition)){
            EntityWrapper<Card> cardEntityWrapper = new EntityWrapper<>();
            Wrapper<Card> cardWrapper = cardEntityWrapper.like("i_number", condition)
                    .orderBy("id",false)
                    .eq("delete_flag", 0);
            return cardService.delete(cardWrapper);
        }
        return null;
    }

    /**
     * 新增选号管理
     */
    @RequestMapping(value = "/add")
    @ResponseBody
    public Object add(Card card) {
        long time = System.currentTimeMillis()/1000;

        card.setInsertTime(time);
        card.setUpdateTime(time);
        card.setDeleteFlag(0);
        cardService.insert(card);
        return SUCCESS_TIP;
    }


    /**
     * 批量新增选号管理
     */
    @RequestMapping(value = "/addBatch")
    @ResponseBody
    public Object addBatch(@RequestParam("fileExcel")MultipartFile fileExcel,@RequestParam("card") String card) throws Exception{
        long time = Timestamp.valueOf(LocalDateTime.now()).getTime()/1000;

        if (fileExcel != null && fileExcel.isEmpty()) {
            return "文件不能为空";
        }
        String fileName = fileExcel.getOriginalFilename();
//        System.out.println(fileName);
        InputStream inputStream = fileExcel.getInputStream();
        List<List<XSSFCell>> list = importExcelService.getBankListByExcel(inputStream, fileExcel.getOriginalFilename());
        inputStream.close();
        Gson gson = new Gson();

        List<Card> cards = new ArrayList<>();

        for (int i = 0; i < list.size(); i++) {
            List<XSSFCell> lo = list.get(i);
            if (lo.size() >= 3){
                String number = lo.get(0).getRawValue().replace(".", "").replace("E10", "");
                Float price = Float.parseFloat(lo.get(1).getRawValue());
                String includedFee = lo.get(2).getRawValue();
                Card c1 = gson.fromJson(card,Card.class);
                c1.setDeleteFlag(0);
                c1.setInsertTime(time);
                c1.setUpdateTime(time);
                c1.setiNumber(number);
                c1.setPrice(price);
                c1.setIncludedFee(includedFee);
                cards.add(c1);
            }

        }
        cardService.insertOrUpdateBatch(cards);

//        cardService.insert(card);
        return SUCCESS_TIP;
    }

    /**
     * 删除选号管理
     */
    @RequestMapping(value = "/delete")
    @ResponseBody
    public Object delete(@RequestParam Integer cardId) {
        cardService.deleteById(cardId);
        return SUCCESS_TIP;
    }

    /**
     * 修改选号管理
     */
    @RequestMapping(value = "/update")
    @ResponseBody
    public Object update(Card card) {
        System.out.println(card.toString());
        long time = Timestamp.valueOf(LocalDateTime.now()).getTime();
        card.setUpdateTime(time);
        cardService.updateById(card);
        return SUCCESS_TIP;
    }

    /**
     * 选号管理详情
     */
    @RequestMapping(value = "/detail/{cardId}")
    @ResponseBody
    public Object detail(@PathVariable("cardId") Integer cardId) {
        return cardService.selectById(cardId);
    }

    /**
     *  批量删除
     */
    @RequestMapping(value = "/deleteBatch")
    @ResponseBody
    public Object deleteBatch(@RequestParam String ids) {
        String[] ss = ids.split(",");
        List<Integer> ii = new ArrayList<>();
        for (String s : ss) {
            ii.add(Integer.parseInt(s));
        }
        cardService.deleteBatchIds(ii);
        return SUCCESS_TIP;
    }
}
