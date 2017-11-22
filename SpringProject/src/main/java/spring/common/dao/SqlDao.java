package spring.common.dao;


import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;


public class SqlDao {

    protected Log log = LogFactory.getLog(SqlDao.class);

    @Autowired
    private SqlSessionTemplate sqlSession;


    protected void printQueryId(String queryId) {
        if (log.isDebugEnabled()) {
            log.debug("\t QueryId  \t:  " + queryId);
        }
    }


    public String selectOne(String queryId) {
        printQueryId(queryId);
        return sqlSession.selectOne(queryId);
    }


    @SuppressWarnings("rawtypes")
    public List selectList(String queryId) throws Exception {
        printQueryId(queryId);
        return sqlSession.selectList(queryId);
    }


    @SuppressWarnings("rawtypes")
    public List selectList(String queryId, Object params) {
        printQueryId(queryId);
        return sqlSession.selectList(queryId, params);
    }

}
