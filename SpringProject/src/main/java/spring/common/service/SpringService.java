package spring.common.service;


import java.util.List;
import java.util.Map;


public interface SpringService {

    List<Map<String, Object>> selectList(String commandMap) throws Exception;

}
