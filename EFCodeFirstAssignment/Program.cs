using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EFCodeFirstAssignment
{
    class Program
    {
        static void Main(string[] args)
        {
            using (BookDBContext db = new BookDBContext())
            {
                Publisher publisher = new Publisher() { PublisherID = 1, PublisherName = "Penguin", Country = "USSR" };
                db.Publishers.Add(publisher);
                db.SaveChanges();
                Book book = new Book() {BookID=1, BookName="Hamlet", Publisher=publisher};
                db.Books.Add(book);
                db.SaveChanges();
                Member member = new Member() { MemberID = 1, MemberName = "Joey" };
                db.Members.Add(member);
                db.SaveChanges();
                Review review = new Review() { Member = member, Book = book, ReviewText = "Intense" };
                db.Reviews.Add(review);
                db.SaveChanges();
            }
        }
    }
}
