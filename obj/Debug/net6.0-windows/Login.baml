   M S B A M L   `   `   `  ����P  LWpfCarManagmentSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:WpfCarManagmentSystemWpfCarManagmentSystem  5   	   !    WpfCarManagmentSystem.Login   5   	   W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:WpfCarManagmentSystem     5   	   -   5          � Title$  Login��5   	   $	��450��6   $	��380��6$    � AllowsTransparency$
 True��5	   	   
������  � WindowStyle$
 None=�5
   	    � 
ResizeMode$ NoResize=�6    � WindowStartupLocation$ CenterScreen=�5   	   .��5      � .+�5   
   �  � RowDefinitions 5      �� 5      $
��26.5 �6    �� 5      $	��200 �6    �� 5      .+�5      ��  �� CornerRadius$ 10��6   $��3��6'   ��5      �� 5      .��5      �  � Color$ #204da5��6'    � Offset$	 0.0Q�67   � 5      $ #6cc4d5��6'   $ 1Q�67   5      5      �� 5       $��0��6   	 �� Orientation$	 
Horizontal=�6&   $��Right=�6?   $	��Top=�6[   .+�5!      �� -   5        $��-��5!      $��15��6%   $��15��60   $��Center=�5"      $��Center=�5#      $��	0,11,10,0q�5$      5%      �� 5&      -   5        $��X��5&      $��15��6%   $��15��60   $��6(�5'      $��Center=�5(      $��Center=�5)      $��	0,11,11,0q�5*      5+      5,      �� 5.      $��1��6   $��Center=�6&   .+�5/      �� $��images/carCategory.png��6   $	��200��68   $	��150��6D   $	��Top=�50      $��Center=�51      52      �� 54      $��2��6   .+�56      �� $	 
Horizontal=�6   .+�57      �� -   5        
 ��Name$
 UName��57      $��	helvetica)�58      $��Light"�59      $��	User Name��5:      $��20(�5;      $��Center=�5<      
�������
������ $��0q�5?      $��5q�5@      $��63,0,0,0q�5A      $	��235��5B      $
��Left=�5C       J� Opacity$
 0.47Q�5D      5E      �� 5F      $	��250��6   $	��1.5��5G      
�������$	 0.5Q�5I      �� 5L      $	 
Horizontal=�6   $��0,15,0,0q�67   .+�5M      G� -   5         G�Name$ password��5M   "   $��	helvetica)�5N      $��Light"�5O       G� Password$ Password��5P      $��20(�5Q      $��Center=�5R      
�������
������ $��0q�5U      $��5q�5V      $��63,0,0,0q�5W      $	��235��5X      $
��Left=�5Y      $
 0.47Q�5Z      5[      �� 5\      $	��250��6   $	��1.5��5]      
�������$	 0.5Q�5_      �� 5b      $	 
Horizontal=�6   $
��0,35q�66   .+�5c      �� -   5        $	��100��5c      $��40��6)   $��LOG IN��65   $��
150,0,60,0q�6F   6Z   5d      5f      5h      5i      5j      