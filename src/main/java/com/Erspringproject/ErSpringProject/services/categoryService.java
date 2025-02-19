package com.Erspringproject.ErSpringProject.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Erspringproject.ErSpringProject.dao.categoryDao;
import com.Erspringproject.ErSpringProject.models.Category;

import net.bytebuddy.dynamic.DynamicType.Builder.InnerTypeDefinition;

@Service
public class categoryService {
	@Autowired
	private categoryDao categoryDao;
	
	public Category addCategory(String name) {
		return this.categoryDao.addCategory(name);
	}
	
	public List<Category> getCategories(){
		return this.categoryDao.getCategories();
	}
	
	public Boolean deleteCategory(int id) {
		return this.categoryDao.deletCategory(id);
	}
	
	public Category updateCategory(int id,String name) {
		return this.categoryDao.updateCategory(id, name);
	}

	public Category getCategory(int id) {
		return this.categoryDao.getCategory(id);
	}
}
