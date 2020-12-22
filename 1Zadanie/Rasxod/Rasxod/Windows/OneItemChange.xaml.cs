using Rasxod.Model;
using Rasxod.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Input;

namespace Rasxod.Windows
{
    /// <summary>
    /// Логика взаимодействия для OneItemChange.xaml
    /// </summary>
    public partial class OneItemChange : Window
    {
        public OneItemChange(Expnss CurrentExp)
        {
            InitializeComponent();

            Expenses = CurrentExp;
            Categories = Core.DB.Categories.ToList();
            nameexp = Core.DB.NameExp.ToList();
            if (Expenses.ID == 0)
            {
                Expenses.DateExps = DateTime.Now;
            }
            DataContext = this;
        }

        public List<Categories> Categories { get; set; }
        public Expnss Expenses { get; set; }

        private List<NameExp> nameexp { get; set; }
        public List<NameExp> NameExp
        {
            get { return nameexp; }
            set { nameexp = value; }
        }

        private void AddName_Click(object sender, RoutedEventArgs e)
        {
            AddNameExp add = new AddNameExp();
            add.ShowDialog();
        }

        private void Summ_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            if (!(Char.IsDigit(e.Text, 0) || (e.Text == ".")
              && (!Summ.Text.Contains(".")
              && Summ.Text.Length != 0)))
            {
                e.Handled = true;
            }
        }

        private void Save_Click(object sender, RoutedEventArgs e)
        {
            if (NameExpCombo.SelectedIndex == -1)
            {
                MessageBox.Show("Выберите название расхода", "Ошибка");
            }
            else
            {
                if (Expenses.ID == 0)
                {
                    Expenses.UserID = Core.CurrentUser.ID;
                    Core.DB.Expnss.Add(Expenses);
                }
                Core.DB.SaveChanges();
                this.Close();
            }
        }
    }
}
