   M S B A M L   `   `   `  ????H  DFurnitureShop, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:FurnitureShop.PagesFurnitureShop.Pages  5      +    %FurnitureShop.Pages.FurnitureListPage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3local!clr-namespace:FurnitureShop.Pages     5      _ [MaterialDesignThemes.Wpf, Version=4.6.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	         MaterialDesignBody#???   5
        MaterialDesignPaper  N? 
Background#  ?  5   	    N? Title$ FurnitureListPage??5       N? 
FontFamily 5   	   :  4MaterialDesignThemes.Wpf.MaterialDesignFontExtension  .??5      ? ???	#ffdadada ? RowDefinitions 5   
   ?? 5      ?? 5      $??50 ?6   .+?5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ DataFurniture??5   6   $??Center=?6M     MaterialDesignDataGrid#??[ 6j      AutoGenerateColumns .  ??6   ?? *
Furnitures+   Columns 5      4  .System.Windows.Controls.DataGridTemplateColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Фото??6)      CellTemplate 5      ?? 5      .R?5      ?? $	??100??6@   $	??100??6M   $
??Fill=?6Y   ??6$   ?? *
GetPhoto+6Y   5      5        5      $ Наименование??6)    5      ?? 5      .R?5       ?? $
??Wrap=?6>   ??6(   ?? *Name+6>   5!      5#        5$      $ Тип мебели??6)    5%      ?? 5&      .R?5'      ?? $
??Wrap=?6(   ??6<   ?? *FurnitureType.Name+5(      5*        5+      $ Цена??6)    5,      ?? 5-      .R?5.      ?? $
??Wrap=?6(   ??6<   ?? *Price+5/      51        52      $ Цвет??6)    53      ?? 54      .R?55      ?? $
??Wrap=?6D   ??6(   ?? *
Color.Name+6D   56      58        59      $" Цена со скидкой??6)    5:      ?? 5;      .R?5<      ?? $
??Wrap=?6(   ??6<   ?? *
GetPrice+5=      5?        5@      $ Наличие??6)    5A      ?? 5B      .R?5C      ?? $
??Wrap=?6D   ??6(   ?? *
GetAvaible+6D   5D      5F        5G      $  Редактировать??6)    5H      ?? 5I      .R?5J      ?? 	 ??Name$	 EditBtn??6%   -   5        $	??***??5J   6   6D   5K      5M      5O      ?? 5P   
   -   5        $	 AddFurnitureBtn??5P      $#??Добавить мебель??6*   $??1??6D   $
??Left=?6Q   $??Center=?6l   $
??10 0q?6?   6?   ?? 5Q   
   -   5        $	 	DeleteBtn??5Q      $??Удалить??6$   $??1??66   $??Right=?6C   $??Center=?6_   $
??10 0q?6z   6?   5R      5S      