//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LifeDemotivator.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Tegs
    {
        public int Id { get; set; }
        public string Text { get; set; }
        public int DemotivatorTegsIdTegs { get; set; }
        public string DemotivatorTegsIdDemotivator { get; set; }
    
        public virtual DemotivatorTegs DemotivatorTegs { get; set; }
    }
}
