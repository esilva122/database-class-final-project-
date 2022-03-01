// See https://aka.ms/new-console-template for more information
using company_orm.Models;

Console.WriteLine("Hello, World!");
var context = new schoolsContext();
var list1 = context.Projects.ToList();
list1.ForEach(project => Console.WriteLine(project.Name));