package com.muhuan.select.build.encapsulation;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.muhuan.api.util.ValidateUtil;
import com.muhuan.common.entity.Card;
import redis.clients.jedis.params.Params;


import java.util.Map;
import java.util.Random;


import java.util.Map;

/**
 * @ClassName CardEncapsulation
 * @Description TODO
 * @Author geng <yg.db@uniteddata.com>
 * @Date 2019/12/12
 * @Version 1.0.0
 **/
public class CardEncapsulation {

    /**
     * 将queryFlex的params包装成wrapper
     * @param params
     * @return
     */
    public static QueryWrapper queryFlexParamsToWrapper(Map<String,Object > params){

        Random random = new java.util.Random();

        QueryWrapper<Card> wrapper = new QueryWrapper<>();
        wrapper.orderByDesc("id");


        if(!ValidateUtil.isEmpty(((String)params.get("number")).replace("模糊搜索",""))){
//            System.out.print("模糊搜索");
            String mhss = (String) params.get("number");
            if (!ValidateUtil.isEmpty((params.get("midnum")))){
                mhss = mhss+"%";
            }


            wrapper.like("i_number", mhss);

        }
        if (!ValidateUtil.isEmpty(params.get("without4"))){
            wrapper.notLike("i_number", "4");
        }
        if (!ValidateUtil.isEmpty((params.get("without7")))){
            wrapper.notLike("i_number", "7");
        }

        if (!ValidateUtil.isEmpty(params.get("price"))){
//            System.out.print("价格区间");
            String priceParam = (String) params.get("price");
            if (priceParam.contains("-")){
                Float a = Float.valueOf(priceParam.split("-")[0]);
                Float b = Float.valueOf(priceParam.split("-")[1]);
                wrapper.between("price",a,b);
            }else if (priceParam.equals("50000以上")){
                wrapper.lt("price", 50000);
            }
        }
//        System.out.print("自定义价格区间");
        if (!ValidateUtil.isEmpty(params.get("zdyjg1"))){
            Float a = Float.valueOf(String.valueOf(params.get("zdyjg1")));
            wrapper.ge("price",a);
        }
        if (!ValidateUtil.isEmpty(params.get("zdyjg2"))){
            Float a = Float.valueOf(String.valueOf(params.get("zdyjg2")));
            wrapper.lt("price",a);
        }
//        System.out.print("排序");
        if (!ValidateUtil.isEmpty(params.get("Xu"))){
            int Xu = Integer.parseInt((String) params.get("Xu"));
            switch (Xu){
                case 1:
                    wrapper.orderByAsc("i_number");
                    break;
                case 2:
                    wrapper.orderByDesc("i_number");
                    break;
                case 3:
                    wrapper.orderByAsc("price");
                    break;
                case 4:
                    wrapper.orderByDesc("start");
                    break;
                case 5:
                    wrapper.orderByDesc("update_time");
                    break;
            }
        }
//        System.out.print("不存在");
        if (!ValidateUtil.isEmpty(params.get("Bshuwei"))){
            String Bshuwei = (String) params.get("Bshuwei");
            if (Bshuwei.contains(",")){
                String [] items = Bshuwei.split(",");
                for(String item : items){
                    wrapper.notLike("i_number", item);
                }
            }
            else {
                wrapper.notLike("i_number", Bshuwei);
            }
        }
//        System.out.print("查找多数");
        if (!ValidateUtil.isEmpty(params.get("shuwei"))){
            String shuwei = (String) params.get("shuwei");
            if (shuwei.contains(",")){
                String [] items = shuwei.split(",");
                for(String item : items){
                    wrapper.like("i_number", item+"%"+item+"%"+item+"%"+item+"%");
                }
            }
            else {
                wrapper.like("i_number", shuwei+"%"+shuwei+"%"+shuwei+"%"+shuwei+"%");
            }
        }

        String reg = "1";
        for (int i = 2;i<=11;i++){
            if (!ValidateUtil.isEmpty(params.get("n"+i))){
                String item = (String) params.get("n"+i);
                reg += item;
            }else {
                reg += "[0-9]";
            }
        }
        if(!ValidateUtil.isEmpty(params.get("operatorId"))){
            wrapper.eq("operator_id",params.get("operatorId"));
        }
        if(!ValidateUtil.isEmpty(params.get("province"))){
            wrapper.eq("province_id",params.get("province"));
            if(!ValidateUtil.isEmpty(params.get("city"))){
                wrapper.eq("city_id",params.get("city"));
            }
        }

        int rnum= (random.nextInt(16)+1)*10000; //随机切割大表 避免全表扫描

//        wrapper.inSql("i_number", "select i_number from select_card where i_number REGEXP '"+reg+"'");
        wrapper.inSql("i_number", "SELECT t.i_number FROM (select i_number from select_card where i_number REGEXP '"+reg+"' LIMIT "+(rnum -10000)+","+ rnum +") as t");
//        wrapper.inSql("i_number", "SELECT t.i_number FROM (select i_number from select_card where i_number REGEXP '"+reg+"'"+operatorSearch + provinceSearch+" LIMIT 10000) as t");

        if (!ValidateUtil.isEmpty(params.get("rule"))) {
            int rule = Integer.parseInt((String) params.get("rule"));

            int base = 1; // 版本关系 可能出现匹配少一位的情况 所以给个基数
            switch (rule){
                case 1:
                    //尾数AAAAA
                    wrapper.inSql("i_number", "select i_number from select_card where i_number REGEXP '([0-9])\\\\1{"+(base+4)+"}$'");
                    break;
                case 2:
                    // 尾数AAAA
                    wrapper.inSql("i_number", "select i_number from select_card where i_number REGEXP '([0-9])\\\\1{"+(base+3)+"}$'");
                    break;
                case 3:
                    //尾数AAABBB
                    wrapper.inSql("i_number", "select i_number from select_card where i_number REGEXP '([0-9])\\\\1{"+(base+4)+"}([0-9])\\\\2{"+(base+2)+"}$'");
                    break;
                case 4:
                    //尾数AABBB
                    wrapper.inSql("i_number", "select i_number from select_card where i_number REGEXP '([0-9])\\\\1{"+(base+1)+"}([0-9])\\\\2{"+(base+2)+"}$'");
                    break;
                case 5:
                    //尾数AAA
                    wrapper.inSql("i_number", "select i_number from select_card where i_number REGEXP '([0-9])\\\\1{"+(base+2)+"}$'");
                    break;
                case 6:
                    //尾数AABBCC
                    wrapper.inSql("i_number","select i_number from select_card where i_number REGEXP '([0-9])\\\\1{"+(base+1)+"}([0-9])\\\\2{"+(base+1)+"}([0-9])\\\\3{"+(base+1)+"}$'");
                    break;
                case 7:
                    //尾数AABB
                    wrapper.inSql("i_number", "select i_number from select_card where i_number REGEXP '([0-9])\\\\1{"+(base+1)+"}([0-9])\\\\2{"+(base+1)+"}$'");
                    break;
                case 9:
                    //尾数ABAB
                    wrapper.inSql("i_number","select i_number from select_card where  SUBSTRING(i_number,8,2)=SUBSTRING(i_number,10,2) and SUBSTRING(i_number,8,1)!=SUBSTRING(i_number,11,1)");
                    break;
                case 10:
                    // 尾数AA
                    wrapper.inSql("i_number", "select i_number from select_card where i_number REGEXP '([0-9])\\\\1{"+(base+1)+"}$'");
                    break;
                case 11:
                    // 六位顺增
                    wrapper.inSql("i_number", "select i_number from select_card where i_number REGEXP '(?:0(?=1)|1(?=2)|2(?=3)|3(?=4)|4(?=5)|5(?=6)|6(?=7)|7(?=8)|8(?=9)){5}[0-9\n" +
                            "]'");
                    break;
                case 12:
                    //六位顺降
                    wrapper.inSql("i_number", "select i_number from select_card where i_number REGEXP '(?:9(?=8)|8(?=7)|7(?=6)|6(?=5)|5(?=4)|4(?=3)|3(?=2)|2(?=1)|1(?=0)){5}[0-9]'");
                    break;
                case 13:
                    // 六位顺增或降
                    wrapper.inSql("i_number", "select i_number from select_card where i_number REGEXP '(?:(?:0(?=1)|1(?=2)|2(?=3)|3(?=4)|4(?=5)|5(?=6)|6(?=7)|7(?=8)|8(?=9)){5}|(?:9(?=8)|8(?=7)|7(?=6)|6(?=5)|5(?=4)|4(?=3)|3(?=2)|2(?=1)|1(?=0)){5})[0-9]'");
                    break;
                case 14:
                    // 中间AAAA
                    wrapper.inSql("i_number", "select i_number from select_card where i_number REGEXP '.([0-9])\\\\1{"+(base+3)+"}.'");
                    break;
                case 15:
                    // 中间AAAAA
                    wrapper.inSql("i_number", "select i_number from select_card where i_number REGEXP '.([0-9])\\\\1{"+(base+4)+"}.'");
                    break;
                case 16:
                    // 中间AAAAAA
                    wrapper.inSql("i_number", "select i_number from select_card where i_number REGEXP '.([0-9])\\\\1{"+(base+5)+"}.'");
                    break;
                case 17:
                    // 中间AAABB
                    wrapper.inSql("i_number", "select i_number from select_card where i_number REGEXP '.([0-9])\\\\1{"+(base+2)+"}([0-9])\\\\2{"+(base+1)+"}.'");
                    break;
                case 18:
                    // 中间AABBCC
                    wrapper.inSql("i_number","select i_number from select_card where i_number REGEXP '.([0-9])\\\\1{"+(base+1)+"}([0-9])\\\\2{"+(base+1)+"}([0-9])\\\\3{"+(base+1)+"}.'");
                    break;
                case 19:
                    // 尾数AAA*BBB*
                    wrapper.inSql("i_number","select i_number from select_card where i_number REGEXP '([0-9])\\\\1{"+(base+2)+",}([0-9])\\\\2{"+(base+2)+",}'");
                    break;
                case 20:
                    // 尾数AAABBB*
                    wrapper.inSql("i_number","select i_number from select_card where i_number REGEXP '([0-9])\\\\1{"+(base+2)+"}([0-9])\\\\2{"+(base+2)+",}'");
                    break;
                case 21:
                    // 尾数AAA*BBB
                    wrapper.inSql("i_number","select i_number from select_card where i_number REGEXP '([0-9])\\\\1{"+(base+2)+",}([0-9])\\\\2{"+(base+2)+"}'");
                    break;
                case 22:
                    // 四位顺增
                    wrapper.inSql("i_number", "select i_number from select_card where i_number REGEXP '(?:0(?=1)|1(?=2)|2(?=3)|3(?=4)|4(?=5)|5(?=6)|6(?=7)|7(?=8)|8(?=9)){3}[0-9\n" +
                            "]'");
                    break;
                case 23:
                    //四位顺降
                    wrapper.inSql("i_number", "select i_number from select_card where i_number REGEXP '(?:9(?=8)|8(?=7)|7(?=6)|6(?=5)|5(?=4)|4(?=3)|3(?=2)|2(?=1)|1(?=0)){3}[0-9]'");
                    break;
                case 24:
                    // 四位顺增或降
                    wrapper.inSql("i_number", "select i_number from select_card where i_number REGEXP '(?:(?:0(?=1)|1(?=2)|2(?=3)|3(?=4)|4(?=5)|5(?=6)|6(?=7)|7(?=8)|8(?=9)){3}|(?:9(?=8)|8(?=7)|7(?=6)|6(?=5)|5(?=4)|4(?=3)|3(?=2)|2(?=1)|1(?=0)){3})[0-9]'");
                    break;
                case 25:
                    // 中间AAA
                    wrapper.inSql("i_number", "select i_number from select_card where i_number REGEXP '.([0-9])\\\\1{"+(base+2)+"}.'");
                    break;
                case 26:
                    // 中间AA
                    wrapper.inSql("i_number", "select i_number from select_card where i_number REGEXP '([0-9])\\\\1{"+(base+1)+"}'");
                    break;
                case 27:
                    // 中间AABBB
                    wrapper.inSql("i_number", "select i_number from select_card where i_number REGEXP '([0-9])\\\\1{"+(base+1)+"}([0-9])\\\\2{"+(base+2)+"}.'");
                    break;
                case 28:
                    // 中间AAABBB
                    wrapper.inSql("i_number", "select i_number from select_card where i_number REGEXP '([0-9])\\\\1{"+(base+2)+"}([0-9])\\\\2{"+(base+2)+"}.'");
                    break;
                case 29:
                    //尾数AAAAB
                    wrapper.inSql("i_number","select i_number from select_card where i_number REGEXP '([0-9])\\\\1{"+(base+3)+"}([0-9])$'");
                    break;
                case 30:
                    //尾数AAAB
                    wrapper.inSql("i_number","select i_number from select_card where i_number REGEXP '([0-9])\\\\1{"+(base+2)+"}([0-9])$'");
                    break;
            }
        }
        return wrapper;
    }


}
