   M S B A M L   `   `   `  ����A  =Rasxod, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Rasxod.WindowsRasxod.Windows  5   	   "    Rasxod.Windows.OneItemChange   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:Rasxod.Windows     5   	     � Title$K  EДобавление и редактирование расходов��5   	   $	��350��66   $	��250��6C   $	��450��6S   $	��500��6_   $	��450��6n   .��5	      �  � RowDefinitions 5
   
   �� 5      �� 5      $��30 �6   .+�5   
   �� .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      �� $��Название:��6      AllLabel#��[  6,   $	��100��6N   �� 5      -   5        $��NameExpCombo��5      $	��150��6z   ��6/   �� *	NameExp+ �� SelectedItem 6O   �� *Expenses.NameExp1+��5      �� 5      .R�5      �� $ 
Horizontal=�6)   .+�5   "   �� ��6(   �� *NameExpenses+�� 5   "   ��6(   �� *Categories.Name+5      5      5      �� 5      -   5        $��AddName��5      $#��Добавить расход��6(     	AllButton#��[ 6X   $��10,0,0,0q�6{   $
��auto��6�   5      �� 5      $ 
Horizontal=�6   $��0,10,0,0q�62   .+�5      �� $��Категория:��6   #��[  6-   $	��100��6O   �� 5       #��[  6N   ��6   �� *#!Expenses.NameExp1.Categories.Name+6N   5!      �� 5"      $ 
Horizontal=�6   $��0,10,0,0q�62   .+�5#      �� $��Сумма:��6   #��[  6)   $	��100��6K   �� 5$      -   5        $
��Summ��5$        LoginAndPasswordtxtb#��[ 6&   ��6T   �� *Expenses.Summ+6t   5%      �� 5&      $ 
Horizontal=�6   $��0,10,0,0q�62   .+�5'      �� $��	Дата:��6   #��[  6(   $	��100��6J   (  "System.Windows.Controls.DatePicker  5(      -   5        $��
DateExpens��5(      $��16(�6/      SelectedDate 6=   �� *Expenses.DateExps+5)      �� 5*      $��Описание:��6   #��[  6(   $	��100��6J   �� 5+      -   5        $��Description��5+       �� TextWrapping$
 Wrap=�6)   $	��442��6=   $	��105��6I   $��16(�6V   ��. ��5,   ;   �� *Expenses.Description+5-      �� 5/   
   -   5        $
��Save��5/      $��Сохранить��6   #��[ 6D   $
��auto��6g   $��1��6t   $��0q�6�   50      51      