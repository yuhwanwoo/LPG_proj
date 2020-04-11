package game.LPG.ground;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class jsonParser {
	public ArrayList<GroundAPIDTO> parseJson(String jsonData){
		ArrayList<GroundAPIDTO> dtoArr = new ArrayList<GroundAPIDTO>();
		try {
			JSONParser jParser = new JSONParser();
			
			JSONObject jObject;
			jObject = (JSONObject)jParser.parse(jsonData);
			JSONObject lprsObj = (JSONObject)jObject.get("ListPublicReservationSport");
			
			long count = (long)lprsObj.get("list_total_count");
			System.out.println("count--jsonParser: "+count);
			
			JSONObject resultStatus = (JSONObject)lprsObj.get("RESULT");
			String resultCode =(String)resultStatus.get("CODE");
			String resultMsg =(String)resultStatus.get("MESSAGE");
			System.out.println("resultCode--jsonParser: "+resultCode);
			System.out.println("resultMsg--jsonParser: "+resultMsg);
			
			JSONArray rows = (JSONArray)lprsObj.get("row");
			for(int i=0;i<rows.size();i++){
				GroundAPIDTO dto= new GroundAPIDTO();
				//System.out.println("========== ground : ("+i+" )==========");
				JSONObject ground =(JSONObject)rows.get(i);
				dto.setGrdNo((String)ground.get("SVCID"));//grdno
				dto.setGrdType((String)ground.get("MINCLASSNM"));//grdType
				dto.setGrdName((String)ground.get("SVCNM"));//grdname
				dto.setGrdAddr((String)ground.get("PLACENM"));//grdaddr
				dto.setGrdPhone((String)ground.get("TELNO"));//grdphone
				dto.setGrdArea((String)ground.get("AREANM"));//grdarea
				dto.setGrdDetail((String)ground.get("DTLCONT"));//grddetail
				dto.setGrdPay((String)ground.get("PAYATNM"));///grdCost
				dto.setGrdImg((String)ground.get("IMGURL"));//grdImg
				//System.out.println("groundX:"+(String)ground.get("X")+"oh");
				if(((String)ground.get("X")).equals("")){
					dto.setXpos(-1);
				}else{
					dto.setXpos(Double.parseDouble((String)ground.get("X")));//xpos
				}
				if(((String)ground.get("Y")).equals("")){
					dto.setYpos(-1);
				}else{
					dto.setYpos(Double.parseDouble((String)ground.get("Y")));//xpos
				}
				dto.setStartServiceTime((String)ground.get("V_MIN"));//서비스이용시작시간
				dto.setEndServiceTime((String)ground.get("V_MAX"));//서비스이용종료시간
				String str ="";
				String[] str2;
				if(ground.get("RCPTBGNDT")!=""){
					str = (String)ground.get("RCPTBGNDT");
					str2 =str.split(" ");
					dto.setStartRsvDate(str2[0]);//접수시작일시
				} else{
					dto.setStartRsvDate((String)ground.get("RCPTBGNDT"));//접수시작일시
				}
				if(ground.get("RCPTENDDT")!=""){
					str = (String)ground.get("RCPTENDDT");
					str2 =str.split(" ");
					dto.setEndRsvDate(str2[0]);//접수종료일시
				}else{
					dto.setStartRsvDate((String)ground.get("RCPTENDDT"));//접수시작일시
				}
				dto.setCancelDate((String)ground.get("REVSTDDAYNM"));//취소기간 기준정보
				dto.setToCancelDate((String)ground.get("REVSTDDAY"));//취소기간 기준일까지
				
				dtoArr.add(dto);
			}
		
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return dtoArr;
	
	}

}
