package prin.spring.springbootrestapi.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import prin.spring.springbootrestapi.entity.Employee;


@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Long>{

}
