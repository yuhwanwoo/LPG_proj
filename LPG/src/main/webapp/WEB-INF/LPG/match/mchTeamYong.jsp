<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<body>
  <!-- *****************************************************************************************************************
	 CONTACT FORMS
	 ***************************************************************************************************************** -->
<div class="container mtb">
    <div class="row">
      <div class="col-sm-8">
        <h4>신청페이지</h4>
        <div class="hline"></div>
        <form class="contact-form php-mail-form" role="form" action="contactform/contactform.php" method="POST">
          		<br/>
			<div class="form-group">
				<div class="row">
				<textarea class="form-control" name="message" id="contact-message" placeholder="Your Message" rows="5" data-rule="required" data-msg="Please write something for us"></textarea>
				
				</div>
			</div>
		
		
          <div class="form-group">
					
					<div class="col-sm-2">
					<button type="submit" class="btn btn-theme">용병신청</button>
					</div>
					<div class="col-sm-7">
					<button type="reset" class="btn btn-theme">용병취소 </button>
					</div>
			</div>			
           
			
     

          </form>
      </div>

	      <div class="col-sm-4">
	                     
	      </div>
    </div>
  </div>


  

</body>
</html>
