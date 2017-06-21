using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ZXing;

namespace Tesis
{
    public class PhotoCameraLuminanceSource: LuminanceSource
    {
        public byte[] PreviewBuferY { get; private set; }

        public PhotoCameraLuminanceSource(int Width, int Heigh): base(Width, Heigh)
        {
            PreviewBuferY = new byte[Width * Heigh];
        }        

        public override byte[]  Matrix
        {
            get { return (byte[])(Array)PreviewBuferY; }
        }

        public override byte[] getRow(int y, byte[] row)
        {
            if (row == null || row.Length < Width)
            {
                row = new byte[Width];
            }

            for (int i = 0; i < Height; i++)
            {
                row[i] = (byte)PreviewBuferY[i * Width + y];
            }
            return row;
        }
    }
}
