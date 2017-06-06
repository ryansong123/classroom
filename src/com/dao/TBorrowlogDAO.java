package com.dao;

import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TBorrowlog;

public class TBorrowlogDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory.getLogger(TBorrowlogDAO.class);
	// property constants
	public static final String DELETED = "deleted";
	public static final String YONG_TU = "yongTu";
	public static final String CLASSROOM_ID = "classroomId";
	public static final String CLASSROOM_NAME = "classroomName";
	public static final String CLASSROOM_NO = "classroomNo";
	
	public void save(TBorrowlog transientInstance) {
		log.debug("saving TBorrowlog instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TBorrowlog persistentInstance) {
		log.debug("deleting TBorrowlog instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public TBorrowlog findById(java.lang.Integer id) {
		log.debug("getting TBorrowlog instance with id: " + id);
		try {
			TBorrowlog instance = (TBorrowlog) getHibernateTemplate().get(
					"com.model.TBorrowlog", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	//ÐÞ¸Ä
		public void update(Object obj){
			log.debug("update TAdmin instance");
			try {
				getHibernateTemplate().update(obj);
			} catch (RuntimeException re) {
				log.error("update failed", re);
				throw re;
			}
		}
	/*public List findByExample(TBorrowlog instance) {
		log.debug("finding TBorrowlog instance by example");
		try {
			List results = getHibernateTemplate().createCriteria("com.model.TBorrowlog")
					.add(Example.create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}*/

	/*public List findByProperty(String propertyName, Object value) {
		log.debug("finding TBorrowlog instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from TBorrowlog as model where model."
					+ propertyName + "= ?";
			Query queryObject = getHibernateTemplate().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}*/

	/*public List findByDeleted(Object deleted) {
		return findByProperty(DELETED, deleted);
	}

	public List findByYongTu(Object yongTu) {
		return findByProperty(YONG_TU, yongTu);
	}

	public List findByClassroomId(Object classroomId) {
		return findByProperty(CLASSROOM_ID, classroomId);
	}

	public List findByClassroomName(Object classroomName) {
		return findByProperty(CLASSROOM_NAME, classroomName);
	}

	public List findByClassroomNo(Object classroomNo) {
		return findByProperty(CLASSROOM_NO, classroomNo);
	}*/

	/*public List findAll() {
		log.debug("finding all TBorrowlog instances");
		try {
			String queryString = "from TBorrowlog";
			Query queryObject = getHibernateTemplate().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}*/

	public TBorrowlog merge(TBorrowlog detachedInstance) {
		log.debug("merging TBorrowlog instance");
		try {
			TBorrowlog result = (TBorrowlog) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TBorrowlog instance) {
		log.debug("attaching dirty TBorrowlog instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TBorrowlog instance) {
		log.debug("attaching clean TBorrowlog instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}