using Rasxod.Model;

namespace Rasxod.ViewModel
{
    class Core
    {
        public static MainEntities DB = new MainEntities();

        public static Users CurrentUser = new Users();
    }
}
