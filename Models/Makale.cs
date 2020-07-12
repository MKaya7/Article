using Microsoft.VisualBasic;
using System;
using System.ComponentModel.DataAnnotations.Schema;


namespace Makale_CRUD.Models
{
    [Table("makale")]
    public class Makale
    {
        public string Id { get; set; }
        public string Title { get; set; }
        public string Article { get; set; }
        public string Author { get; set; }
        public class ArticleSearchOptions
        {
            public bool IsActive { get; set; }

            public string AnotherProperty { get; set; }
        }
    }
}
