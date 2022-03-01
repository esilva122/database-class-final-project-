using System;
using System.Collections.Generic;

namespace company_orm.Models
{
    public partial class Dependent
    {
        public Guid Id { get; set; }
        public string Name { get; set; } = null!;
        public DateOnly BirthDate { get; set; }
        public string? Sex { get; set; }
        public string Relationship { get; set; } = null!;
        public Guid EmployeeId { get; set; }

        public virtual Employee Employee { get; set; } = null!;
    }
}
