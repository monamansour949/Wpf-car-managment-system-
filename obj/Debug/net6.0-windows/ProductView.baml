   M S B A M L   `   `   `  ����P  LWpfCarManagmentSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:WpfCarManagmentSystemWpfCarManagmentSystem  5   	   '    !WpfCarManagmentSystem.ProductView   5   	   W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:WpfCarManagmentSystem     5   	     � Title$  ProductView��5   	   $	��620��6   $
��1200��6*    � WindowStyle$
 None=�67    � 
ResizeMode$ NoResize=�6J    � WindowStartupLocation$ CenterScreen=�6`   .��5	      � .+�5
   
   ��  �� CornerRadius$ 10��6   $��2��6#   ��5      �� 5      .��5      �  � Color$ #204da5��6#    � Offset$	 0.0Q�63   � 5      $ #6cc4d5��6#   $ 1Q�63   5      5      �� 5   
   -   5        $��	BuyButton��5      $��0��6"   $	��140��62   $��85��6>   $	��Buy��6J   $��Comic Sans MS)�6X   $��28(�6s   $��
2,-480,0,5q�6�   ���#204da5
����  �$��2q�6�    � ToolTip$	 Buy��6�   $y�Hidden=�6�   5      � 5   
   -   5         �Name$ panelHeader��5      $	��Top=�6$   $��50��6<   .+�5      �� $�� ��6   $��Center=�6    $��Center=�6=   $��Century Gothic)�6X   $��20(�6t   $
��Bold"�6�   
�������6�   �� 5      -   5        $��Right=�5      $��30��61   $	��Top=�6=   
������ 
������ .��5      �� $��images/cancel_80px.png��6   5      �� 5      -   5        $��Right=�5      $��0 0 30 0q�61   $��30��6C   $	��Top=�6O   
������ 
������ .��5      �� $%��images/maximize_window_80px.png��6   5      �� 5!      -   5        $��Right=�5!      $��0 0 60 0q�61   $��30��6C   $	��Top=�6O   
������ 
������ .��5"      �� $%��images/minimize_window_80px.png��6   5$      �� 5&      -   5        $
��Left=�5&      $��30��60   $	��Top=�6<   
������ 
������ .��5'      �� $��images/back_to_240px.png��6   5)      5*      � 5+   
   $��1��6   $��2��6   	 � RowDefinitions	 5-      �� 5.      $
��1.1* �6    60   �� 5/      $��5* �6    6.   .+�54      �� -   5        $��mainlistbox��54   `   
���   �$��2q�6*   $��1��6>   ���#204da5$��20(�6s   $��20,20,180,5q�6�   ��55      �� 56      .R�57      �� 
 �� Orientation$
 
Horizontal=�6%   .+�58      �  � ColumnDefinitions 59   "   �� 5:   &   $��1* �67   6D   �� 5;   &   $��2* �67   6D   �� 5<   &   $��1* �67   6D   �� 5=   &   $��1* �67   6D   .+�5?   "   �� $	��128��6(   $	��128��65   $��0��6A   $��10q�6�   ��6Q   �� *	ImagePath+ �� UpdateSourceTrigger$ PropertyChanged=�6�   �� 5A   "   $��1��6-   $
 Vertical=�6=   .+�5B   &   ��  �� TextAlignment$ Center=�60   $��Name : ��6G   $��	50,40,0,5q�6V   6k   �� 5C   &   $ Center=�60   $��Price : ��6G   $��	50,40,0,5q�6W   6l   5F   #   �� 5H   "   $��2��6-   $
 Vertical=�6=   .+�5I   &   �� $ Center=�60   $��	50,40,0,0q�6�   ��6G   �� *Name+$ PropertyChanged=�6�   �� 5J   &   $ Center=�60   $��	50,46,0,0q�6�   ��6G   �� *Price+$ PropertyChanged=�6�   �� 5K   &   62   �� 5L   &   62   5M   #   5N      5O      5Q      5S      5T      �� 5[   
   $��900,130,-140,0q�6   .+�5]      �� -   5         ��Name$ AddImage��5]      $��50��6&   $��85��61   $ Add Product��6=    � Cursor$
 Hand��6S   ��5^      �� 5_       �� 
TargetType" ��6   .�5`      ��  �� Property � �� �� Value$ images/addbos.jpg��63    �� Triggers 5a      P� 5b       P� Property �@J�IsMouseOver P� Value$
 True��6=   . �5c   "   ��  � ��$ images/adddolu.jpg��6;   5d      5f      5h      �� 5j      -	   5        $ 	EditImage��5j      $��50��6'   $��85��62   $��Uniform=�6>   $��Center=�6P   $��10,35,10,30q�6k   $ Edit Product��6�   $
 Hand��6�   ��5k      �� 5l      " ��6   .�5m      ��  � ��$ images/editbos.png��63    5n      P� 5o       �@J�IsMouseOver$
 True��6=   . �5p   "   ��  � ��$ images/editdolu.jpeg��6;   5q      5s      5u      �� 5w      -
   5        $ RemoveImage��5w      $��50��6)   $��85��64   $	��Top=�6@   $��10,35,10,30q�6X   $ Remove Product��6m   $
 Hand��6�   ��5x      �� 5y      " ��6   .�5z      ��  � ��$ images/removebos.png��63    5{      P� 5|       �@J�IsMouseOver$
 True��6=   . �5}   "   ��  � ��$ images/removedolu.png��6;   5~      5�      5�      5�      5�      5�      