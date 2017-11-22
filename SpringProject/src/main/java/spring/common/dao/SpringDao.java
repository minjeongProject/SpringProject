package spring.common.dao;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;


@Qualifier
@Repository("springDao")
public class SpringDao extends SqlDao {

    @SuppressWarnings("unchecked")
    @Override
    public List<Map<String, Object>> selectList(String map) throws Exception {
        return selectList("test.selectList", map);
    }

}
