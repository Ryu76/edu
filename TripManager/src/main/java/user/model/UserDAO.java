package user.model;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.catalina.SessionEvent;
import org.apache.ibatis.session.SqlSession;

import common.model.DAOTripManagerBase;
import review.model.ReviewVO;

public class UserDAO extends DAOTripManagerBase{
   
   private final String NS="common.mapper.LoginMapper";
   
 
   

   public int LoginUser(String id,String pw) {
		try(SqlSession ses=this.getSessionFactory().openSession(true)){
			   
			UserVO n=ses.selectOne(NS+".loginid", id);
			   System.out.println("n:"+n+"id:"+id);
	         //int m = ses.selectOne(NS+".loginpw",pw);
	         if(n!=null) {
	        	 if(n.getU_pwd().equals(pw))
	        		 return 1;//아이디,비번 일치는 경우
	        	 else
	        		 return -1; //비번 틀린 경우
	         }else {
	        	 return -2;//아이디 없는 경우
	         }
	      }
	}
 
    public boolean findId(String userid) {
    	 try(SqlSession ses=this.getSessionFactory().openSession(true)){
           String idx=ses.selectOne(NS+".findId",userid);
           if(idx==null) {
        	   //아이디가 없으면
        	   return true;
           }else {
        	   return false;
           }
        	   
    	 }
		
   }

	
}
