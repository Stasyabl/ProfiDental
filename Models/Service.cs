namespace ProfiDental.Models
{
    public class Service
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int Price { get; set; }
        public int CurrencyId { get; set; }
        public int ServiceTypeId { get; set; }

        public ServiceType ServiceType { get; set; }
        public Currency Currency { get; set; }
    }
}
