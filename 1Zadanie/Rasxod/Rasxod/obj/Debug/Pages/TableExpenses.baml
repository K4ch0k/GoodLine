   M S B A M L   `   `   `  ����A  =Rasxod, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:Rasxod.PagesRasxod.Pages  5           Rasxod.Pages.TableExpenses   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ,localclr-namespace:Rasxod.Pages     5        N� Title$  TableExpenses��5	       N� 
Background �	#FFA5BD98.��5      �  � ColumnDefinitions 5   
   �� 5      $	��180 �6   �� 5      .+�5   
   �� .+�5      �� $)��#Навигационное меню��6      AllLabel#��[  61   $
��auto��6S   �� 5      -   5        $��AddExp��5      $#��Добавить расход��6#     	AllButton#��[ 6R   $
��auto��6u   �� 5      -   5        $��
AddExpName��5      #��[ 6@   $
��auto��6c   $
��auto��6p   .��5      �� $6��0Добавить название расхода��6   $
��Wrap=�6=    �� TextAlignment$ Center=�6Q   5      �� 5      .+�5      �� $"��Сумма расходов:��6   #��[  62   $
��auto��6T   �� 5      #��[  60   $
��auto��6R   ��6   �� *Sum+6R   5      �� 5      .+�5      �� $!��Кол-во записей:��6   #��[  62   $
��auto��6T   �� 5      #��[  66   $
��auto��6X   ��6   �� *	CountItem+6X   5      5      &   System.Windows.Controls.DataGrid  5!      -   5        $��	MainTable��5!      $��1��6H      AutoGenerateColumns .     CanUserAddRows .     
IsReadOnly . ��6(   �� *AllExp+   Columns 5"      0  *System.Windows.Controls.DataGridTextColumn  5#      ,  &System.Windows.Controls.DataGridColumn   Header$ Наименование��6%   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 6;   �� *NameExp1.NameExpenses+  5$      $ Категория��6%   	 68   �� *NameExp1.Categories.Name+  5%      $ Дата��6%   	 63   �� *
DateExps+
 �� StringFormat$
 {0:dd.MM.yyyy}��  5&      $ 
Сумма��6%   	 64   �� *Summ+$
 {0:f2}��4  .System.Windows.Controls.DataGridTemplateColumn  5'      $ Действие��6)      CellTemplate 5(      �� 5)      .R�5*      ��  �� Orientation$ 
Horizontal=�6)   .+�5+   "   �� $
��Edit��6)   -   5        $ ��Редактировать��5+   5   6M   �� 5,   "   $��Delete��6)   -   5        $��Удалить��5,   7   6I   5-      5.      50      52      54      55      