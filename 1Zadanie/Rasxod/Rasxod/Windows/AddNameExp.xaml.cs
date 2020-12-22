using Rasxod.Model;
using Rasxod.ViewModel;
using System.Collections.Generic;
using System.Linq;
using System.Windows;

namespace Rasxod.Windows
{
    /// <summary>
    /// Логика взаимодействия для AddNameExp.xaml
    /// </summary>
    public partial class AddNameExp : Window
    {
        public AddNameExp()
        {
            InitializeComponent();
            GetCategories = Core.DB.Categories.ToList();
            nameexp = Core.DB.NameExp.ToList();
            DataContext = this;
        }

        private List<NameExp> nameexp { get; set; }
        public List<NameExp> NameExpTwo
        {
            get { return nameexp; }
            set { nameexp = value; }
        }

        public List<Categories> GetCategories { get; set; }

        private void SaveNameExp_Click(object sender, RoutedEventArgs e)
        {
            NameExp NewExp = new NameExp();
            NewExp.NameExpenses = NameExpnss.Text;
            NewExp.Categories = Category.SelectedItem as Categories;

            var ResultSearch = NameExpTwo.Find(item => item.NameExpenses == NewExp.NameExpenses);
            if (ResultSearch == null)
            {
                if (NameExpnss.Text.Length == 0)
                {
                    MessageBox.Show("Поле Название расхода должно быть заполнено","Ошибка");
                }
                else
                {
                    if (Category.SelectedIndex == -1)
                    {
                        MessageBox.Show("Необходимо выбрать категорию расхода","Ошибка");
                    }
                    else
                    {
                        Core.DB.NameExp.Add(NewExp);
                        Core.DB.SaveChanges();
                        this.Close();
                    }
                }
            }
            else
            {
                MessageBox.Show("Расход с таким наименованием уже существует","Ошибка");
            }
        }
    }
}
