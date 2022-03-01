using System;
using System.Collections.Generic;

namespace company_orm.Models
{
    public partial class Student
    {
        public string? Name { get; set; }
        public int Id { get; set; }
        public int? Age { get; set; }
        public string? Major { get; set; }
    }
}
