using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EFCodeFirstAssignment
{
    public class BookDBContext: DbContext
    {
        public BookDBContext() : base("name=bookdbconnstr")
        {

        }
        public DbSet<Book> Books { get; set; }
        public DbSet<Member> Members { get; set; }
        public DbSet<Review> Reviews { get; set; }
        public DbSet<Publisher> Publishers { get; set; }

    }
}
