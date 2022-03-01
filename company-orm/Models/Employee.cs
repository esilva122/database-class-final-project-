using System;
using System.Collections.Generic;

namespace company_orm.Models
{
    public partial class Employee
    {
        public Employee()
        {
            Departments = new HashSet<Department>();
            Dependents = new HashSet<Dependent>();
            EmployeeProjects = new HashSet<EmployeeProject>();
            InverseManager = new HashSet<Employee>();
        }

        public Guid Id { get; set; }
        public string Email { get; set; } = null!;
        public string Name { get; set; } = null!;
        public string? Phone { get; set; }
        public DateTime CreatedAt { get; set; }
        public Guid? ManagerId { get; set; }
        public Guid? DepartmentId { get; set; }

        public virtual Department? Department { get; set; }
        public virtual Employee? Manager { get; set; }
        public virtual ICollection<Department> Departments { get; set; }
        public virtual ICollection<Dependent> Dependents { get; set; }
        public virtual ICollection<EmployeeProject> EmployeeProjects { get; set; }
        public virtual ICollection<Employee> InverseManager { get; set; }
    }
}
