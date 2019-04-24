package dao;

import java.util.List;

import bean.goods;

public interface IGoodDAO {
	goods create(goods stu) throws Exception;
	void remove(goods stu) throws Exception;
	goods find(goods stu) throws Exception;
	List<goods> findAll() throws Exception;
	void update(goods stu) throws Exception;
}