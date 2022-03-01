using System;
using System.Collections.Generic;

namespace company_orm.Models
{
    public partial class Department
    {
        public Department()
        {
            Employees = new HashSet<Employee>();
            Projects = new HashSet<Project>();
        }

        public Guid Id { get; set; }
        public string Name { get; set; } = null!;
        public int? DeptNumber { get; set; }
        public Guid? ManagerId { get; set; }

        public virtual Employee? Manager { get; set; }
        public virtual ICollection<Employee> Employees { get; set; }
        public virtual ICollection<Project> Projects { get; set; }
    }
}
