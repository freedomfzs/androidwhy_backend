package com.androidwhy.examples.basicweb.service.account;

import com.androidwhy.examples.basicweb.data.UserData;
import com.androidwhy.examples.basicweb.entity.User;
import com.androidwhy.examples.basicweb.repository.TaskDao;
import com.androidwhy.examples.basicweb.repository.UserDao;
import com.androidwhy.examples.basicweb.service.ServiceException;
import com.androidwhy.modules.test.security.shiro.ShiroTestUtils;
import com.androidwhy.modules.utils.DateProvider;
import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;

import java.util.Date;

import static org.junit.Assert.*;

/**
 * AccountService的测试用例, 测试Service层的业务逻辑.
 * 
 * @author Gordon
 */
public class AccountServiceTest {

	@InjectMocks
	private AccountService accountService;

	@Mock
	private UserDao mockUserDao;

	@Mock
	private TaskDao mockTaskDao;

	@Before
	public void setUp() {
		MockitoAnnotations.initMocks(this);
		ShiroTestUtils.mockSubject(new ShiroDbRealm.ShiroUser(3L, "foo", "Foo"));
	}

	@Test
	public void registerUser() {
		User user = UserData.randomNewUser();
		Date currentTime = new Date();
		accountService.setDateProvider(new DateProvider.ConfigurableDateProvider(currentTime));

		accountService.registerUser(user);

		// 验证user的角色，注册日期和加密后的密码都被自动更新了。
		assertEquals("user", user.getRoles());
		assertEquals(currentTime, user.getRegisterDate());
		assertNotNull(user.getPassword());
		assertNotNull(user.getSalt());
	}

	@Test
	public void updateUser() {
		// 如果明文密码不为空，加密密码会被更新.
		User user = UserData.randomNewUser();
		accountService.updateUser(user);
		assertNotNull(user.getSalt());

		// 如果明文密码为空，加密密码无变化。
		User user2 = UserData.randomNewUser();
		user2.setPlainPassword(null);
		accountService.updateUser(user2);
		assertNull(user2.getSalt());
	}

	@Test
	public void deleteUser() {
		// 正常删除用户.
		accountService.deleteUser(2L);
		Mockito.verify(mockUserDao).delete(2L);

		// 删除超级管理用户抛出异常, userDao没有被执行
		try {
			accountService.deleteUser(1L);
			fail("expected ServicExcepton not be thrown");
		} catch (ServiceException e) {
			// expected exception
		}
		Mockito.verify(mockUserDao, Mockito.never()).delete(1L);
	}

}
