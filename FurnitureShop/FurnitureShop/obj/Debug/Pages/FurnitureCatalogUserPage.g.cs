#pragma checksum "..\..\..\Pages\FurnitureCatalogUserPage.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "3DD1FD7CCBBC26BF54BB8E45B0022296CA206EED3BECB948B0192B9CCE385009"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using FurnitureShop.Pages;
using MaterialDesignThemes.Wpf;
using MaterialDesignThemes.Wpf.Converters;
using MaterialDesignThemes.Wpf.Transitions;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace FurnitureShop.Pages {
    
    
    /// <summary>
    /// FurnitureCatalogUserPage
    /// </summary>
    public partial class FurnitureCatalogUserPage : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 22 "..\..\..\Pages\FurnitureCatalogUserPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox SearchTb;
        
        #line default
        #line hidden
        
        
        #line 24 "..\..\..\Pages\FurnitureCatalogUserPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox SortCb;
        
        #line default
        #line hidden
        
        
        #line 29 "..\..\..\Pages\FurnitureCatalogUserPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox FiltCb;
        
        #line default
        #line hidden
        
        
        #line 31 "..\..\..\Pages\FurnitureCatalogUserPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListBox FurnitureLb;
        
        #line default
        #line hidden
        
        
        #line 64 "..\..\..\Pages\FurnitureCatalogUserPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox PageCount;
        
        #line default
        #line hidden
        
        
        #line 65 "..\..\..\Pages\FurnitureCatalogUserPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button prevPage;
        
        #line default
        #line hidden
        
        
        #line 66 "..\..\..\Pages\FurnitureCatalogUserPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button firstPage;
        
        #line default
        #line hidden
        
        
        #line 67 "..\..\..\Pages\FurnitureCatalogUserPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button secondPage;
        
        #line default
        #line hidden
        
        
        #line 68 "..\..\..\Pages\FurnitureCatalogUserPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button nextPage;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/FurnitureShop;component/pages/furniturecataloguserpage.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Pages\FurnitureCatalogUserPage.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 13 "..\..\..\Pages\FurnitureCatalogUserPage.xaml"
            ((FurnitureShop.Pages.FurnitureCatalogUserPage)(target)).IsVisibleChanged += new System.Windows.DependencyPropertyChangedEventHandler(this.Page_IsVisibleChanged);
            
            #line default
            #line hidden
            return;
            case 2:
            this.SearchTb = ((System.Windows.Controls.TextBox)(target));
            
            #line 22 "..\..\..\Pages\FurnitureCatalogUserPage.xaml"
            this.SearchTb.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.SearchTb_TextChanged);
            
            #line default
            #line hidden
            return;
            case 3:
            this.SortCb = ((System.Windows.Controls.ComboBox)(target));
            
            #line 24 "..\..\..\Pages\FurnitureCatalogUserPage.xaml"
            this.SortCb.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.SortCb_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 4:
            this.FiltCb = ((System.Windows.Controls.ComboBox)(target));
            
            #line 29 "..\..\..\Pages\FurnitureCatalogUserPage.xaml"
            this.FiltCb.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.FiltCb_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 5:
            this.FurnitureLb = ((System.Windows.Controls.ListBox)(target));
            return;
            case 6:
            this.PageCount = ((System.Windows.Controls.TextBox)(target));
            
            #line 64 "..\..\..\Pages\FurnitureCatalogUserPage.xaml"
            this.PageCount.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.PageCount_TextChanged);
            
            #line default
            #line hidden
            return;
            case 7:
            this.prevPage = ((System.Windows.Controls.Button)(target));
            
            #line 65 "..\..\..\Pages\FurnitureCatalogUserPage.xaml"
            this.prevPage.Click += new System.Windows.RoutedEventHandler(this.prevPage_Click);
            
            #line default
            #line hidden
            return;
            case 8:
            this.firstPage = ((System.Windows.Controls.Button)(target));
            
            #line 66 "..\..\..\Pages\FurnitureCatalogUserPage.xaml"
            this.firstPage.Click += new System.Windows.RoutedEventHandler(this.firstPage_Click);
            
            #line default
            #line hidden
            return;
            case 9:
            this.secondPage = ((System.Windows.Controls.Button)(target));
            
            #line 67 "..\..\..\Pages\FurnitureCatalogUserPage.xaml"
            this.secondPage.Click += new System.Windows.RoutedEventHandler(this.secondPage_Click);
            
            #line default
            #line hidden
            return;
            case 10:
            this.nextPage = ((System.Windows.Controls.Button)(target));
            
            #line 68 "..\..\..\Pages\FurnitureCatalogUserPage.xaml"
            this.nextPage.Click += new System.Windows.RoutedEventHandler(this.nextPage_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

