package com.androidwhy.examples.showcase.repository.mybatis;

import java.util.List;
import java.util.Map;

import com.androidwhy.examples.showcase.entity.User;

/**
 * 通过@MapperScannerConfigurer扫描目录中的所有接口, 动态在Spring Context中生成实现.
 * 方法名称必须与Mapper.xml中保持一致.
 * 
 * @author Gordon
 */
@MyBatisRepository
public interface UserMybatisDao {

	User get(Long id);

	List<User> search(Map<String, Object> parameters);

	void save(User user);

	void delete(Long id);
}
