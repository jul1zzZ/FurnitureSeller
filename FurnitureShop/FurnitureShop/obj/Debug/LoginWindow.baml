   M S B A M L   `   `   `  ????H  DFurnitureShop, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:FurnitureShopFurnitureShop  5   	       FurnitureShop.LoginWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.6.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   
   'localclr-namespace:FurnitureShop  5   	     ? Title$  Authorization??5	   	   $	??450??6   $	??900??6,    ? WindowStartupLocation$ CenterScreen=?68    ? 
ResizeMode$ NoResize=?6]   .??5
      ? ???	#ffdadada ? RowDefinitions 5   
   ?? 5      $??30 ?6   ?? 5      .+?5   
   ?? $	??400??6   $??15q?6    ???#fff$??1??6>   $??Center=?6K    ?? Padding$ 30q?6f   $	??550??6s    ?? CornerRadius$ 20??6?    J? Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 60Q?6#      Color$ 	LightGray??63   	   ShadowDepth$	 0Q?6E   ._?5      ?? .+?5      ?? $??Авторизация??6   $??30(?6/   $
??Bold"?6=   $??0 0 0 20q?6O   ?? 5      -   5        
 ??Name$
 LoginTb??5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Введите логин??6B    %  !MaterialDesignFloatingHintTextBox#??[  6q   ??6+   ?? *Login+6q   ?? 5      -   5        $
 PassTb??5      $! Введите пароль??6D   #??[  6t   ??6*   ?? *
Password+6t   ? 5      .+?5      ?? -   5         ??Name$ LoginBtn??5      $??
Войти??6B   $??Center=?6R   $
??0 20q?6o   $	??200??6}   5      5      5      5      5      