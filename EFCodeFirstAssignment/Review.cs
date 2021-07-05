using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace EFCodeFirstAssignment
{
    [Table("Review")]
    public class Review
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ReviewID { get; set; }
        [ForeignKey("Book")]
        public int BookID { get; set; }
        public Book Book { get; set; }
        [ForeignKey("Member")]
        public int MemberID { get; set; }
        public Member Member { get; set; }
        [Column("Review_Text", TypeName = "varchar")]
        [MaxLength(50)]
        public string ReviewText { get; set; }
    }
}
