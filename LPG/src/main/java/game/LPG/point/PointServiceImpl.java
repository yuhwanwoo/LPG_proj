package game.LPG.point;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
@Service
public class PointServiceImpl implements PointService {
	@Autowired
	@Qualifier("PointDao")
	PointDAO dao;
	@Override
	public List<PointDTO> ponintList(PointDTO point) {
		List<PointDTO> list = dao.ponintList(point);
		System.out.println("^^^^^^^^^^^^^^^^^^^^^^^^^"+list.size());
		return list;
	}

}
