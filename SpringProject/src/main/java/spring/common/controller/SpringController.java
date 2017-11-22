package spring.common.controller;


import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import spring.common.dao.SpringDao;
import spring.common.service.SpringService;


@Controller
@RequestMapping(value = "/common")
public class SpringController {

    Logger log = Logger.getLogger(this.getClass());

    @Resource(name = "springService")
    private SpringService springService;

    @Autowired
    private SpringDao springDao;


    @RequestMapping(value = "/openSampleList")
    public ModelAndView openSampleList(String commandMap, Model model) throws Exception {
        ModelAndView mv = new ModelAndView("/test/sampleList");
        @SuppressWarnings("unchecked")
        List<Map<String, Object>> list = springService.selectList(commandMap);
        log.info("****************************springDao.selectList : " + list);

        log.debug("인터셉터 테스트");

        mv.addObject("list", list);
        return mv;
    }


    @RequestMapping(value = "/login")
    public String login(Model model) throws Exception {

        model.addAttribute("login", "login Model");

        return "/login/login";
    }

}
