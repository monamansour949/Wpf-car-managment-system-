   M S B A M L   `   `   `  ����P  LWpfCarManagmentSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:WpfCarManagmentSystemWpfCarManagmentSystem  5   	   *    $WpfCarManagmentSystem.CategoryWindow   5   	   W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:WpfCarManagmentSystem     5   	     � Title$  CategoryWindow��5   	   $	��450��6    $	��800��6-    � AllowsTransparency$
 True��5	   	   
������  � WindowStyle$
 None=�5
   	    � 
ResizeMode$ NoResize=�6    � WindowStartupLocation$ CenterScreen=�63   .��5      � .+�5   
   �  � RowDefinitions 5      �� 5      5      .+�5      �� -   5         �� CornerRadius$ 10��5      $��2��6'   ��5      �� 5      .��5      �  � Color$ #204da5��6'    � Offset$	 0.0Q�67   � 5      $ #6cc4d5��6'   $ 1Q�67   5      5      � 5      -   5        	 �Name$	 panelHeader��5      $	��Top=�6(   $��50��6@   .+�5      �� $�� ��6   $��Center=�6$   $��Center=�6A   $��Century Gothic)�6\   $��20(�6x   $
��Bold"�6�   
�������6�   �� 5      -   5        $��Right=�5      $��30��65   $	��Top=�6A   
������ 
������ .��5      �� $��images/cancel_80px.png��6   5       �� 5"      -   5        $
��Left=�5"      $��30��64   $	��Top=�6@   
������ 
������ .��5#      �� $��images/back_to_240px.png��6   5%      5&      �� 5'      $
��Left=�6   $��150 10 350 350q�6/   $��Center=�5(      $��Century Gothic)�63   $��20(�5)      $
��Bold"�6&   
�������.��6L   Name5+      � 5-      ���	#FF173864$��3��6*   $	��340��65   $��100 50 50 350q�6A   6Z   �� 5.      -   5        
 ��Name$
 category_textBox��5.      $��40��5/      $	��340��6"   $��100 10 50 350q�50      $��20(�51      $��	helvetica)�52      $��Light"�53      $��Category��54      $��20(�55      $��Center=�56      
�������
������ $��0q�59      $��5q�5:      $
��Left=�5<       J� Opacity$
 0.47Q�5=      .��6)   5?      &   System.Windows.Controls.DataGrid  5A      -   5          Name$ categoryListVIEW��5A      $	��200��61   $	��340��6>   $��100 50 50 50q�6J   $��	helvetica)�5B      $��20(�5C      
����  �5D      �� 5I      -   5        $	��100��5I      $��40��6!   $	��Add��6-   $��550,0,-50,250q�6;   6R   �� 5J      -   5        $	��100��5J      $��40��6!   $
��Edit��6-   $��550,0,-50,100q�6<   6S   �� 5L      -	   5        $	��100��5L      $��40��6!   $��Remove��6-   $��550,0,-50,-50q�6>   6U   5M      5O      5P      