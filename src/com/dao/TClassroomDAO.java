package com.dao;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TClassroom;

/**
 *
 * @see com.model.TClassroom
 * @author MyEclipse Persistence Tools
 */

public class TClassroomDAO extends HibernateDaoSupport {
	private static final Log log = LogFactory.getLog(TClassroomDAO.class);
	// property constants
	public static final String CLASS_NAME = "className";
	public static final String CLASS_NO = "classNo";
	public static final String FLAG = "flag";
	public static final String DELETED = "deleted";
	public static final String USER_ID = "userId";

	public void save(TClassroom transientInstance) {
		log.debug("saving TClassroom instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TClassroom persistentInstance) {
		log.debug("deleting TClassroom instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public TClassroom findById(java.lang.Integer id) {
		log.debug("getting TClassroom instance with id: " + id);
		try {
			TClassroom instance = (TClassroom) getHibernateTemplate().get(
					"com.model.TClassroom", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

/*	public List findByExample(TClassroom instance) {
		log.debug("finding TClassroom instance by example");
		try {
			List results = getHibernateTemplate().createCriteria("com.model.TClassroom")
					.add(Example.create(instance)).list();
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding TClassroom instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from TClassroom as model where model."
					+ propertyName + "= ?";
			Query queryObject = getHibernateTemplate().createQuery(queryString);
			queryObject.setParameter(0, value);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}
*/
	/*public List findByClassName(Object className) {
		return findByProperty(CLASS_NAME, className);
	}

	public List findByClassNo(Object classNo) {
		return findByProperty(CLASS_NO, classNo);
	}

	public List findByFlag(Object flag) {
		return findByProperty(FLAG, flag);
	}

	public List findByDeleted(Object deleted) {
		return findByProperty(DELETED, deleted);
	}

	public List findByUserId(Object userId) {
		return findByProperty(USER_ID, userId);
	}*/

	/*public List findAll() {
		log.debug("finding all TClassroom instances");
		try {
			String queryString = "from TClassroom";
			Query queryObject = getHibernateTemplate().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}*/

	public TClassroom merge(TClassroom detachedInstance) {
		log.debug("merging TClassroom instance");
		try {
			TClassroom result = (TClassroom) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TClassroom instance) {
		log.debug("attaching dirty TClassroom instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TClassroom instance) {
		log.debug("attaching clean TClassroom instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}
}