   M S B A M L   `   `   `  ����P  LWpfCarManagmentSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:WpfCarManagmentSystemWpfCarManagmentSystem  5   	   *    $WpfCarManagmentSystem.AdditionWindow   5   	   W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:WpfCarManagmentSystem     5   	     � Title$  Add Product��5   	   $	��600��6   $	��500��6*    � AllowsTransparency$
 True��67   ���#204da5 � WindowStyle$
 None=�5	   	    � 
ResizeMode$ NoResize=�6    � WindowStartupLocation$ CenterScreen=�5
   	   .��5      � .+�5   
   �  � RowDefinitions 5   
   �� 5      $��1* �6   6*   �� 5      $��1* �6   6*   �� 5      $��1* �6   6*   �� 5      $��1* �6   6*   �� 5      $��1* �6   6*   �� 5      $
��0.8* �6   6,    � ColumnDefinitions 5   
   �� 5      6!   �� 5      6!   .+�5    
   �� $��0��6   $��0��6   $��Name : ��6-   $��Comic Sans MS)�6?   $��26(�6Z   $��	14,30,0,0q�6h   6}   �� 5!   
   -   5        $��
NameTxtbox��5!      $��2q�6$   
����  �$��0��6K   $��1��6X   $��10,25,10,25q�6h   $��Comic Sans MS)�6}   $��14(�6�    �� TextWrapping$
 Wrap=�6�   " �� VerticalScrollBarVisibility$
 Auto=�6�   6�   �� 5$   
   $��1��6   $��0��6   $��Price : ��6-   $��Comic Sans MS)�6@   $��26(�6[   $��	14,30,0,0q�6i   6~   �� 5%   
   -   5        $��PriceTxtBox��5%      $��2q�6%   
����  �$��1��6L   $��1��6Y   $��10,25,10,25q�6i   $��Comic Sans MS)�6~   $��14(�6�   $
 Wrap=�6�   $
 Auto=�6�   6�   �� 5(   
   $��2��6   $��0��6   $��Image Path : ��6-   $��Comic Sans MS)�6E   $��26(�6`   $��	14,30,0,0q�6n   6�   � 5)   
   $��2��6   $��1��6    5*      �� 5+      $
��2.6* �6#   62   �� 5,      6%   .+�5/      �� -   5        $��ImagePathTxtbox��5/      $��2q�6.   
����  �$��0��6U   $��
5,25,-5,25q�6e   $��Comic Sans MS)�6y   $��10(�6�   $
 Wrap=�6�   $
 Auto=�6�   6�   �� 50      -   5        $��
OpenButton��50      $��1��6'   $��40��67   $��40��6B   $��14(�6N   
���   �$��0q�6p   $
��Open��6�   6�   51      �� 53   
   -   5        $��	AddButton��53      $��3��6"   $	��150��6/   $��60��6;   $	��Add��6G   54      �� 55   
   -   5        $��CancelButton��55      $��1��6&   $��3��66   $	��150��6C   $��60��6O   $��Cancel��6[   56      59      5;      5=      