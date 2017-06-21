using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;
using Microsoft.Phone.Controls;
using Microsoft.Phone.Shell;
using Tesis.Resources;
using Microsoft.Devices;
using System.Windows.Threading;
using ZXing;
using ZXing.QrCode;
using ZXing.Common;
using System.Windows;
using System.IO;

namespace Tesis
{
    public partial class Escaner : PhoneApplicationPage
    {
        private PhotoCamera photoCamera;
        private readonly DispatcherTimer dispatcherTimer = new DispatcherTimer();
        private QRCodeReader codeReader;
        private HyperlinkButton Link = new HyperlinkButton();
        

        public Escaner()
        {
            InitializeComponent();
            
        }

        protected override void OnNavigatedTo(NavigationEventArgs e)
        {
            photoCamera = new PhotoCamera(CameraType.Primary);
            photoCamera.Initialized += (s, a) =>
            {
                codeReader = new QRCodeReader();
                Dispatcher.BeginInvoke(() => { compositeTransform.Rotation = photoCamera.Orientation; });
            };

            videoBrush.SetSource(photoCamera);

            dispatcherTimer.Interval = TimeSpan.FromMilliseconds(250);
            dispatcherTimer.Tick += (o, arg) => ScanPreviewBuffer();
            dispatcherTimer.Start();

            base.OnNavigatedTo(e);
        }

        protected override void OnNavigatedFrom(NavigationEventArgs e)
        {
            dispatcherTimer.Stop();

            base.OnNavigatedFrom(e);
        }

        private void ScanPreviewBuffer()
        {
            try
            {
                int width = Convert.ToInt32(photoCamera.PreviewResolution.Width);
                int height = Convert.ToInt32(photoCamera.PreviewResolution.Height);
                PhotoCameraLuminanceSource _luminance = new PhotoCameraLuminanceSource(width, height);
                photoCamera.GetPreviewBufferY(_luminance.PreviewBuferY);
                var binBitmap = new BinaryBitmap(new HybridBinarizer(_luminance));

                var result = codeReader.decode(binBitmap);

                if (result != null)
                {
                    MessageBox.Show("Codigo Atrapado");
                    Link.Content = "Abrir Link";
                    Link.NavigateUri = new Uri(""+result, UriKind.Absolute);
                    Link.TargetName = "_blank";
                    ContentPanel2.Children.Add(Link);

                    
                    //Link.Click += new RoutedEventHandler(URLink_Click);
                }
                

            }
            
            catch { }
        }
        
    }
}