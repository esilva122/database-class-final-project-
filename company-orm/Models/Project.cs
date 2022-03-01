using System;
using System.Collections.Generic;

namespace company_orm.Models
{
    public partial class Project
    {
        public Project()
        {
            EmployeeProjects = new HashSet<EmployeeProject>();
        }

        public Guid Id { get; set; }
        public string Name { get; set; } = null!;
        public Guid? DepartmentId { get; set; }

        public virtual Department? Department { get; set; }
        public virtual ICollection<EmployeeProject> EmployeeProjects { get; set; }
    }
}
