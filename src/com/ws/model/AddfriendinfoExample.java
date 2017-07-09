package com.ws.model;

import java.util.ArrayList;
import java.util.List;

public class AddfriendinfoExample {
    /**
	 * This field was generated by MyBatis Generator. This field corresponds to the database table addfriendinfo
	 * @mbggenerated  Sun Jul 09 16:07:37 CST 2017
	 */
	protected String orderByClause;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database table addfriendinfo
	 * @mbggenerated  Sun Jul 09 16:07:37 CST 2017
	 */
	protected boolean distinct;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database table addfriendinfo
	 * @mbggenerated  Sun Jul 09 16:07:37 CST 2017
	 */
	protected List<Criteria> oredCriteria;

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table addfriendinfo
	 * @mbggenerated  Sun Jul 09 16:07:37 CST 2017
	 */
	public AddfriendinfoExample() {
		oredCriteria = new ArrayList<Criteria>();
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table addfriendinfo
	 * @mbggenerated  Sun Jul 09 16:07:37 CST 2017
	 */
	public void setOrderByClause(String orderByClause) {
		this.orderByClause = orderByClause;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table addfriendinfo
	 * @mbggenerated  Sun Jul 09 16:07:37 CST 2017
	 */
	public String getOrderByClause() {
		return orderByClause;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table addfriendinfo
	 * @mbggenerated  Sun Jul 09 16:07:37 CST 2017
	 */
	public void setDistinct(boolean distinct) {
		this.distinct = distinct;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table addfriendinfo
	 * @mbggenerated  Sun Jul 09 16:07:37 CST 2017
	 */
	public boolean isDistinct() {
		return distinct;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table addfriendinfo
	 * @mbggenerated  Sun Jul 09 16:07:37 CST 2017
	 */
	public List<Criteria> getOredCriteria() {
		return oredCriteria;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table addfriendinfo
	 * @mbggenerated  Sun Jul 09 16:07:37 CST 2017
	 */
	public void or(Criteria criteria) {
		oredCriteria.add(criteria);
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table addfriendinfo
	 * @mbggenerated  Sun Jul 09 16:07:37 CST 2017
	 */
	public Criteria or() {
		Criteria criteria = createCriteriaInternal();
		oredCriteria.add(criteria);
		return criteria;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table addfriendinfo
	 * @mbggenerated  Sun Jul 09 16:07:37 CST 2017
	 */
	public Criteria createCriteria() {
		Criteria criteria = createCriteriaInternal();
		if (oredCriteria.size() == 0) {
			oredCriteria.add(criteria);
		}
		return criteria;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table addfriendinfo
	 * @mbggenerated  Sun Jul 09 16:07:37 CST 2017
	 */
	protected Criteria createCriteriaInternal() {
		Criteria criteria = new Criteria();
		return criteria;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table addfriendinfo
	 * @mbggenerated  Sun Jul 09 16:07:37 CST 2017
	 */
	public void clear() {
		oredCriteria.clear();
		orderByClause = null;
		distinct = false;
	}

	/**
	 * This class was generated by MyBatis Generator. This class corresponds to the database table addfriendinfo
	 * @mbggenerated  Sun Jul 09 16:07:37 CST 2017
	 */
	protected abstract static class GeneratedCriteria {
		protected List<Criterion> criteria;

		protected GeneratedCriteria() {
			super();
			criteria = new ArrayList<Criterion>();
		}

		public boolean isValid() {
			return criteria.size() > 0;
		}

		public List<Criterion> getAllCriteria() {
			return criteria;
		}

		public List<Criterion> getCriteria() {
			return criteria;
		}

		protected void addCriterion(String condition) {
			if (condition == null) {
				throw new RuntimeException("Value for condition cannot be null");
			}
			criteria.add(new Criterion(condition));
		}

		protected void addCriterion(String condition, Object value,
				String property) {
			if (value == null) {
				throw new RuntimeException("Value for " + property
						+ " cannot be null");
			}
			criteria.add(new Criterion(condition, value));
		}

		protected void addCriterion(String condition, Object value1,
				Object value2, String property) {
			if (value1 == null || value2 == null) {
				throw new RuntimeException("Between values for " + property
						+ " cannot be null");
			}
			criteria.add(new Criterion(condition, value1, value2));
		}

		public Criteria andIdIsNull() {
			addCriterion("id is null");
			return (Criteria) this;
		}

		public Criteria andIdIsNotNull() {
			addCriterion("id is not null");
			return (Criteria) this;
		}

		public Criteria andIdEqualTo(Integer value) {
			addCriterion("id =", value, "id");
			return (Criteria) this;
		}

		public Criteria andIdNotEqualTo(Integer value) {
			addCriterion("id <>", value, "id");
			return (Criteria) this;
		}

		public Criteria andIdGreaterThan(Integer value) {
			addCriterion("id >", value, "id");
			return (Criteria) this;
		}

		public Criteria andIdGreaterThanOrEqualTo(Integer value) {
			addCriterion("id >=", value, "id");
			return (Criteria) this;
		}

		public Criteria andIdLessThan(Integer value) {
			addCriterion("id <", value, "id");
			return (Criteria) this;
		}

		public Criteria andIdLessThanOrEqualTo(Integer value) {
			addCriterion("id <=", value, "id");
			return (Criteria) this;
		}

		public Criteria andIdIn(List<Integer> values) {
			addCriterion("id in", values, "id");
			return (Criteria) this;
		}

		public Criteria andIdNotIn(List<Integer> values) {
			addCriterion("id not in", values, "id");
			return (Criteria) this;
		}

		public Criteria andIdBetween(Integer value1, Integer value2) {
			addCriterion("id between", value1, value2, "id");
			return (Criteria) this;
		}

		public Criteria andIdNotBetween(Integer value1, Integer value2) {
			addCriterion("id not between", value1, value2, "id");
			return (Criteria) this;
		}

		public Criteria andMyidIsNull() {
			addCriterion("myId is null");
			return (Criteria) this;
		}

		public Criteria andMyidIsNotNull() {
			addCriterion("myId is not null");
			return (Criteria) this;
		}

		public Criteria andMyidEqualTo(Integer value) {
			addCriterion("myId =", value, "myid");
			return (Criteria) this;
		}

		public Criteria andMyidNotEqualTo(Integer value) {
			addCriterion("myId <>", value, "myid");
			return (Criteria) this;
		}

		public Criteria andMyidGreaterThan(Integer value) {
			addCriterion("myId >", value, "myid");
			return (Criteria) this;
		}

		public Criteria andMyidGreaterThanOrEqualTo(Integer value) {
			addCriterion("myId >=", value, "myid");
			return (Criteria) this;
		}

		public Criteria andMyidLessThan(Integer value) {
			addCriterion("myId <", value, "myid");
			return (Criteria) this;
		}

		public Criteria andMyidLessThanOrEqualTo(Integer value) {
			addCriterion("myId <=", value, "myid");
			return (Criteria) this;
		}

		public Criteria andMyidIn(List<Integer> values) {
			addCriterion("myId in", values, "myid");
			return (Criteria) this;
		}

		public Criteria andMyidNotIn(List<Integer> values) {
			addCriterion("myId not in", values, "myid");
			return (Criteria) this;
		}

		public Criteria andMyidBetween(Integer value1, Integer value2) {
			addCriterion("myId between", value1, value2, "myid");
			return (Criteria) this;
		}

		public Criteria andMyidNotBetween(Integer value1, Integer value2) {
			addCriterion("myId not between", value1, value2, "myid");
			return (Criteria) this;
		}

		public Criteria andFriendidIsNull() {
			addCriterion("friendId is null");
			return (Criteria) this;
		}

		public Criteria andFriendidIsNotNull() {
			addCriterion("friendId is not null");
			return (Criteria) this;
		}

		public Criteria andFriendidEqualTo(Integer value) {
			addCriterion("friendId =", value, "friendid");
			return (Criteria) this;
		}

		public Criteria andFriendidNotEqualTo(Integer value) {
			addCriterion("friendId <>", value, "friendid");
			return (Criteria) this;
		}

		public Criteria andFriendidGreaterThan(Integer value) {
			addCriterion("friendId >", value, "friendid");
			return (Criteria) this;
		}

		public Criteria andFriendidGreaterThanOrEqualTo(Integer value) {
			addCriterion("friendId >=", value, "friendid");
			return (Criteria) this;
		}

		public Criteria andFriendidLessThan(Integer value) {
			addCriterion("friendId <", value, "friendid");
			return (Criteria) this;
		}

		public Criteria andFriendidLessThanOrEqualTo(Integer value) {
			addCriterion("friendId <=", value, "friendid");
			return (Criteria) this;
		}

		public Criteria andFriendidIn(List<Integer> values) {
			addCriterion("friendId in", values, "friendid");
			return (Criteria) this;
		}

		public Criteria andFriendidNotIn(List<Integer> values) {
			addCriterion("friendId not in", values, "friendid");
			return (Criteria) this;
		}

		public Criteria andFriendidBetween(Integer value1, Integer value2) {
			addCriterion("friendId between", value1, value2, "friendid");
			return (Criteria) this;
		}

		public Criteria andFriendidNotBetween(Integer value1, Integer value2) {
			addCriterion("friendId not between", value1, value2, "friendid");
			return (Criteria) this;
		}

		public Criteria andMessageIsNull() {
			addCriterion("message is null");
			return (Criteria) this;
		}

		public Criteria andMessageIsNotNull() {
			addCriterion("message is not null");
			return (Criteria) this;
		}

		public Criteria andMessageEqualTo(String value) {
			addCriterion("message =", value, "message");
			return (Criteria) this;
		}

		public Criteria andMessageNotEqualTo(String value) {
			addCriterion("message <>", value, "message");
			return (Criteria) this;
		}

		public Criteria andMessageGreaterThan(String value) {
			addCriterion("message >", value, "message");
			return (Criteria) this;
		}

		public Criteria andMessageGreaterThanOrEqualTo(String value) {
			addCriterion("message >=", value, "message");
			return (Criteria) this;
		}

		public Criteria andMessageLessThan(String value) {
			addCriterion("message <", value, "message");
			return (Criteria) this;
		}

		public Criteria andMessageLessThanOrEqualTo(String value) {
			addCriterion("message <=", value, "message");
			return (Criteria) this;
		}

		public Criteria andMessageLike(String value) {
			addCriterion("message like", value, "message");
			return (Criteria) this;
		}

		public Criteria andMessageNotLike(String value) {
			addCriterion("message not like", value, "message");
			return (Criteria) this;
		}

		public Criteria andMessageIn(List<String> values) {
			addCriterion("message in", values, "message");
			return (Criteria) this;
		}

		public Criteria andMessageNotIn(List<String> values) {
			addCriterion("message not in", values, "message");
			return (Criteria) this;
		}

		public Criteria andMessageBetween(String value1, String value2) {
			addCriterion("message between", value1, value2, "message");
			return (Criteria) this;
		}

		public Criteria andMessageNotBetween(String value1, String value2) {
			addCriterion("message not between", value1, value2, "message");
			return (Criteria) this;
		}

		public Criteria andSignIsNull() {
			addCriterion("sign is null");
			return (Criteria) this;
		}

		public Criteria andSignIsNotNull() {
			addCriterion("sign is not null");
			return (Criteria) this;
		}

		public Criteria andSignEqualTo(Boolean value) {
			addCriterion("sign =", value, "sign");
			return (Criteria) this;
		}

		public Criteria andSignNotEqualTo(Boolean value) {
			addCriterion("sign <>", value, "sign");
			return (Criteria) this;
		}

		public Criteria andSignGreaterThan(Boolean value) {
			addCriterion("sign >", value, "sign");
			return (Criteria) this;
		}

		public Criteria andSignGreaterThanOrEqualTo(Boolean value) {
			addCriterion("sign >=", value, "sign");
			return (Criteria) this;
		}

		public Criteria andSignLessThan(Boolean value) {
			addCriterion("sign <", value, "sign");
			return (Criteria) this;
		}

		public Criteria andSignLessThanOrEqualTo(Boolean value) {
			addCriterion("sign <=", value, "sign");
			return (Criteria) this;
		}

		public Criteria andSignIn(List<Boolean> values) {
			addCriterion("sign in", values, "sign");
			return (Criteria) this;
		}

		public Criteria andSignNotIn(List<Boolean> values) {
			addCriterion("sign not in", values, "sign");
			return (Criteria) this;
		}

		public Criteria andSignBetween(Boolean value1, Boolean value2) {
			addCriterion("sign between", value1, value2, "sign");
			return (Criteria) this;
		}

		public Criteria andSignNotBetween(Boolean value1, Boolean value2) {
			addCriterion("sign not between", value1, value2, "sign");
			return (Criteria) this;
		}

		public Criteria andFriendnameIsNull() {
			addCriterion("friendname is null");
			return (Criteria) this;
		}

		public Criteria andFriendnameIsNotNull() {
			addCriterion("friendname is not null");
			return (Criteria) this;
		}

		public Criteria andFriendnameEqualTo(String value) {
			addCriterion("friendname =", value, "friendname");
			return (Criteria) this;
		}

		public Criteria andFriendnameNotEqualTo(String value) {
			addCriterion("friendname <>", value, "friendname");
			return (Criteria) this;
		}

		public Criteria andFriendnameGreaterThan(String value) {
			addCriterion("friendname >", value, "friendname");
			return (Criteria) this;
		}

		public Criteria andFriendnameGreaterThanOrEqualTo(String value) {
			addCriterion("friendname >=", value, "friendname");
			return (Criteria) this;
		}

		public Criteria andFriendnameLessThan(String value) {
			addCriterion("friendname <", value, "friendname");
			return (Criteria) this;
		}

		public Criteria andFriendnameLessThanOrEqualTo(String value) {
			addCriterion("friendname <=", value, "friendname");
			return (Criteria) this;
		}

		public Criteria andFriendnameLike(String value) {
			addCriterion("friendname like", value, "friendname");
			return (Criteria) this;
		}

		public Criteria andFriendnameNotLike(String value) {
			addCriterion("friendname not like", value, "friendname");
			return (Criteria) this;
		}

		public Criteria andFriendnameIn(List<String> values) {
			addCriterion("friendname in", values, "friendname");
			return (Criteria) this;
		}

		public Criteria andFriendnameNotIn(List<String> values) {
			addCriterion("friendname not in", values, "friendname");
			return (Criteria) this;
		}

		public Criteria andFriendnameBetween(String value1, String value2) {
			addCriterion("friendname between", value1, value2, "friendname");
			return (Criteria) this;
		}

		public Criteria andFriendnameNotBetween(String value1, String value2) {
			addCriterion("friendname not between", value1, value2, "friendname");
			return (Criteria) this;
		}
	}

	/**
	 * This class was generated by MyBatis Generator. This class corresponds to the database table addfriendinfo
	 * @mbggenerated  Sun Jul 09 16:07:37 CST 2017
	 */
	public static class Criterion {
		private String condition;
		private Object value;
		private Object secondValue;
		private boolean noValue;
		private boolean singleValue;
		private boolean betweenValue;
		private boolean listValue;
		private String typeHandler;

		public String getCondition() {
			return condition;
		}

		public Object getValue() {
			return value;
		}

		public Object getSecondValue() {
			return secondValue;
		}

		public boolean isNoValue() {
			return noValue;
		}

		public boolean isSingleValue() {
			return singleValue;
		}

		public boolean isBetweenValue() {
			return betweenValue;
		}

		public boolean isListValue() {
			return listValue;
		}

		public String getTypeHandler() {
			return typeHandler;
		}

		protected Criterion(String condition) {
			super();
			this.condition = condition;
			this.typeHandler = null;
			this.noValue = true;
		}

		protected Criterion(String condition, Object value, String typeHandler) {
			super();
			this.condition = condition;
			this.value = value;
			this.typeHandler = typeHandler;
			if (value instanceof List<?>) {
				this.listValue = true;
			} else {
				this.singleValue = true;
			}
		}

		protected Criterion(String condition, Object value) {
			this(condition, value, null);
		}

		protected Criterion(String condition, Object value, Object secondValue,
				String typeHandler) {
			super();
			this.condition = condition;
			this.value = value;
			this.secondValue = secondValue;
			this.typeHandler = typeHandler;
			this.betweenValue = true;
		}

		protected Criterion(String condition, Object value, Object secondValue) {
			this(condition, value, secondValue, null);
		}
	}

	/**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table addfriendinfo
     *
     * @mbggenerated do_not_delete_during_merge Thu Jul 06 11:04:00 CST 2017
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }
}