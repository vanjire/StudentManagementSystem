package com.example.demo;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface StudentRepository extends JpaRepository<StudentEntity,Long>{
	int countByCourseAndAdmissionYear(String course,String admissionYear);
	List<StudentEntity> findByFirstName(String firstName);
	StudentEntity findByRollNumberAndCourse(Integer rollNumber,String course);
	List<StudentEntity> findByDeletedFalse();
}
