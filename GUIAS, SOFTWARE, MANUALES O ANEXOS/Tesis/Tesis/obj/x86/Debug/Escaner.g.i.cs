﻿#pragma checksum "C:\Users\Leonardo Castro\Documents\Visual Studio 2012\Projects\Tesis\Tesis\Escaner.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "548306EF29F3D32BCBEDA13670BDEBB8"
//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.34209
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

using Microsoft.Phone.Controls;
using System;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Automation.Peers;
using System.Windows.Automation.Provider;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Interop;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Resources;
using System.Windows.Shapes;
using System.Windows.Threading;


namespace Tesis {
    
    
    public partial class Escaner : Microsoft.Phone.Controls.PhoneApplicationPage {
        
        internal System.Windows.Controls.Grid LayoutRoot;
        
        internal System.Windows.Controls.Grid ContentPanel;
        
        internal System.Windows.Media.VideoBrush videoBrush;
        
        internal System.Windows.Media.CompositeTransform compositeTransform;
        
        internal System.Windows.Controls.ListBox _matchetList;
        
        internal System.Windows.Controls.Grid ContentPanel2;
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Windows.Application.LoadComponent(this, new System.Uri("/Tesis;component/Escaner.xaml", System.UriKind.Relative));
            this.LayoutRoot = ((System.Windows.Controls.Grid)(this.FindName("LayoutRoot")));
            this.ContentPanel = ((System.Windows.Controls.Grid)(this.FindName("ContentPanel")));
            this.videoBrush = ((System.Windows.Media.VideoBrush)(this.FindName("videoBrush")));
            this.compositeTransform = ((System.Windows.Media.CompositeTransform)(this.FindName("compositeTransform")));
            this._matchetList = ((System.Windows.Controls.ListBox)(this.FindName("_matchetList")));
            this.ContentPanel2 = ((System.Windows.Controls.Grid)(this.FindName("ContentPanel2")));
        }
    }
}

