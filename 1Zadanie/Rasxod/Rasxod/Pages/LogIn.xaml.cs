using Rasxod.Model;
using Rasxod.ViewModel;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;

namespace Rasxod.Pages
{
    /// <summary>
    /// Логика взаимодействия для LogIn.xaml
    /// </summary>
    public partial class LogIn : Page
    {
        public LogIn()
        {
            InitializeComponent();
            users = Core.DB.Users.ToList();
        }

        private List<Users> users = new List<Users>();

        public List<Users> Users
        {
            get { return users; }
            set { users = value; }
        }

        private void LoginInAcc_Click(object sender, RoutedEventArgs e)
        {
            var ResultSearch = Users.Find(item => item.Login == Logintxtb.Text && item.Password == Passtxtb.Password.ToString());
            if (ResultSearch == null)
            {
                MessageBox.Show("Логин или пароль введен неверно","Ошибка");
            }
            else
            {
                Core.CurrentUser = ResultSearch;
                NavigationService.Navigate(new TableExpenses());
            }
        }

        private void RegisterAcc_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Register());
        }
    }
}
