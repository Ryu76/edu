package review.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import review.model.ReviewDAO;
import review.model.ReviewVO;
import common.controller.AbstractAction;

public class ReviewInsertEndAction extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
//		ReviewDAO dao = new ReviewDAO();
//		
//		int n = dao.insertReview(vo);
//		// MyBatisWeb/user/board/writeEnd.ict
//		String str=(n>0)?"글쓰기 성공":"글쓰기 실패";
//		String loc=(n>0)?"../../review/review.ict":"javascript:history.back()";
//		
//		req.setAttribute("msg", str);
//		req.setAttribute("loc", loc);
		this.setViewPage("/common/msg.jsp");
		this.setRedirect(false);
	}

}
