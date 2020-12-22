using Rasxod.Model;
using Rasxod.ViewModel;
using Rasxod.Windows;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace Rasxod.Pages
{
    /// <summary>
    /// Логика взаимодействия для TableExpenses.xaml
    /// </summary>
    public partial class TableExpenses : Page
    {
        public TableExpenses()
        {
            InitializeComponent();
            allexp = Core.DB.Expnss.ToList();
            allexp = allexp.FindAll(item => item.UserID == Core.CurrentUser.ID);
            Sum = Math.Round(allexp.Sum(item => item.Summ), 2);
            CountItem = allexp.Count;
            DataContext = this;
        }

        private List<Expnss> allexp = new List<Expnss>();

        public List<Expnss> AllExp
        {
            get { return allexp; }
            set { allexp = value; }
        }
        public decimal Sum { get; set; }
        public int CountItem { get; set; }

        private void Edit_Click(object sender, RoutedEventArgs e)
        {
            var item = MainTable.SelectedItem as Expnss;
            OneItemChange ew = new OneItemChange(item);
            ew.Show();
        }

        private void Delete_Click(object sender, RoutedEventArgs e)
        {
            var item = MainTable.SelectedItem as Expnss;
            Core.DB.Expnss.Remove(item);
            Core.DB.SaveChanges();
        }

        private void AddExp_Click(object sender, RoutedEventArgs e)
        {
            OneItemChange oneitem = new OneItemChange(new Expnss());
            oneitem.ShowDialog();
        }

        private void AddExpName_Click(object sender, RoutedEventArgs e)
        {
            AddNameExp add = new AddNameExp();
            add.ShowDialog();
        }
    }
}
