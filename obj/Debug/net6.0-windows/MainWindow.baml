   M S B A M L   `   `   `  ����P  LWpfCarManagmentSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:WpfCarManagmentSystemWpfCarManagmentSystem  5   	   &     WpfCarManagmentSystem.MainWindow   5   	   W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:WpfCarManagmentSystem     5   	   -   5          � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)    � AllowsTransparency$
 True��5	   	   
������  � WindowStyle$
 None=�5
   	    � 
ResizeMode$ NoResize=�6    � WindowStartupLocation$ CenterScreen=�6P   .��5      � .+�5   
   �  � RowDefinitions 5      �� 5      5      .+�5      ��  �� CornerRadius$ 10��6   $��2��6'   ��5      �� 5      .��5      �  � Color$ #204da5��6'    � Offset$	 0.0Q�67   � 5      $ #6cc4d5��6'   $ 1Q�67   5      5      � 5      -   5        	 �Name$	 panelHeader��5      $	��Top=�6(   $��50��6@   .+�5      �� $�� ��6   $��Center=�6$   $��Center=�6A   $��Century Gothic)�6\   $��20(�6x   $
��Bold"�6�   
�������6�   �� 5      -   5        $��Right=�5      $��30��65   $	��Top=�6A   
������ 
������ .��5      �� $��images/cancel_80px.png��6   5      �� 5       -   5        $��Right=�5       $��0 0 30 0q�65   $��30��6G   $	��Top=�6S   
������ 
������ .��5!      �� $%��images/maximize_window_80px.png��6   5"      �� 5$      -   5        $��Right=�5$      $��0 0 60 0q�65   $��30��6G   $	��Top=�6S   
������ 
������ .��5%      �� $%��images/minimize_window_80px.png��6   5'      5(      � 5)      -   5        $	 	sidePanel��5)      $
��Left=�6'   $	��150��6B   ���#204da5.+�5*      �� .+�5+      � $	��150��6   ���#204da5.+�5,      �� -   5        $��Right=�5,   !   $��30��6=   $	��Top=�6I   
������ 
������ .��5-      �� $��images/menu_80px.png��6$   5.      5/      �� 50      $��Disabled=�6   $��Century Gothic)�6U   $��14(�6q   
�������
������ 
������ $
��Bold"�6�   .@�51      �� -   5        $��30��51   '   .��52      �� 
 �� Orientation$
 
Horizontal=�6)   .+�53   "   �� $'��!images/iconmonstr-cube-18-240.png��6(   $��20��6S   $��Center=�6_   �� 54   "   $��15 0 0 0q�6,   $��Category��6>   $��Center=�6N   55      56      �� 57      -	   5        $��30��57   '   .��58      �� $
 
Horizontal=�6)   .+�59   "   �� $��images/carCategory.png��6(   $��20��6H   $��Center=�6T   �� 5:   "   $��15 0 0 0q�6,   $��Car Product��6>   $��Center=�6Q   5;      5<      �� 5=      -
   5        $��30��5=   '   .��5>      �� $
 
Horizontal=�6)   .+�5?   "   �� $*��$images/iconmonstr-customer-1-240.png��6(   $��20��6V   $��Center=�6b   �� 5@   "   $��15 0 0 0q�6,   $��	 Customer��6>   $��Center=�6O   5A      5B      �� 5D      -   5        $��30��5D   '   .��5E      �� $
 
Horizontal=�6)   .+�5F   "   �� $*��$images/iconmonstr-log-out-10-240.png��6(   $��20��6V   $��Center=�6b   �� 5G   "   $��15 0 0 0q�6,   $��Log Out��6>   $��Center=�6M   5H      5I      5J      5K      5L       � 5W      -   5          �Name$ 	MainStack��5W      
������ $	��380��6@   $	��600��6M   $��
0 0 -150 0q�6Y    J� RenderTransformOrigin$ 
0.62,1.193&�6m   5Y      5Z      5[      5\      