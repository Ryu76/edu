package review.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import common.model.DAOTripManagerBase;

public class ReviewDAO extends DAOTripManagerBase{

	private final String NS="common.mapper.ReviewMapper";
	
	public ReviewDAO() {
		System.out.println("ReviewDAO()������...");
	}
	
	//�� ���� ��
	public int getTotalCount() {
		try(SqlSession ses=this.getSessionFactory().openSession(true)){
			int count=ses.selectOne(NS+".getTotalCount");
			return count;
		}
		
	}
	
	//��ü ���� �������ϱ�
	public List<ReviewVO> review(int start, int end) {
		try(SqlSession ses = this.getSessionFactory().openSession(true)){
			Map<String, String> map = new HashMap<>();
			map.put("start", String.valueOf(start));
			map.put("end", String.valueOf(end));
			List<ReviewVO> arr = ses.selectList(NS+".review",map);
			return arr;
		}
	}
	
	//��ȸ�� ����
	public int updateReadnum(int re_num) {
		try(SqlSession ses = this.getSessionFactory().openSession(true)){
			int n = ses.update(NS+".updateReadnum", re_num);
			return n;
		}
	}
	
	//�� ��ȣ�� �ش��ϴ� ���丸 �������ϱ�
	public ReviewVO reviewchk(int re_num) {
		try(SqlSession ses = this.getSessionFactory().openSession(true)){
			ReviewVO vo = ses.selectOne(NS+".reviewChk", re_num);
			return vo;
		}
	}

	public int insertReview(ReviewVO vo) {
		try(SqlSession ses = this.getSessionFactory().openSession(true)){
			int n=ses.insert(NS+".insertReview", vo);
			return n;
		}
		
	}

	public List<ReviewVO> reviewList(String u_id) {
		try(SqlSession ses = this.getSessionFactory().openSession(true)){
			List<ReviewVO> arr = ses.selectList(NS+".reviewList", u_id);
			return arr;
		}
	}

	public int deleteReview(ReviewVO vo) {
		try(SqlSession ses = this.getSessionFactory().openSession(true)){
			int n=ses.delete(NS+".deleteReview", vo);
			return n;
		}
	}

	public ReviewVO updateList(int re_num) {
		try(SqlSession ses = this.getSessionFactory().openSession(true)){
			ReviewVO vo = ses.selectOne(NS+".updateList", re_num);
			return vo;
		}
	}

	public int updateReview(ReviewVO vo) {
		try(SqlSession ses = this.getSessionFactory().openSession(true)){
			int n=ses.insert(NS+".updateReview", vo);
			return n;
		}
	}

	public List<ReviewVO> review() {
		// TODO Auto-generated method stub
		return null;
	}
}