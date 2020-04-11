package game.LPG.paging;

public class PagingDTO {
	
	private int totalcount;// 전체 게시물 개수
	private int pagenum;
	private int contentnum;  // 한페이지에 몇개표시 
	private int startPage=1;
	private int endPage=5;
	private boolean prev=false;
	private boolean next;
	private int currentblock;
	private int lastblock;
	private int sportsNo;
	
	public void prevnext(int pagenum) {
		if(pagenum>0&&pagenum<6) {
			if(calcpage(totalcount,contentnum)<=5) {
				setPrev(false);
				setNext(false);
			}else {
			setPrev(false);
			setNext(true);
			}
		}else if(getLastblock()==getCurrentblock()) {
			setPrev(true);
			setNext(false);
		}else {
		
			setPrev(true);
			setNext(true);
		}
	}
	

	public int calcpage(int totalcount, int contentnum) { //전체 페이지 수를 계산하는 함수  

		//125/10 => 12.5 -> 13페이지 
		
		
		int totalpage=totalcount/contentnum;
		if(totalcount%contentnum>0) {
			totalpage=totalpage+1;

		}
		
		return totalpage;
		
	}
	
	
	public int getTotalcount() {
		return totalcount;
	}
	public void setTotalcount(int totalcount) {
		this.totalcount = totalcount;
	}
	public int getPagenum() {
		return pagenum;
	}
	public void setPagenum(int pagenum) {
		this.pagenum = pagenum;
	}
	public int getContentnum() {
		return contentnum;
	}
	public void setContentnum(int contentnum) {
		this.contentnum = contentnum;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int currentblock) {		

		this.startPage = (currentblock*5)-4;
		//1//1 2 3 4 5
		//2//6 7 8 9 10
		//3//11 12 13
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int getlastblock, int getcurrentblock) {
		if(getlastblock==getcurrentblock) {
			this.endPage= calcpage(getTotalcount(),getContentnum());
		}
		else {
			this.endPage = getStartPage()+4;
		}
		
		
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public int getCurrentblock() {
		return currentblock;
	}
	public void setCurrentblock(int pagenum) {
		//페이지 번호/ 페이지 그룹안의 페이지 개수 
		//1p 1 /5 => 0.2 ->0 + 1 => 1 > 페이지 블록 1
		//3p 3 /5 => 0.xx => 0 + 1 > 페이지 블록 1
		//8p 8 /5 => 1.6 => 1 + 1 > 페이지 블록 2
		this.currentblock = pagenum/5;
		if(pagenum%5>0) {
			this.currentblock++;
		}
	}
	public int getLastblock() {
		return lastblock;
	}
	public void setLastblock(int totalcount) {
		//10 , 5 = > 10 * 5 => 50
		//125/ 50 
		//3
		this.lastblock = totalcount/(5*this.contentnum);
		if(totalcount%(5*this.contentnum)>0) {
			this.lastblock++;
		}
	}


	public int getSportsNo() {
		return sportsNo;
	}


	public void setSportsNo(int sportsNo) {
		this.sportsNo = sportsNo;
	}
	
	
}
