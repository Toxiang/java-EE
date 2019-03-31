package com.itheima.crm.test;

public class Test {

	public static void main(String[] args) {
		/*
		 * 有一筐鸡蛋，筐里最多放5000个蛋。 1个1个拿拿完。 
		 * 2个2个拿剩1个。 3个3个拿拿完。 4个4个拿剩一个。 5个5个拿剩2个。
		 * 6个6个拿剩3个。 7个拿7个拿拿完。 8和8个拿剩一个。
		 *  9个9个拿拿完,问应该放多少鸡蛋在筐里合适？
		 */
		// int e = ?
		for (int i = 1; i < 5001; i++) {
			if(i % 1 == 0 && i % 2 == 1 && i % 3 == 0 
					&& i % 4 == 1 &&i % 5 == 2 &&i % 6 == 3 &&i % 7 == 0 &&
					i % 8 == 1 &&i % 9 == 0 ){
				System.out.println(i);
			}
		}
	}

}
