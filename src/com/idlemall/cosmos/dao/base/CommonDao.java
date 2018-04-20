package com.idlemall.cosmos.dao.base;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;
import javax.annotation.Resource;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Component;

/**
 * 通用DAO的Hibernate实现
 * @author CosmosRay
 */
/**
 * @author CosmosRay
 *
 */
@Component("commonDao")
public class CommonDao extends HibernateDaoSupport {
    
    @Resource(name="sessionFactory")    
    public void setSuperSessionFactory(SessionFactory sessionFactory){
        super.setSessionFactory(sessionFactory);
    }
	
    /**
     * @Enclosing_Method: save
     * @Description: 保存（持久化）一个对象
     * @param object 要保存的对象
     * @return
     * @author CosmosRay
     */
	public Serializable save(Object object) {
		
		
		return getHibernateTemplate().save(object);
	}

	/**
	 * @Enclosing_Method: update
	 * @Description: 更新一个对象 
	 * @param object 要修改的对象
	 * @author CosmosRay
	 */
	public void update(Object object) {
		getHibernateTemplate().update(object);
	}

	/**
	 * @Enclosing_Method: updateByQuery
	 * @Description: 用语句更新记录
	 * @param queryString 查询语句
	 * @param objects 参数
	 * @author CosmosRay
	 */
	public void updateByQuery(final String queryString, final Object... objects) {
		getHibernateTemplate().execute(new HibernateCallback() {
			public Object doInHibernate(Session session) {
				Query query = session.createQuery(queryString);
				if (objects != null) {
					for (int i = 0; i < objects.length; i++) {
						query.setParameter(i, objects[i]);
					}
				}
				query.executeUpdate();
				return null;
			}
		});
	}

	/**
	 *  @Enclosing_Method: delete
	 * @Description: 删除一个对象 
	 * @param object 要删除的对象
	 * @author CosmosRay
	 */
	public void delete(Object object) {
		getHibernateTemplate().delete(object);
	}

	/**
	 *@Enclosing_Method: delete
	 * @Description: 根据类型和对象id删除一个对象 
	 * @param clazz 类型
	 * @param id 对象id
	 * @author CosmosRay
	 */
	public void delete(Class clazz, Serializable id) {
		getHibernateTemplate().delete(load(clazz, id));
	}
	/**
	 * @Enclosing_Method: deleteAll
	 * @Description: 根据类型删除全部对象 
	 * @param clazz 类型
	 */
	public Integer deleteAll(final Class clazz) {
		return (Integer) getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session) {
						Query query = session.createQuery("delete "
								+ clazz.getName());
						return new Integer(query.executeUpdate());
					}
				});
	}
	
	/**
	 * 获取session 
	 * @author CosmosRay
	 */
	public Session getFactorySession(){
		return this.getSession();
	}
	
	/**
	 * @Enclosing_Method: load
	 * @Description: 根据类型和对象id载入一个对象 
	 * @param clazz 类型
	 * @param id 对象id
	 * @return 目标对象
	 * @author CosmosRay
	 */
	public Object load(Class clazz, Serializable id) {
		return getHibernateTemplate().load(clazz, id);
	}

	/**
	 * @Enclosing_Method: get
	 * @Description: 根据类型和对象id从数据库取得一个对象 
	 * @param clazz 类
	 * @param id 对象id
	 * @return 目标对象
	 * @author CosmosRay
	 */
	public Object get(Class clazz, Serializable id) {
		return this.getSession().get(clazz, id);
	}

	/**
	 *@Enclosing_Method: findByNamedQuery
	 * @Description: 命名查询 
	 * @param queryName 命名查询语句
	 * @return 对象列表
	 * @author CosmosRay
	 */
	public List findByNamedQuery(final String queryName) {
		return getHibernateTemplate().findByNamedQuery(queryName);
	}

	/**
	 *@Enclosing_Method: findByNamedQuery
	 * @Description: 依据单个参数做命名查询 
	 * @param queryName 命名查询语句
	 * @param parameter 单个查询参数
	 * @return 对象列表
	 * @author CosmosRay
	 */
	public List findByNamedQuery(final String queryName, final Object parameter) {
		return getHibernateTemplate().findByNamedQuery(queryName, parameter);
	}

	/**
	 * @Enclosing_Method: findByNamedQuery
	 * @Description: 依据参数数组做命名查询 
	 * @param queryName 命名查询语句
	 * @param objects 查询参数数组
	 * @return 对象列表
	 * @author CosmosRay
	 */
	public List findByNamedQuery(final String queryName,
			final Object... objects) {
		return getHibernateTemplate().findByNamedQuery(queryName, objects);
	}

	/**
	 * @Enclosing_Method: find
	 * @Description: 查询全部 
	 * @param queryString 查询语句
	 * @return 对象列表
	 * @author CosmosRay
	 */
	public List find(final String queryString) {
		return getHibernateTemplate().find(queryString);
	}

	/**
	 * @Enclosing_Method: find
	 * @Description: 带参数查询全部 
	 * @param queryString 查询语句
	 * @param objects 查询参数
	 * @return 对象列表
	 * @author CosmosRay
	 */
	public List find(final String queryString, final Object... objects) {
		return getHibernateTemplate().find(queryString, objects);
	}

	/**
	 * @Enclosing_Method: deleteByQuery
	 * @Description: 根据查询和参数删除全部对象 
	 * @param queryString 查询语句
	 * @param objects 参数
	 * @return
	 * @author CosmosRay
	 * 
	 */
	public Integer deleteByQuery(final String queryString,
			final Object... objects) {
		return (Integer) getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session) {
						Query query = session.createQuery(queryString);
						if (objects != null) {
							for (int i = 0; i < objects.length; i++) {
								query.setParameter(i, objects[i]);
							}
						}
				
						return new Integer(query.executeUpdate());
						
					}
				});
	}

	/**
	 * @Enclosing_Method: get
	 * @Description: 根据查询语句和查询参数从数据库取得一个对象 
	 * @param queryString 查询语句
	 * @param objects 参数
	 * @return 单个对象
	 * @author CosmosRay
	 */
	public Object get(final String queryString, final Object... objects) {
		List list = getHibernateTemplate().find(queryString, objects);
		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}
		return null;
	}

	/**
	 * @Enclosing_Method: count
	 * @Description: 获得某个对象的全部总数 
	 * @param clazz 对象Class
	 * @return
	 * @author CosmosRay
	 */
	public int count(Class clazz) {
		String queryString = "SELECT COUNT(*) FROM " + clazz.getName();
		List list = getHibernateTemplate().find(queryString);
		return Integer.parseInt(list.get(0).toString());
	}
	
	/**
	 *@Enclosing_Method: count
	 * @Description: 获得某个对象的全部总数 
	 * @param queryString 查询语句
	 * @return
	 * @author CosmosRay
	 */
	public int count(String queryString) {
		if(queryString.indexOf("select")<0){
			queryString="SELECT COUNT(*) "+queryString;
		}
		List list = getHibernateTemplate().find(queryString);
		return Integer.parseInt(list.get(0).toString());
	}
	
	/**
	 * @Enclosing_Method: count
	 * @Description: 获得某个对象的全部总数 
	 * @param queryString 查询语句
	 * @param objects 参数
	 * @return
	 * @author CosmosRay
	 */
	public int count(String queryString, final Object... objects) {
		if(queryString.indexOf("select")<0){
			queryString="SELECT COUNT(*) "+queryString;
		}
		List list = getHibernateTemplate().find(queryString, objects);
		return Integer.parseInt(list.get(0).toString());
	}

	/**
	 * @Enclosing_Method: count
	 * @Description: 根据参数获得某个对象的全部总数 
	 * @param clazz 对象Class
	 * @param propertyName 参数名
	 * @param propertyValue 参数值ֵ
	 * @return
	 * @author CosmosRay
	 */
	public int count(Class clazz, String propertyName, Object propertyValue) {
		String realValue = "";
		if (true == propertyValue instanceof String) {
			realValue = "'" + propertyValue + "'";
		} else {
			realValue = propertyValue.toString();
		}

		String queryString = "SELECT COUNT(*) FROM " + clazz.getName()
				+ " o WHERE o." + propertyName + " = " + realValue;
		List list = getHibernateTemplate().find(queryString);
		return Integer.parseInt(list.get(0).toString());
	}

	/**
	 * @Enclosing_Method: count
	 * @Description: 根据约束条件获得某个对象的全部总数 
	 * @param clazz 对象Class
	 * @param criterions 约束条件
	 * @author CosmosRay
	 */
	public int count(final Class clazz, final Criterion[] criterions) {
		Integer count = (Integer) getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						Criteria criteria = session.createCriteria(clazz);
						// ѭ���������Լ������
						for (int i = 0; i < criterions.length; i++) {
							criteria.add(criterions[i]);
						}

						return criteria.setProjection(Projections.rowCount())
								.uniqueResult();
					}
				});

		return count;
	}

	/**
	 * @Enclosing_Method: find
	 * @Description: 获得某个类型的全部对象列表 
	 * @param clazz 对象Class
	 * @return
	 * @author CosmosRay
	 */
	public List find(final Class clazz) {
		return this.find("from " + clazz.getName());
	}

	/**
	 *@Enclosing_Method: find
	 * @Description: 根据约束条件获得某个对象的全部对象列表 
	 * @param queryString 查询语句
	 * @param criterions 约束条件
	 * @return
	 * @author CosmosRay
	 */
	public List find(final String queryString, final Criterion[] criterions) {
		List list = getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				Criteria criteria = session.createCriteria(queryString);
				// 循环遍历添加约束条件
				for (int i = 0; i < criterions.length; i++) {
					criteria.add(criterions[i]);
				}
				return criteria.list();
			}
		});
		return list;
	}

	/**
	 * @Enclosing_Method: find
	 * @Description: 根据约束条件获得某个对象的全部对象列表 
	 * @param clazz 对象Class
	 * @param criterions 约束条件
	 * @return
	 * @author CosmosRay
	 */
	public List find(final Class clazz, final Criterion[] criterions) {
		List list = getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				Criteria criteria = session.createCriteria(clazz);
				// ѭ���������Լ������
				for (int i = 0; i < criterions.length; i++) {
					criteria.add(criterions[i]);
				}
				return criteria.list();
			}
		});
		return list;
	}

	/**
	 * @Enclosing_Method: find
	 * @Description: 根据约束条件获得某个对象的全部对象排序列表 
	 * @param queryString 查询语句
	 * @param criterions 约束条件
	 * @param orders 排序条件
	 * @return
	 * @author CosmosRay
	 */
	public List find(final String queryString, final Criterion[] criterions,
			final Order[] orders) {
		List list = getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				Criteria criteria = session.createCriteria(queryString);
				// 循环遍历添加约束条件
				for (int i = 0; i < criterions.length; i++) {
					criteria.add(criterions[i]);
				}
				for (int i = 0; i < orders.length; i++) {
					criteria.addOrder(orders[i]);
				}
				return criteria.list();
			}
		});
		return list;
	}

	/**
	 * @Enclosing_Method: find
	 * @Description: 根据约束条件获得某个对象的全部对象排序列表   
	 * @param clazz 对象Class
	 * @param criterions 约束条件
	 * @param orders 排序条件
	 * @return
	 * @author CosmosRay
	 */
	public List find(final Class clazz, final Criterion[] criterions,
			final Order[] orders) {
		List list = getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				Criteria criteria = session.createCriteria(clazz);
				// 循环遍历添加约束条件
				for (int i = 0; i < criterions.length; i++) {
					criteria.add(criterions[i]);
				}
				for (int i = 0; i < orders.length; i++) {
					criteria.addOrder(orders[i]);
				}
				return criteria.list();
			}
		});
		return list;
	}

	/**
	 * @Enclosing_Method: find
	 * @Description: 分页查询 
	 * @param queryString 查询语句
	 * @param page 页码
	 * @param size 页容量
	 * @return
	 * @author CosmosRay
	 */
	public List find(final String queryString, final int page, final int size) {
		List list = getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				Query query = session.createQuery(queryString);
				query.setFirstResult(page * size);
				query.setMaxResults(size);
				List list = query.list();
				return list;
			}
		});
		return list;
	}
	
	/**
	 * @Enclosing_Method: find
	 * @Description: 分页查询 
	 * @param clazz 对象Class
	 * @param page 页码
	 * @param size 页容量
	 * @return
	 * @author CosmosRay
	 */
	public List find(final Class clazz, final int page, final int size) {
		return this.find("from " + clazz.getName(), page, size);
	}

	/**
	 * @Enclosing_Method: find
	 * @Description: 根据参数分页查询 
	 * @param queryString 查询语句
	 * @param propertyName 参数名
	 * @param propertyValue 参数值
	 * @param page 页码
	 * @param size 页容量
	 * @return
	 * @author CosmosRay
	 */
	public List find(final String queryString, final String[] propertyName,
			final Object[] propertyValue, final int page, final int size) {
		List list = getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				Query query = session.createQuery(queryString);
				for (int i = 0; i < propertyName.length; i++) {
					query.setParameter(propertyName[i], propertyValue[i]);
				}
				query.setFirstResult(page * size);
				query.setMaxResults(size);
				List list = query.list();
				return list;
			}
		});
		return list;
	}
	
	/**
	 * @Enclosing_Method: find
	 * @Description: 根据参数分页查询 
	 * @param clazz 查询语句
	 * @param propertyName 对象Class
	 * @param propertyValue 参数值
	 * @param page 页码
	 * @param size 页容量
	 * @return
	 * @author CosmosRay
	 */
	public List find(final Class clazz, final String[] propertyName,
			final Object[] propertyValue, final int page, final int size) {
		return this.find("from " + clazz.getName(),propertyName,propertyName, page, size);
	}

	/**
	 * @Enclosing_Method: find
	 * @Description: 根据约束条件分页查询 
	 * @param queryString 查询语句
	 * @param criterions 约束条件
	 * @param page 页码
	 * @param size 页容量
	 * @return
	 * @author CosmosRay
	 */
	public List find(final String queryString, final Criterion[] criterions,
			final int page, final int size) {
		List list = getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				Criteria criteria = session.createCriteria(queryString);
				// 循环遍历添加约束条件
				for (int i = 0; i < criterions.length; i++) {
					criteria.add(criterions[i]);
				}
				criteria.setFirstResult(page * size);
				criteria.setMaxResults(size);
				return criteria.list();
			}
		});
		return list;
	}

	/**
	 *  @Enclosing_Method: find
	 * @Description: 根据约束条件分页查询 
	 * @param queryString 查询语句
	 * @param page 页码
	 * @param size 页容量
	 * @param objects 约束条件
	 * @return
	 * @author CosmosRay
	 */
	public List find(final String queryString,
			final int page, final int size,final Object... objects) {
		
		List list = getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				Query query = session.createQuery(queryString);
				for (int i = 0; i < objects.length; i++) {
					query.setParameter(i, objects[i]);
				}
				query.setFirstResult(page * size);
				query.setMaxResults(size); 
				List list = query.list();
				return list;
			}
		});
		return list;
	}
	
	/**
	 * @Enclosing_Method: find
	 * @Description: 根据约束条件分页查询 
	 * @param clazz 对象Class
	 * @param criterions 约束条件
	 * @param page 页码
	 * @param size 页容量
	 * @return
	 * @author CosmosRay
	 */
	public List find(final Class clazz, final Criterion[] criterions,
			final int page, final int size) {
		List list = getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				Criteria criteria = session.createCriteria(clazz);
				// 循环遍历添加约束条件
				for (int i = 0; i < criterions.length; i++) {
					criteria.add(criterions[i]);
				}
				criteria.setFirstResult(page * size);
				criteria.setMaxResults(size);
				return criteria.list();
			}
		});
		return list;
	}
	
	/**
	 *  @Enclosing_Method: find
	 * @Description: 根据约束条件分页排序查询 
	 * @param queryString 查询语句
	 * @param criterions 约束条件
	 * @param orders 排序条件
	 * @param page 页码
	 * @param size 页容量
	 * @return
	 * @author CosmosRay
	 */
	public List find(final String queryString, final Criterion[] criterions,
			final Order[] orders,	final int page, final int size) {
		List list = getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				Criteria criteria = session.createCriteria(queryString);
				// 循环遍历添加约束条件
				for (int i = 0; i < criterions.length; i++) {
					criteria.add(criterions[i]);
				}
				for (int i = 0; i < orders.length; i++) {
					criteria.addOrder(orders[i]);
				}
				criteria.setFirstResult(page * size);
				criteria.setMaxResults(size);
				return criteria.list();
			}
		});
		return list;
	}

	/**
	 *@Enclosing_Method: find
	 * @Description: 根据约束条件分页排序查询 
	 * @param clazz 对象Class
	 * @param criterions 约束条件
	 * @param orders 排序条件
	 * @param page 页码
	 * @param size 页容量
	 * @author CosmosRay
	 */
	public List find(final Class clazz, final Criterion[] criterions,
			final Order[] orders,	final int page, final int size) {
		List list = getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				Criteria criteria = session.createCriteria(clazz);
				// 循环遍历添加约束条件
				for (int i = 0; i < criterions.length; i++) {
					criteria.add(criterions[i]);
				}
				for (int i = 0; i < orders.length; i++) {
					criteria.addOrder(orders[i]);
				}
				criteria.setFirstResult(page * size);
				criteria.setMaxResults(size);
				return criteria.list();
			}
		});
		return list;
	}

	/**
	 *  @Enclosing_Method: getProjectionBean
	 * @Description: 根据投影与约束条件获得某些数据 
	 * @param clazz 对象Class
	 * @param prolist 投影
	 * @param criterions 约束条件
	 * @author CosmosRay
	 */
	public Object getProjectionBean(final Class clazz, final ProjectionList prolist,final Criterion[] criterions) {
		Object object = (Object) getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						Criteria criteria = session.createCriteria(clazz);
						// 循环遍历添加约束条件
						if(criterions!=null){
						for (int i = 0; i < criterions.length; i++) {
							criteria.add(criterions[i]);
						}
						}
						return criteria.setProjection(prolist)
								.uniqueResult();
					}
				});

		return object;
	}
}
