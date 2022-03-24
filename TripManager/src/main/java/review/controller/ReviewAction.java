package review.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import common.controller.AbstractAction;
import review.model.ReviewDAO;
import review.model.ReviewVO;

public class ReviewAction extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ReviewDAO dao=new ReviewDAO();
		
		//게시글 목록 가져오기
		List<ReviewVO> reviewArr = dao.review();
		System.out.println(reviewArr);
		 
		req.setAttribute("reviewArr", reviewArr);
		
		this.setViewPage("/review/review.jsp");
		this.setRedirect(false);
	}

}
