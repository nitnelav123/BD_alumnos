/*
 * Created by SharpDevelop.
 * User: Lab-01
 * Date: 14/08/2023
 * Time: 19:38
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;

namespace sender
{
	/// <summary>
	/// Description of MainForm.
	/// </summary>
	public partial class MainForm : Form
	{
		public string[] vector;
		public MainForm()
		{
			//
			// The InitializeComponent() call is required for Windows Forms designer support.
			//
			InitializeComponent();
			
			//
			// TODO: Add constructor code after the InitializeComponent() call.
			// 
			
		
		}
		
		public void CargarVectores(){
			 vector=new string[5];
             vector[0]= @"E:\TP de 7to\messi\messi2009.JPG";
             vector[1]= @"E:\TP de 7to\messi\messi2011.JPG";
             vector[2]= @"E:\TP de 7to\messi\messi2015.JPG";
             vector[3]= @"E:\TP de 7to\messi\messi2019.JPG";
             vector[4]= @"E:\TP de 7to\messi\messi2021.JPG";
             pic_imagen1.Image=Image.FromFile(vector[0]);
             pic_imagen2.Image=Image.FromFile(vector[1]);
             pic_imagen3.Image=Image.FromFile(vector[2]);
             pic_imagen4.Image=Image.FromFile(vector[3]);
             pic_imagen5.Image=Image.FromFile(vector[4]);
			}
		

		
		void MainFormLoad(object sender, EventArgs e)
		{
			CargarVectores();
		}
		
		void Pic_imagen1_Click(object sender, EventArgs e)
		{
			PictureBox pic_AUX;
			pic_AUX=(PictureBox) sender ;
			pic_central.Image=pic_AUX.Image;
		}
		
		
		void Pic_imagen2_Click(object sender, EventArgs e)
		{
			PictureBox pic_AUX;
			pic_AUX=(PictureBox) sender ;
			pic_central.Image=pic_AUX.Image;
		}
		
		void Pic_imagen3_Click(object sender, EventArgs e)
		{
			PictureBox pic_AUX;
			pic_AUX=(PictureBox) sender ;
			pic_central.Image=pic_AUX.Image;
		}
		
		void Pic_imagen4_Click(object sender, EventArgs e)
		{
			PictureBox pic_AUX;
			pic_AUX=(PictureBox) sender ;
			pic_central.Image=pic_AUX.Image;
		}
		
		void Pic_imagen5_Click(object sender, EventArgs e)
		{
			PictureBox pic_AUX;
			pic_AUX=(PictureBox) sender ;
			pic_central.Image=pic_AUX.Image;
		}
	}
}
