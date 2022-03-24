package review.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.controller.AbstractAction;
import review.model.ReviewDAO;
import review.model.ReviewVO;

public class ReviewCheckAction extends AbstractAction {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {

		String re_num = req.getParameter("re_num");
		
		if(re_num == null || re_num.trim().isEmpty()) {
			this.setViewPage("review.do");
			this.setRedirect(true);
			return;
		}
		
		int re_num_int = Integer.parseInt(re_num);
		
		ReviewDAO dao=new ReviewDAO();
		
		//���� ����, ���� ��������
		ReviewVO reviewCarr = dao.reviewchk(re_num_int);
		System.out.println(reviewCarr);
		 
		req.setAttribute("review", reviewCarr);
		
		this.setViewPage("/review/reviewCheck.jsp");
		this.setRedirect(false);
	}

}
