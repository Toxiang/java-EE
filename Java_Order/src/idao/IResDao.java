package idao;

import java.util.List;

public interface IResDao {
	public List getResByName(String name);
	public List showAllRes();
	public void deleteRes(String resid);
	public void AddRes(String resid,String resname,String resprice);
}
