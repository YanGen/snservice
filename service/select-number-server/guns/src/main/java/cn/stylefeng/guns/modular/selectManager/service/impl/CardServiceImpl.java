package cn.stylefeng.guns.modular.selectManager.service.impl;

import cn.stylefeng.guns.modular.system.model.Card;
import cn.stylefeng.guns.modular.system.dao.CardMapper;
import cn.stylefeng.guns.modular.selectManager.service.ICardService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 号码表 服务实现类
 * </p>
 *
 * @author you
 * @since 2019-11-05
 */
@Service
public class CardServiceImpl extends ServiceImpl<CardMapper, Card> implements ICardService {

}
