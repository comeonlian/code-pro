package com.leolian.transdata;

import com.leolian.transdata.redis.JedisPoolUtil;

import redis.clients.jedis.Jedis;

/**
 * Unit test for simple App.
 */
public class TransDataTest {
	
	public static void main(String[] args) {
		/*TransferDao dao = new TransferDao();
		dao.query();*/
		
		/*JedisPoolUtil jedisPoolUtil = new JedisPoolUtil("192.168.0.59", 6379);
		Jedis jedis = jedisPoolUtil.getJedis();
		jedis.select(6);
		String val = jedis.get("key001");
		System.out.println(val);
		jedisPoolUtil.release(jedis);*/
		
		String s = "370111196701024810";
		System.out.println(s.length());
	}
	
}
