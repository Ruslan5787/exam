   M S B A M L   `   `   `  ����J  FMaster_Paul_App, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Master_Paul_AppMaster_Paul_App  5   	        Master_Paul_App.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:Master_Paul_App     5   	     � Title$  Мастер пол��5   	   $	��450��5	   	   $	��800��5
   	   $��Segoe UI)�5   	   $��16(�5   	    � WindowStartupLocation$ CenterScreen=�5   	   .��5      ]� $��	20 0 20 0q�6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��Center=�6.   $��	0 10 0 20q�6I   $	��Top=�6\   .+�5      �� $��0 0 30 0q�6   $
��Left=�6&   $��70��6A   $o��iD:\programming\CS projects\partners-master\partners-master\Master_Paul_App\Images\Мастер пол.png��6L   �� 5      $��Center=�6   $%��Список партнеров��63   $��20(�6K   �� 5      -   5        $��Center=�5   )   $
��15 5q�6D   
������ ���#67BA80$��
290 0 10 0q�6�   .��6�   #!Добавить партнера6�   5      �� 5      $
��auto��6   $��0 0 0 20q�6)   .��5      �� 
�������$��1q�60   
������ ._�5      �� -   5         ��Name$ itemsControl��5   #    � DataContext 69   �� ��5      �� 5      .R�5   "   � $��20 12q�6'    � ColumnDefinitions 5   &   �� 5   *   $��* �6;   .+�5    "   �� -   5        
���   � �� Padding$ 20 13q�5    =   $��1q�6M   ���#F4E8D3._�5!   &   �� .+�5"   .   ]� .+�5#   2   �� $
��Left=�6=   $ 
Horizontal=�6S   .+�5$   2   �� $��20(�6<   ��6J   �� *PartnerData.PartnerType+�� 5%   6   $��20(�6@   $	�� | ��6N   �� 5&   2   $��20(�6<   ��6J   �� *PartnerData.PartnerName+5'   3   �� 5)   .   $ 
Horizontal=�69   $��Right=�6R   $��Right=�6i   .+�5*   2   �� ��6<   �� *DiscountPercentage+�� 5+   2   $��%��6<   5,   /   5-   +   �� 5/   *   ��64   �� *PartnerData.Director+�� 50   .   $ 
Horizontal=�69   .+�51   2   �� $	��+7 ��6<   �� 52   .   ��68   �� * PartnerData.PartnerPhoneNumber+53   /   �� 55   .   $ 
Horizontal=�69   .+�56   2   �� $��Рейтинг: ��6<   �� 57   2   ��6<   �� *PartnerData.Rating+58   /   59   +   5:   '   5;   #   5<      5>      5?      5@      5A      5B      