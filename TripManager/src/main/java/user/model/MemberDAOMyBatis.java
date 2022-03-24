package user.model;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import common.model.DAOMyBatisBase;

public class MemberDAOMyBatis extends DAOMyBatisBase{
   
   private final String NS="common.mapper.TripMapper";
   
 

   public int insertUser(MemberVO vo) {      
      try(SqlSession ses=this.getSessionFactory().openSession(true)){
         int n=ses.insert(NS+".insertUser", vo);
         return n;
      }
   }

    public boolean idCheck(String userid) {
    	 try(SqlSession ses=this.getSessionFactory().openSession(true)){
           String idx=ses.selectOne(NS+".idCheck",userid);
           if(idx==null) {
        	   //아이디가 없으면
        	   return true;
           }else {
        	   return false;
           }
        	   
    	 }
		
   }
}



