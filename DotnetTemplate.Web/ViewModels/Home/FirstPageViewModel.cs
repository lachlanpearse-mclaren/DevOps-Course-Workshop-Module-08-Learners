namespace DotnetTemplate.Web.ViewModels.Home
{
    using System.Collections.Generic;

    public class FirstPageViewModel
    {
        public readonly IEnumerable<string> FirstPageItems;

        public FirstPageViewModel()
        {
            FirstPageItems = new[]
            {
                "Item 5",
                "Item 4",
                "Item 7"
            };
        }
    }
}
