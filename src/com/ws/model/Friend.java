package com.ws.model;

public class Friend extends FriendKey {

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column friend.friendRemarks
	 * @mbggenerated  Sun Jul 09 00:06:36 CST 2017
	 */
	private String friendremarks;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column friend.username
	 * @mbggenerated  Sun Jul 09 00:06:36 CST 2017
	 */
	private String username;

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column friend.friendRemarks
	 * @return  the value of friend.friendRemarks
	 * @mbggenerated  Sun Jul 09 00:06:36 CST 2017
	 */
	public String getFriendremarks() {
		return friendremarks;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column friend.friendRemarks
	 * @param friendremarks  the value for friend.friendRemarks
	 * @mbggenerated  Sun Jul 09 00:06:36 CST 2017
	 */
	public void setFriendremarks(String friendremarks) {
		this.friendremarks = friendremarks;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column friend.username
	 * @return  the value of friend.username
	 * @mbggenerated  Sun Jul 09 00:06:36 CST 2017
	 */
	public String getUsername() {
		return username;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column friend.username
	 * @param username  the value for friend.username
	 * @mbggenerated  Sun Jul 09 00:06:36 CST 2017
	 */
	public void setUsername(String username) {
		this.username = username;
	}

	@Override
	public String toString() {
		return "Friend [friendremarks=" + friendremarks + ", username="
				+ username + "]";
	}
}