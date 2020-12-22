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
    /// Логика взаимодействия для Register.xaml
    /// </summary>
    public partial class Register : Page
    {
        public Register()
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


        private void CreateAcc_Click(object sender, RoutedEventArgs e)
        {
            Users NewUser = new Users();
            NewUser.Login = RegisterLogin.Text;
            NewUser.Password = RegisterPassword.Text;
            NewUser.Name = RegisterName.Text;
            NewUser.Surname = RegisterSurname.Text;
            if (RegisterSurname.Text.Length == 0) { NewUser.Surname = null; }
            if (RegisterName.Text.Length == 0) { NewUser.Name = null; }
            if (RegisterLogin.Text.Length <= 2 || RegisterPassword.Text.Length <= 2)
            {
                MessageBox.Show("Длина логина и пароля должна превышать 2 символа","Ошибка");
            }
            else
            {
                var ResultSearch = Users.Find(item => item.Login == NewUser.Login);
                if (ResultSearch == null)
                {
                    if (RegisterPassword.Text != RegisterPasswordTwo.Text)
                    {
                        MessageBox.Show("Поля пароль и повторите пароль не совпадают!", "Ошибка");
                    }
                    else
                    {
                        Core.DB.Users.Add(NewUser);
                        Core.DB.SaveChanges();
                        NavigationService.Navigate(new LogIn());
                    }
                }
                else
                {
                    MessageBox.Show("Пользователь с таким логином уже зарегистрирован", "Ошибка");
                }
            }
        }

        private void Back_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
