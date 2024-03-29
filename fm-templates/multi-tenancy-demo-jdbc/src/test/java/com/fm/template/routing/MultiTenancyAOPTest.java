package com.fm.template.routing;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;

import com.fm.template.multitenancy.manager.UserManager;
import com.fm.template.multitenancy.model.User;

@ContextConfiguration(locations = { "classpath:test-applicationContext.xml" })
public class MultiTenancyAOPTest extends MultiTenancyBaseTest {
	@Autowired
	private UserManager userManager;
	
	@Test
	public void testGetAll() {
		List<User> users = userManager.all(tenantServer1);
		Assert.assertTrue(users.size() == 2);
		System.out.println("Users in multi1:\n" + users + "\n");

		users = userManager.all(tenantServer2);
		Assert.assertTrue(users.size() == 2);
		System.out.println("Users in multi2:\n" + users + "\n");
		
		users = userManager.all(tenantServer3);
		Assert.assertTrue(users.size() == 0);
		System.out.println("Users in multi3:\n" + users + "\n");
		
		System.out.println("Saving a new user in multi3");
		User user = new User("multi-3-a");
		userManager.save(tenantServer3, user);
		
		users = userManager.all(tenantServer3);
		Assert.assertTrue(users.size() == 1);
		System.out.println("Users in multi3:\n" + users + "\n");
		user = userManager.getByName(tenantServer3, "multi-3-a");
		Assert.assertNotNull(user);
		userManager.delete(tenantServer3, user); // delete this user for test replication
		
		System.out.println("Saving a new user in multi2");
		user = new User("multi-2-c");
		userManager.save(tenantServer2, user);
		
		users = userManager.all(tenantServer2);
		Assert.assertTrue(users.size() == 3);
		System.out.println("Users in multi2:\n" + users + "\n");
		user = userManager.getByName(tenantServer2, "multi-2-c");
		Assert.assertNotNull(user);
		userManager.delete(tenantServer2, user); // delete this user for test replication

	}

}