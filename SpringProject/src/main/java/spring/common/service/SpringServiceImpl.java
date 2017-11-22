package spring.common.service;


import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import spring.common.dao.SpringDao;


@Service("springService")
public class SpringServiceImpl implements SpringService {

    @Resource(name = "springDao")
    private SpringDao springDao;


    @Override
    public List<Map<String, Object>> selectList(String commandMap) throws Exception {
        return springDao.selectList(commandMap);
    }

}
